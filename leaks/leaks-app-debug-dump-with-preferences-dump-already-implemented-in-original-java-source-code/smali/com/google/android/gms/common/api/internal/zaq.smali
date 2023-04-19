.class final Lcom/google/android/gms/common/api/internal/zaq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabr;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zabl:Landroid/os/Looper;

.field private final zaeh:Lcom/google/android/gms/common/api/internal/zaaw;

.field private final zaei:Lcom/google/android/gms/common/api/internal/zabe;

.field private final zaej:Lcom/google/android/gms/common/api/internal/zabe;

.field private final zaek:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/zabe;",
            ">;"
        }
    .end annotation
.end field

.field private final zael:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/SignInConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zaem:Lcom/google/android/gms/common/api/Api$Client;

.field private zaen:Landroid/os/Bundle;

.field private zaeo:Lcom/google/android/gms/common/ConnectionResult;

.field private zaep:Lcom/google/android/gms/common/ConnectionResult;

.field private zaeq:Z

.field private final zaer:Ljava/util/concurrent/locks/Lock;

.field private zaes:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaw;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$Client;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/internal/zaaw;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/GoogleApiAvailabilityLight;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zac;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/zap;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/zap;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 33
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 35
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaq;->zael:Ljava/util/Set;

    .line 36
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaq;->zaeo:Lcom/google/android/gms/common/ConnectionResult;

    .line 37
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaq;->zaep:Lcom/google/android/gms/common/ConnectionResult;

    .line 38
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/common/api/internal/zaq;->zaeq:Z

    .line 39
    iput v2, v0, Lcom/google/android/gms/common/api/internal/zaq;->zaes:I

    .line 40
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zaq;->mContext:Landroid/content/Context;

    .line 41
    move-object/from16 v15, p2

    iput-object v15, v0, Lcom/google/android/gms/common/api/internal/zaq;->zaeh:Lcom/google/android/gms/common/api/internal/zaaw;

    .line 42
    move-object/from16 v14, p3

    iput-object v14, v0, Lcom/google/android/gms/common/api/internal/zaq;->zaer:Ljava/util/concurrent/locks/Lock;

    .line 43
    move-object/from16 v13, p4

    iput-object v13, v0, Lcom/google/android/gms/common/api/internal/zaq;->zabl:Landroid/os/Looper;

    .line 44
    move-object/from16 v3, p10

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaq;->zaem:Lcom/google/android/gms/common/api/Api$Client;

    .line 45
    new-instance v12, Lcom/google/android/gms/common/api/internal/zabe;

    new-instance v11, Lcom/google/android/gms/common/api/internal/zas;

    invoke-direct {v11, v0, v1}, Lcom/google/android/gms/common/api/internal/zas;-><init>(Lcom/google/android/gms/common/api/internal/zaq;Lcom/google/android/gms/common/api/internal/zat;)V

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object v3, v12

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v17, v11

    move-object/from16 v11, p14

    move-object v1, v12

    move-object/from16 v12, v16

    move-object/from16 v13, p12

    move-object/from16 v14, v17

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/common/api/internal/zabe;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaw;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zabs;)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaq;->zaei:Lcom/google/android/gms/common/api/internal/zabe;

    .line 46
    new-instance v1, Lcom/google/android/gms/common/api/internal/zabe;

    new-instance v14, Lcom/google/android/gms/common/api/internal/zau;

    const/4 v3, 0x0

    invoke-direct {v14, v0, v3}, Lcom/google/android/gms/common/api/internal/zau;-><init>(Lcom/google/android/gms/common/api/internal/zaq;Lcom/google/android/gms/common/api/internal/zat;)V

    move-object v3, v1

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p13

    move-object/from16 v12, p9

    move-object/from16 v13, p11

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/common/api/internal/zabe;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaw;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zabs;)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaq;->zaej:Lcom/google/android/gms/common/api/internal/zabe;

    .line 47
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 48
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    .line 49
    iget-object v4, v0, Lcom/google/android/gms/common/api/internal/zaq;->zaei:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v1, v3, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    .line 52
    iget-object v4, v0, Lcom/google/android/gms/common/api/internal/zaq;->zaej:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v1, v3, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaq;->zaek:Ljava/util/Map;

    .line 55
    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zaq;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaeo:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method public static zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaw;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zaq;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/internal/zaaw;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/GoogleApiAvailabilityLight;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zac;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/zap;",
            ">;)",
            "Lcom/google/android/gms/common/api/internal/zaq;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p7

    move-object/from16 v1, p9

    .line 2
    new-instance v6, Landroidx/collection/ArrayMap;

    invoke-direct {v6}, Landroidx/collection/ArrayMap;-><init>()V

    .line 3
    new-instance v7, Landroidx/collection/ArrayMap;

    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    .line 4
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v10, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/Api$Client;

    .line 6
    invoke-interface {v4}, Lcom/google/android/gms/common/api/Api$Client;->providesSignIn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    move-object v10, v4

    .line 8
    :cond_0
    invoke-interface {v4}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    goto :goto_0

    .line 12
    :cond_2
    nop

    .line 13
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 14
    const-string v3, "CompositeGoogleApiClient should not be used without any APIs that require sign-in."

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 15
    new-instance v13, Landroidx/collection/ArrayMap;

    invoke-direct {v13}, Landroidx/collection/ArrayMap;-><init>()V

    .line 16
    new-instance v14, Landroidx/collection/ArrayMap;

    invoke-direct {v14}, Landroidx/collection/ArrayMap;-><init>()V

    .line 17
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api;

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Api;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v4

    .line 19
    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 20
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-interface {v13, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 21
    :cond_3
    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 22
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-interface {v14, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 23
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each API in the isOptionalMap must have a corresponding client in the clients map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 26
    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_8

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/common/api/internal/zap;

    .line 27
    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/zap;->mApi:Lcom/google/android/gms/common/api/Api;

    invoke-interface {v13, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 28
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 29
    :cond_6
    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/zap;->mApi:Lcom/google/android/gms/common/api/Api;

    invoke-interface {v14, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 30
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 31
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each ClientCallbacks must have a corresponding API in the isOptionalMap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_8
    new-instance v15, Lcom/google/android/gms/common/api/internal/zaq;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/common/api/internal/zaq;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaw;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$Client;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V

    return-object v15
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zaq;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaer:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method private final zaa(IZ)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaeh:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/zaaw;->zab(IZ)V

    .line 174
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaep:Lcom/google/android/gms/common/ConnectionResult;

    .line 175
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaeo:Lcom/google/android/gms/common/ConnectionResult;

    .line 176
    return-void
.end method

.method private final zaa(Landroid/os/Bundle;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaen:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 191
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaen:Landroid/os/Bundle;

    return-void

    .line 192
    :cond_0
    if-eqz p1, :cond_1

    .line 193
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 194
    :cond_1
    return-void
.end method

.method private final zaa(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .line 161
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaes:I

    packed-switch v0, :pswitch_data_0

    .line 165
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "CompositeGAC"

    const-string v1, "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaeh:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zaaw;->zac(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 163
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaq;->zaw()V

    .line 164
    nop

    .line 166
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaes:I

    .line 167
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zaq;IZ)V
    .locals 0

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/zaq;->zaa(IZ)V

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zaq;Landroid/os/Bundle;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zaq;->zaa(Landroid/os/Bundle;)V

    return-void
.end method

.method private final zaa(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "+",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            ">;)Z"
        }
    .end annotation

    .line 178
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object p1

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaek:Ljava/util/Map;

    .line 180
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 181
    const-string v1, "GoogleApiClient is not configured to use the API required for this call."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaek:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/zabe;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaej:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zaq;Z)Z
    .locals 0

    .line 207
    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaeq:Z

    return p1
.end method

.method static synthetic zab(Lcom/google/android/gms/common/api/internal/zaq;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaep:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method static synthetic zab(Lcom/google/android/gms/common/api/internal/zaq;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaq;->zav()V

    return-void
.end method

.method private static zab(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 0

    .line 195
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zac(Lcom/google/android/gms/common/api/internal/zaq;)Z
    .locals 0

    .line 205
    iget-boolean p0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaeq:Z

    return p0
.end method

.method static synthetic zad(Lcom/google/android/gms/common/api/internal/zaq;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaep:Lcom/google/android/gms/common/ConnectionResult;

    return-object p0
.end method

.method static synthetic zae(Lcom/google/android/gms/common/api/internal/zaq;)Lcom/google/android/gms/common/api/internal/zabe;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaej:Lcom/google/android/gms/common/api/internal/zabe;

    return-object p0
.end method

.method static synthetic zaf(Lcom/google/android/gms/common/api/internal/zaq;)Lcom/google/android/gms/common/api/internal/zabe;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaei:Lcom/google/android/gms/common/api/internal/zabe;

    return-object p0
.end method

.method private final zav()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaeo:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaq;->zab(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaep:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaq;->zab(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaq;->zax()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaep:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_6

    .line 148
    iget v1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaes:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 149
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaq;->zaw()V

    return-void

    .line 150
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaq;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 151
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaei:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabe;->disconnect()V

    return-void

    .line 139
    :cond_2
    :goto_0
    nop

    .line 140
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaes:I

    packed-switch v0, :pswitch_data_0

    .line 144
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    const-string v1, "CompositeGAC"

    const-string v2, "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 141
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaeh:Lcom/google/android/gms/common/api/internal/zaaw;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaen:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zaaw;->zab(Landroid/os/Bundle;)V

    .line 142
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaq;->zaw()V

    .line 143
    nop

    .line 145
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaes:I

    .line 146
    return-void

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaeo:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaep:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaq;->zab(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaej:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabe;->disconnect()V

    .line 154
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaeo:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaq;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaeo:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaep:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_6

    .line 156
    nop

    .line 157
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaej:Lcom/google/android/gms/common/api/internal/zabe;

    iget v1, v1, Lcom/google/android/gms/common/api/internal/zabe;->zahw:I

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaei:Lcom/google/android/gms/common/api/internal/zabe;

    iget v2, v2, Lcom/google/android/gms/common/api/internal/zabe;->zahw:I

    if-ge v1, v2, :cond_5

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaep:Lcom/google/android/gms/common/ConnectionResult;

    .line 159
    :cond_5
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaq;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 160
    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zaw()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zael:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/SignInConnectionListener;

    .line 169
    invoke-interface {v1}, Lcom/google/android/gms/common/api/internal/SignInConnectionListener;->onComplete()V

    .line 170
    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zael:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 172
    return-void
.end method

.method private final zax()Z
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaep:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zay()Landroid/app/PendingIntent;
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaem:Lcom/google/android/gms/common/api/Api$Client;

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x0

    return-object v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaeh:Lcom/google/android/gms/common/api/internal/zaaw;

    .line 186
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 187
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaem:Lcom/google/android/gms/common/api/Api$Client;

    .line 188
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->getSignInIntent()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    .line 189
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    .line 86
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final connect()V
    .locals 1

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaes:I

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaeq:Z

    .line 79
    nop

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaep:Lcom/google/android/gms/common/ConnectionResult;

    .line 81
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaeo:Lcom/google/android/gms/common/ConnectionResult;

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaei:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabe;->connect()V

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaej:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabe;->connect()V

    .line 84
    return-void
.end method

.method public final disconnect()V
    .locals 1

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaep:Lcom/google/android/gms/common/ConnectionResult;

    .line 88
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaeo:Lcom/google/android/gms/common/ConnectionResult;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaes:I

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaei:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabe;->disconnect()V

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaej:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabe;->disconnect()V

    .line 92
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaq;->zaw()V

    .line 93
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 196
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "authClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaej:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/zabe;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 198
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "anonClient"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaei:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/zabe;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public final enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zaq;->zaa(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaq;->zax()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaq;->zay()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 60
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V

    .line 61
    return-object p1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaej:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabe;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaei:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabe;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public final execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zaq;->zaa(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaq;->zax()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaq;->zay()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 68
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V

    .line 69
    return-object p1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaej:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabe;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaei:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabe;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public final getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaek:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabe;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaej:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaq;->zax()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaq;->zay()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaej:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabe;->getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    return-object p1

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaei:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabe;->getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    return-object p1
.end method

.method public final isConnected()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaer:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaei:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabe;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaej:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabe;->isConnected()Z

    move-result v0

    .line 97
    if-nez v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaq;->zax()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaer:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 100
    return v1

    .line 101
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaer:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final isConnecting()Z
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaer:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 103
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaer:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 105
    return v0

    .line 106
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaer:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final maybeSignIn(Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaer:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaq;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaq;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaej:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabe;->isConnected()Z

    move-result v0

    .line 110
    if-nez v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zael:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    iget p1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaes:I

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 113
    iput v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaes:I

    .line 114
    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaep:Lcom/google/android/gms/common/ConnectionResult;

    .line 115
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaej:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabe;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaer:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 117
    return v0

    .line 118
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaer:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 119
    nop

    .line 121
    const/4 p1, 0x0

    return p1

    .line 120
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaer:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final maybeSignOut()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaer:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaq;->isConnecting()Z

    move-result v0

    .line 127
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaej:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabe;->disconnect()V

    .line 128
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaep:Lcom/google/android/gms/common/ConnectionResult;

    .line 129
    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lcom/google/android/gms/internal/base/zar;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zabl:Landroid/os/Looper;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/base/zar;-><init>(Landroid/os/Looper;)V

    .line 131
    new-instance v1, Lcom/google/android/gms/common/api/internal/zat;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/zat;-><init>(Lcom/google/android/gms/common/api/internal/zaq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaq;->zaw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaer:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 135
    return-void

    .line 136
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaer:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final zau()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaei:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabe;->zau()V

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaq;->zaej:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabe;->zau()V

    .line 124
    return-void
.end method
