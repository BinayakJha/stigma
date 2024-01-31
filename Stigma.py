
import time
import os
import subprocess
import shutil
import glob
import tempfile
import re
import importlib
import xml
import argparse

# only used for writeMarkedLocationClass,
# that function (and this import) should be moved into the plugin that needs it
import distutils 

import SmaliClassDef
import Instrumenter
import TaintStorageHandler
import SmaliTypes
import Instrumenter
import StigmaStringParsingLib
import UI





# global since it's used in multiple functions, and is even imported by other modules
# it is set in the main() function
# TO DO: make it not global
temp_file = None 


def aapt2_helper():
    for root, dirs, files in os.walk(temp_file.name):
        if "app-metadata.properties" in files:
            fh = open(os.path.join(root, "app-metadata.properties"), "r")
            lines = fh.readlines()
            target = lines[1].split("=")
            gradle_version = int(target[1][0])
            if gradle_version >= 3:
                return True
    return False 


def dumpApk(apk_path):
    # dump apk files
    start_time = time.time()
    # -f is necessary since temp_file already exists (apktool doesn't like that) 
    # -f means "force"
    cmd = ["java", "-jar", "include/apktool.jar", "d", apk_path, "-o", temp_file.name, "-f"]
    if (os.name == "nt"):
        completed_process = subprocess.run(cmd, shell=True)
    elif (os.name == "posix"):
        completed_process = subprocess.run(cmd)
    completed_process.check_returncode()
    print("Apk unpacked in %.1f seconds" % (time.time() - start_time))
    


def importPlugin(plugin_name):
    # https://mathieularose.com/plugin-architecture-in-python
    # https://docs.python.org/3/library/importlib.html

    #p = os.path.dirname(os.path.realpath(__file__))
    #plugins_path = os.path.join(p,"plugins.txt")

    #f = open(plugins_path, 'r')
    #for line in f:
    #    if not line.startswith("#") and line != "\n":
    #        line = line.strip("\n")
    #        line_path = os.path.join(p,line)
    #        print("Loading Plugin: " + str(line))
    #        #importlib.invalidate_caches() # ???
    #        mod = importlib.import_module(line)
    #        mod.main()  
    #        break

    print("Loading Plugin: " + str(plugin_name))
    mod = importlib.import_module(plugin_name)
    mod.main()


def getFiles():
    # find relevant files (strong assumptions here!)
    # This first chunk basically is hard-coded to
    # select the non-framework files written in the leaks
    # test-bed app.  The non-framework files are usually thought
    # of as "the code the developer actually wrote"
    # This chunk is for debugging purposes to debug stigma itself.

    # path1 = "./apkOutput/smali_classes2"
    # dirs = listdir(path1)

    # dirsExtracted = [s for s in dirs if s != "androidx" and s!= "android"]

    # path2 = path1 +"/" + dirsExtracted[0]

    # path3 = path2 +"/" + listdir(path2)[0]

    # path4 = path3 +"/" + listdir(path3)[0]

    # path5 = path4 +"/" + listdir(path4)[0]

    # smaliFiles = listdir(path5)

    # relevantFilePaths = [path5 + "/" + file for file in smaliFiles if file != "BuildConfig.smali" and file[:2] != "R$" and file != "R.smali"]
    # End of first chunk

    # beginning of second chunk
    # This gets all the files that end in ".smali" from the entire
    # application.  This assumes all of the framework files
    # as well as any files authored by the app developer.
    relevantFilePaths = glob.glob(temp_file.name + '/**/*.smali', recursive=True)
    # print(relevantFilePaths)
    # end of second chunk

    # This is just a quick sanity test.
    if (len(set(relevantFilePaths)) != len(relevantFilePaths)):
        print("There are duplicates!!")
        for item in relevantFilePaths:
            print(item)

        exit(1);
    # end of sanity test

    return relevantFilePaths


def _has_launcher_intent_filter(xml_element):
    for child in xml_element:
        if(child.tag == "intent-filter"):
            for grand_child in child:
                if(grand_child.tag == "category"):
                    if (grand_child.attrib['{http://schemas.android.com/apk/res/android}name'] == "android.intent.category.LAUNCHER"):
                        #print(grand_child)
                        return True
    return False
                    
def _parse_class_name(xml_element_name_attribute):
    class_name = "L" + xml_element_name_attribute + ";"
    class_name = class_name.replace(".", "/");
    c = SmaliTypes.from_string(class_name)
    return c


def _look_for_individual_string(s):
    loc = temp_file.name
    grep_cmd = ["grep", "-r", "-I", "-H", s, loc]
    wc_cmd = ["wc", "-l"]
    
    grep_process = subprocess.Popen(grep_cmd, stdout=subprocess.PIPE)
    wc_process = subprocess.run(wc_cmd, stdin=grep_process.stdout, capture_output=True, text=True)

    grep_process.stdout.close()

    # decode is needed if text=True is False (the default) in 
    # the above call to subprocess.run()
    #count = completed_process.stdout.decode("utf-8") 

    count = wc_process.stdout.strip()
    print("\t\'" + s + "\' appears " + count + " times")


def look_for(strings):
    if(strings == []):
        return 
    
    if(os.name == "posix"):
        print("Searching for strings: " + str(strings))
        for s in strings:
            _look_for_individual_string(s)

    else:
        print("look_for_strings_in_original_app_smali() is only available on Linux systems")
    
def get_launcher_activity_classes():
    manifest_path = os.path.join(temp_file.name, "AndroidManifest.xml")
    #print("manifest path: " + manifest_path)
    xml_tree = xml.etree.ElementTree.parse(manifest_path)
    #print("tree: ", xml_tree)
    xml_tree = xml_tree.getroot()
    

    activities = xml_tree.findall("./application/activity")
    for act in activities:
        if(_has_launcher_intent_filter(act)):
            smali_obj_ref = _parse_class_name(act.attrib['{http://schemas.android.com/apk/res/android}name'])
            Instrumenter.add_new_launcher_class(smali_obj_ref)

    activity_aliases = xml_tree.findall("./application/activity-alias")
    for act in activity_aliases:
        if(_has_launcher_intent_filter(act)):
            smali_obj_ref = _parse_class_name(act.attrib['{http://schemas.android.com/apk/res/android}targetActivity'])
            Instrumenter.add_new_launcher_class(smali_obj_ref)

    #print(root)
    print("Launchers Found: " + str(Instrumenter.get_launcher_classes()))
    


def count_non_blank_lines_of_code():
    paths = getFiles()
    num = 0
    for path in paths:
        fh = open(path, "r")
        for line in fh.readlines():
            if not line.isspace():
                num += 1
    return num      


def wrapString(string, wrapper):
    return wrapper + str(string) + wrapper


def runInstrumentation():
    print("Instrumenting class files")
    start_time = time.time()
    relevantFilePaths = getFiles()

    # getting list of all classes in this project
    class_names = []
    for path in relevantFilePaths:
        class_names.append(SmaliClassDef.SmaliClassDef.extract_class_name(path))

    counter = 1
    comparison_instruction_count = 0
    not_enough_registers_count = 0
    total_files = len(class_names)
    for path in relevantFilePaths:
        # print("cur file path: " + str(name))
        # parse file
        scd = SmaliClassDef.SmaliClassDef(path)
        scd.internal_class_names.extend(class_names)

        # analytics stuff
        comparison_instruction_count = comparison_instruction_count + scd.get_num_comparison_instructions()
        for every_method in scd.methods:
            not_enough_registers_count += every_method.not_enough_free_registers_count

        # Progress bar
        print(f'...{str(counter)}/{str(total_files)}', end='\r')
        counter += 1

        # actual instrumentation
        scd.instrument()
        scd.overwrite_to_file()

    analytics_path = os.path.join(temp_file.name, "analytics.dat")
    fh = open(analytics_path, "w")
    fh.write("Number of Comparisons: " + str(comparison_instruction_count) + "\n")
    fh.write("Number of instructions in which there were not enough registers to properly instrument: " + str(
        comparison_instruction_count))
    fh.close()

    print("Instrumentation of app finished in %.1f seconds" % (time.time() - start_time))

#Entire com/fasterxml folder
def writeMarkedLocationClass():
    print("Writing Support Classes (jackson, MarkedLocation.smali)")
    new_path = os.path.join(temp_file.name, "smali", "net", "stigma")
    os.makedirs(new_path, exist_ok=True)
    new_path = os.path.join(new_path, "MarkedLocation.smali")
    ## For Windows, "copy" is as "cp" for Unix systems.
    ## We write an if statement to check for the os, and use the correct line of code for cmd accordingly
    ## Also in the Windows statement is shell=True
    distutils.dir_util.copy_tree("smali_lib", os.path.join(temp_file.name, "smali"))
    if (os.name == "nt"):
        cmd = ["copy", "MarkedLocation.smali", new_path]
        completed_process = subprocess.run(cmd, shell=True)
    elif (os.name == "posix"):
        cmd = ["cp", "MarkedLocation.smali", new_path]
        completed_process = subprocess.run(cmd)
    completed_process.check_returncode()


def writeStorageClasses():
    storage_handler = TaintStorageHandler.TaintStorageHandler.get_instance()
    # print(storage_handler)
    print("Creating Taint Storage Locations")
    path = os.path.join(temp_file.name, "smali", "net", "stigmastorage")
    os.makedirs(path, exist_ok=True)
    for storage_class in storage_handler.storage_classes:
        # print(path + storage_class.get_storage_class_name() + ".smali")
        full_path = os.path.join(path, storage_class.get_storage_class_name() + ".smali")
        with open(full_path, "w") as f:
            f.write(storage_class.generate_smali_class_text())


def extractPathParts(path, begin, end):
    # This crazy line does three things.
    # 1) split the given path on the "/" characters
    # "/path/to/the/file.txt" => ["path", "to", "the", file.txt"]
    #
    # 2) slice that list according to beginning and end.
    # Note: because begin and end are passed directly to the [:]
    # the same semantics hold.  begin is included, end is excluded,
    # and negative numbers can be used for "negative indexing"
    # begin = 1  and end = -1
    # ["to", "the"]
    #
    # 3) re-join the path using a "/"
    # "to/the"
    ans = "/".join(path.split("/")[begin:end])
    return ans


def splitSmali():
    print("Accounting For Constant Pool Limits")
    # There are separately enumerated and indexed constant pools for references to strings, types, fields, and methods.
    # https://source.android.com/devices/tech/dalvik/dalvik-bytecode

    # Our stigma instrumentation will add many fields and many classes
    # unfortunately, for a single smali_classesX folder there can only be
    # so many classes, so many fields in all the classes combined,
    # and so many methods in all classes combined .  We typically break
    # those limits.  So, we can resolve the issue by simply moving
    # some files to smali_classesX+1

    # basic algorithm is to place all smali files into a list
    # regardless of existing folder location (smali_classesX)
    # go through the list linearly and count the number of fields
    # in the classes, methods in the classes, and total number of
    # classes.  If any of those goes above THRESH
    # break the list at this point and designate all the files
    # until this point to be in smali_classesY (where Y increments)
    # each time the list is split up
    #
    # resultsLists = [file1, file2, file3] [file4, file5, file6, ...]
    #                                     ^
    #                                     |
    #                                split point
    # (number of fields in file1, 2, 3, and 4 combined is > THRESH)
    #

    THRESH = 32768  # probably isn't the correct threshold
    # max unsigned short: 65535
    # middle-ground: 16384 probably not relevant
    # max signed short: 32767
    # max unsigned byte: 255
    # max signed byte: 127

    smaliFiles = getFiles()

    # see the instructions that correspond to the 4 different
    # countable things: type_id, string_id, field_id,
    # http://pallergabor.uw.hu/androidblog/dalvik_opcodes.html
    # method_id does not exist in that file.  BUT, the
    totalFieldCount = 0
    totalMethodCount = 0

    # missing: strings, classes

    resultLists = []
    s = 0
    e = 0
    for idx, smaliFile in enumerate(smaliFiles):
        # print("file: " + str(smaliFile))
        print(f'...{str(idx)}/{str(len(smaliFiles))}', end='\r')

        scd = SmaliClassDef.SmaliClassDef(smaliFile)
        field_num = scd.get_num_field_declarations() + scd.get_num_field_references()
        method_num = scd.get_num_method_declarations() + scd.get_num_method_references()

        if (method_num > THRESH):
            # https://github.com/JesusFreke/smali/issues/301
            raise RuntimeError(
                "methods in " + str(smaliFile) + " is greater than threshold. " + str(method_num) + ">" + str(THRESH))

        if (field_num > THRESH):
            # https://github.com/JesusFreke/smali/issues/301
            raise RuntimeError(
                "methods in " + str(smaliFile) + " is greater than threshold. " + str(method_num) + ">" + str(THRESH))

        if ((totalFieldCount + field_num >= THRESH) or ((totalMethodCount + method_num) >= THRESH)):
            # do a break
            e = idx
            resultLists.append(smaliFiles[s:e])
            s = e

            # technical detail that's easy to miss / confuse
            # the file that broke the threshold
            # goes into the NEXT list
            totalFieldCount = field_num
            totalMethodCount = method_num


        else:
            totalFieldCount += field_num
            totalMethodCount += method_num

    print("...Re-arranging files")
    # print(str(len(resultLists)) + " groups")
    path = os.path.join(temp_file.name, "smali")
    for idx, group in enumerate(resultLists):
        if (idx > 0):
            path = os.path.join(temp_file.name, "smali_classes" + str(idx + 1))
            os.makedirs(path, exist_ok=True)

        # print("dir path: ", path)
        for smaliFile in group:
            newFolderPath = os.path.join(path, extractPathParts(smaliFile, 4, -1))
            os.makedirs(newFolderPath, exist_ok=True)
            newFileAbsPath = os.path.join(newFolderPath, os.path.basename(smaliFile))

            # Some characters need to be
            # escaped in bash shell.  For example
            # smali_classes2/edu/fandm/enovak/leaks/Main$1.smali
            # the $1 will be treated like a variable in bash unless
            # it is escaped or wrapped in quotes
            # refactored according to https://docs.python.org/3/library/subprocess.html
            # shell = true means things like "*" and "~" will be expanded in the shell
            # I DID NOT include shell=true, which means that shell=false.
            # This means that single-quotes or escaping $ is unnecessary.

            # sometimes the system determines that a file should result
            # in the place in which it already resides (smali_classes2 -> smali_classes2)
            # in those cases we don't want to do any mv at all.  Even with -n
            # mv will exit with an error, status 1
            if not os.path.exists(newFileAbsPath):
                os.rename(smaliFile, newFileAbsPath)


# rebuild apk
def rebuildApk(newAPKName):
    # rebuilds the apk
    start_time = time.time()

    # --use-aapt2
    # was found to be necessary in order to re-build myfitnesspal
    # to avoid error: invalid resource directory name: ...\res navigation
    # https://github.com/iBotPeaches/Apktool/issues/2219
    use_aapt2 = aapt2_helper()
    if (use_aapt2):
        rebuildCMD = ["java", "-jar", "include/apktool.jar", "b", temp_file.name, "--use-aapt2", "-o", newAPKName]
    else:
        rebuildCMD = ["java", "-jar", "include/apktool.jar", "b", temp_file.name, "-o", newAPKName]

    #print("Rebuilding:", rebuildCMD)
    if (os.name == "nt"):
        completedProcess = subprocess.run(rebuildCMD, shell=True)
    elif (os.name == "posix"):
        completedProcess = subprocess.run(rebuildCMD)
    try:
        completedProcess.check_returncode()
    except:
        input("continue?")
    print("Apk packed in %.1f seconds" % (time.time() - start_time))


def signApk(newAPKName):
    password = "MzJiY2ZjNjY5Z"
    password_bytes = (password + "\n").encode("utf-8")
    # print(password_bytes)
    keystore_name = "stigma-keys.keystore"
    stigma_alias = "stigma_keystore_alias"

    if (not os.path.exists(keystore_name)):
        # keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -validity 10000
        cmd = ["keytool", "-genkey", "-keystore", keystore_name, "-alias", stigma_alias, "-keyalg", "RSA", "-validity",
               "10000"]
        proc = subprocess.Popen(" ".join(cmd), stdin=subprocess.PIPE, shell=True)

        proc.stdin.write(password_bytes)
        proc.stdin.write(password_bytes)
        proc.stdin.write(b"\n")
        proc.stdin.write(b"\n")
        proc.stdin.write(b"\n")
        proc.stdin.write(b"\n")
        proc.stdin.write(b"\n")
        proc.stdin.write(b"\n")
        proc.stdin.write(b"y\n")
        proc.communicate(b"\n")

    # print("Signing...")
    # apksigner sign --ks stigma-keys.keystore --ks-pass pass:MzJiY2ZjNjY5Z --ks-key-alias stigma_keystore_alias ./leak_detect_test/Tracked_StigmaTest.apk
    cmd = ["include/apksigner", "sign", "--ks", keystore_name, "--ks-pass", "pass:"+password, "--ks-key-alias", stigma_alias, newAPKName]
    #print("Signing with apksigner:", cmd)
    if (os.name == "nt"):
        completedProcess = subprocess.run(cmd, shell=True)
    elif (os.name == "posix"):
        completedProcess = subprocess.run(cmd)
    completedProcess.check_returncode()




def openLauncherActivitySmaliFileForDebuggingPurposes():
    
    cmd = ["find", temp_file.name, "-iname", "HomeActivity.smali", "-exec", "xdg-open", "{}", ";"]
    subprocess.run(cmd)

    input("Press Enter to Continue...")


def stigmaMainWorkflow(args):
    # https://docs.python.org/3/library/tempfile.html
    global temp_file # TO DO: Make this not a global if possible
    temp_file = tempfile.TemporaryDirectory(prefix="apkOutput_")
    temp_file.cleanup() # deletes existing temp files if they exist, this line might be unnecessary
    print("Temp files at: " + str(temp_file.name))

    start = time.time()
    dumpApk(args.APK)
    #ui = UI.UI(getFiles())
    #ui.launch()
    get_launcher_activity_classes()
    look_for(Instrumenter.look_for_strings)

    newAPKName = "Modified_" + os.path.basename(args.APK)

    plugin = args.plugin #[0]
    dry_run = (plugin == None)
    if (not dry_run):
        importPlugin(plugin)
        runInstrumentation()
        writeStorageClasses() # necessary for TaintTracking plugins
        #writeMarkedLocationClass() # necessary for some plugins should be part of those plugin's code
        splitSmali()

    #openLauncherActivitySmaliFileForDebuggingPurposes()
    rebuildApk(newAPKName)
    signApk(newAPKName)
    end = time.time()

    print("Finished in %.1f seconds" % (end - start))
    print("Result: " + os.path.abspath(newAPKName))

    # this input is here because it is helpful to keep the temporary files
    # around for debugging purposes.  In final release maybe remove it.
    print("Temp files at: " + str(temp_file.name))
    input("Press Enter to Delete Temporary Files: ")
    temp_file.cleanup()



def main():

    parser = argparse.ArgumentParser(description='Stigma: A tool for modifying the assembly code of closed source Android Apps')
    parser.add_argument("APK", help="The path to the APK file to be modified")
    parser.add_argument("-p", "--plugin", type=str, nargs=1, help="A plugin which defines the modifications desired.  A python3 file.")

    args = parser.parse_args()
    args.plugin = args.plugin[0]
    print(args)

    if (not os.path.exists(args.APK)):
        raise ValueError("Input file (" + args.SomeApp_apk + ") was not found or was not readable.")
    
    if (args.plugin != None and (not os.path.exists(args.plugin + ".py"))):
        raise ValueError("Plugin file (" + args.plugin + ") was not found or was not readable.")


    stigmaMainWorkflow(args)


if __name__ == '__main__':
    main()



