.class abstract Lcom/google/android/gms/common/api/internal/zae;
.super Lcom/google/android/gms/common/api/internal/zab;
.source "com.google.android.gms:play-services-base@@17.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/api/internal/zab;"
    }
.end annotation


# instance fields
.field protected final zacq:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zab;-><init>(I)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zae;->zacq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    return-void
.end method


# virtual methods
.method public zaa(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zae;->zacq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 5
    return-void
.end method

.method public zaa(Lcom/google/android/gms/common/api/internal/zaz;Z)V
    .locals 0

    .line 8
    return-void
.end method

.method public zaa(Ljava/lang/RuntimeException;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zae;->zacq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 7
    return-void
.end method

.method public final zac(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .line 9
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zae;->zad(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-void

    .line 17
    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zac;->zaa(Ljava/lang/RuntimeException;)V

    .line 19
    return-void

    .line 14
    :catch_1
    move-exception p1

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zac;->zab(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zac;->zaa(Lcom/google/android/gms/common/api/Status;)V

    .line 16
    return-void

    .line 11
    :catch_2
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zac;->zab(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zac;->zaa(Lcom/google/android/gms/common/api/Status;)V

    .line 13
    throw p1
.end method

.method protected abstract zad(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
