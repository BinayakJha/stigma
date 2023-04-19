.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzxr;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzun;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzvx;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    const-string p1, "phone"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zza:Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zzb:Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zze:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zzd:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zzf:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzxr;
    .locals 9

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;

    .line 2
    const-string v1, "phone"

    move-object v0, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zzb:Ljava/lang/String;

    .line 2
    const-string v2, "mfaPendingCredential"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zzc:Ljava/lang/String;

    .line 3
    const-string v2, "mfaEnrollmentId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zza:Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 5
    const-string v1, "mfaProvider"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zze:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/json/JSONObject;

    .line 6
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zze:Ljava/lang/String;

    .line 7
    const-string v3, "phoneNumber"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zzf:Ljava/lang/String;

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zzf:Ljava/lang/String;

    .line 9
    const-string v3, "recaptchaToken"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zzg:Ljava/lang/String;

    .line 10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zzg:Ljava/lang/String;

    .line 11
    const-string v3, "safetyNetToken"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzvx;

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvx;->zza()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "autoRetrievalInfo"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    nop

    .line 13
    const-string v2, "phoneSignInInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzvx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzvx;

    return-void
.end method
