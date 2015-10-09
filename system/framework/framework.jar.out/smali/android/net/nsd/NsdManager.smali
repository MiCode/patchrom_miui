.class public final Landroid/net/nsd/NsdManager;
.super Ljava/lang/Object;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/nsd/NsdManager$ServiceHandler;,
        Landroid/net/nsd/NsdManager$ResolveListener;,
        Landroid/net/nsd/NsdManager$RegistrationListener;,
        Landroid/net/nsd/NsdManager$DiscoveryListener;
    }
.end annotation


# static fields
.field public static final ACTION_NSD_STATE_CHANGED:Ljava/lang/String; = "android.net.nsd.STATE_CHANGED"

.field private static final BASE:I = 0x60000

.field public static final DISABLE:I = 0x60019

.field public static final DISCOVER_SERVICES:I = 0x60001

.field public static final DISCOVER_SERVICES_FAILED:I = 0x60003

.field public static final DISCOVER_SERVICES_STARTED:I = 0x60002

.field public static final ENABLE:I = 0x60018

.field public static final EXTRA_NSD_STATE:Ljava/lang/String; = "nsd_state"

.field public static final FAILURE_ALREADY_ACTIVE:I = 0x3

.field public static final FAILURE_INTERNAL_ERROR:I = 0x0

.field public static final FAILURE_MAX_LIMIT:I = 0x4

.field private static final INVALID_LISTENER_KEY:I = 0x0

.field public static final NATIVE_DAEMON_EVENT:I = 0x6001a

.field public static final NSD_STATE_DISABLED:I = 0x1

.field public static final NSD_STATE_ENABLED:I = 0x2

.field public static final PROTOCOL_DNS_SD:I = 0x1

.field public static final REGISTER_SERVICE:I = 0x60009

.field public static final REGISTER_SERVICE_FAILED:I = 0x6000a

.field public static final REGISTER_SERVICE_SUCCEEDED:I = 0x6000b

.field public static final RESOLVE_SERVICE:I = 0x60012

.field public static final RESOLVE_SERVICE_FAILED:I = 0x60013

.field public static final RESOLVE_SERVICE_SUCCEEDED:I = 0x60014

.field public static final SERVICE_FOUND:I = 0x60004

.field public static final SERVICE_LOST:I = 0x60005

.field public static final STOP_DISCOVERY:I = 0x60006

.field public static final STOP_DISCOVERY_FAILED:I = 0x60007

.field public static final STOP_DISCOVERY_SUCCEEDED:I = 0x60008

.field private static final TAG:Ljava/lang/String; = "NsdManager"

.field public static final UNREGISTER_SERVICE:I = 0x6000c

.field public static final UNREGISTER_SERVICE_FAILED:I = 0x6000d

.field public static final UNREGISTER_SERVICE_SUCCEEDED:I = 0x6000e


# instance fields
.field private final mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mConnected:Ljava/util/concurrent/CountDownLatch;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/net/nsd/NsdManager$ServiceHandler;

.field private mListenerKey:I

.field private final mListenerMap:Landroid/util/SparseArray;

.field private final mMapLock:Ljava/lang/Object;

.field mService:Landroid/net/nsd/INsdManager;

.field private final mServiceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/nsd/NsdServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/nsd/INsdManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/nsd/INsdManager;

    .prologue
    const/4 v1, 0x1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput v1, p0, Landroid/net/nsd/NsdManager;->mListenerKey:I

    .line 217
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    .line 218
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mServiceMap:Landroid/util/SparseArray;

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    .line 221
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 223
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mConnected:Ljava/util/concurrent/CountDownLatch;

    .line 234
    iput-object p2, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/nsd/INsdManager;

    .line 235
    iput-object p1, p0, Landroid/net/nsd/NsdManager;->mContext:Landroid/content/Context;

    .line 236
    invoke-direct {p0}, Landroid/net/nsd/NsdManager;->init()V

    .line 237
    return-void
.end method

.method static synthetic access$000(Landroid/net/nsd/NsdManager;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Landroid/net/nsd/NsdManager;

    .prologue
    .line 123
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/nsd/NsdManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Landroid/net/nsd/NsdManager;

    .prologue
    .line 123
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mConnected:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/nsd/NsdManager;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/net/nsd/NsdManager;
    .param p1, "x1"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->getListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/nsd/NsdManager;I)Landroid/net/nsd/NsdServiceInfo;
    .locals 1
    .param p0, "x0"    # Landroid/net/nsd/NsdManager;
    .param p1, "x1"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->getNsdService(I)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/nsd/NsdManager;
    .param p1, "x1"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->getNsdServiceInfoType(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/nsd/NsdManager;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/nsd/NsdManager;
    .param p1, "x1"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->removeListener(I)V

    return-void
.end method

.method private getListener(I)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 397
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 399
    :goto_0
    return-object v0

    .line 398
    :cond_0
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 399
    :try_start_0
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getListenerKey(Ljava/lang/Object;)I
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 418
    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 419
    :try_start_0
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 420
    .local v0, "valueIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 421
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    monitor-exit v2

    .line 424
    :goto_0
    return v1

    .line 423
    :cond_0
    monitor-exit v2

    .line 424
    const/4 v1, 0x0

    goto :goto_0

    .line 423
    .end local v0    # "valueIndex":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 601
    :try_start_0
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/nsd/INsdManager;

    invoke-interface {v1}, Landroid/net/nsd/INsdManager;->getMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 603
    :goto_0
    return-object v1

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getNsdService(I)Landroid/net/nsd/NsdServiceInfo;
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 404
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 405
    :try_start_0
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdServiceInfo;

    monitor-exit v1

    return-object v0

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getNsdServiceInfoType(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 429
    if-nez p1, :cond_0

    const-string v0, "?"

    .line 430
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 437
    invoke-direct {p0}, Landroid/net/nsd/NsdManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 438
    .local v1, "messenger":Landroid/os/Messenger;
    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to initialize"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 439
    :cond_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "NsdManager"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 440
    .local v2, "t":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 441
    new-instance v3, Landroid/net/nsd/NsdManager$ServiceHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/net/nsd/NsdManager$ServiceHandler;-><init>(Landroid/net/nsd/NsdManager;Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/net/nsd/NsdManager;->mHandler:Landroid/net/nsd/NsdManager$ServiceHandler;

    .line 442
    iget-object v3, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v4, p0, Landroid/net/nsd/NsdManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/net/nsd/NsdManager;->mHandler:Landroid/net/nsd/NsdManager$ServiceHandler;

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 444
    :try_start_0
    iget-object v3, p0, Landroid/net/nsd/NsdManager;->mConnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "NsdManager"

    const-string v4, "interrupted wait at init"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private putListener(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;)I
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "s"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 384
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 393
    :goto_0
    return v0

    .line 386
    :cond_0
    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 388
    :cond_1
    :try_start_0
    iget v0, p0, Landroid/net/nsd/NsdManager;->mListenerKey:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/nsd/NsdManager;->mListenerKey:I

    .line 389
    .local v0, "key":I
    if-eqz v0, :cond_1

    .line 390
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 391
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 392
    monitor-exit v2

    goto :goto_0

    .end local v0    # "key":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeListener(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 410
    if-nez p1, :cond_0

    .line 415
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 412
    :try_start_0
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 413
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 414
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V
    .locals 5
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "protocolType"    # I
    .param p3, "listener"    # Landroid/net/nsd/NsdManager$DiscoveryListener;

    .prologue
    .line 527
    if-nez p3, :cond_0

    .line 528
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 530
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 531
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Service type cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 534
    :cond_1
    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    .line 535
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported protocol"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 538
    :cond_2
    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 539
    .local v0, "s":Landroid/net/nsd/NsdServiceInfo;
    invoke-virtual {v0, p1}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 540
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x60001

    const/4 v3, 0x0

    invoke-direct {p0, p3, v0}, Landroid/net/nsd/NsdManager;->putListener(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 541
    return-void
.end method

.method public registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V
    .locals 4
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "protocolType"    # I
    .param p3, "listener"    # Landroid/net/nsd/NsdManager$RegistrationListener;

    .prologue
    .line 465
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Service name or type cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_1
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    move-result v0

    if-gtz v0, :cond_2

    .line 470
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid port number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_2
    if-nez p3, :cond_3

    .line 473
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_3
    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    .line 476
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported protocol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_4
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x60009

    const/4 v2, 0x0

    invoke-direct {p0, p3, p1}, Landroid/net/nsd/NsdManager;->putListener(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 480
    return-void
.end method

.method public resolveService(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$ResolveListener;)V
    .locals 4
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "listener"    # Landroid/net/nsd/NsdManager$ResolveListener;

    .prologue
    .line 575
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Service name or type cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_1
    if-nez p2, :cond_2

    .line 580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_2
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x60012

    const/4 v2, 0x0

    invoke-direct {p0, p2, p1}, Landroid/net/nsd/NsdManager;->putListener(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 584
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 589
    :try_start_0
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/nsd/INsdManager;

    invoke-interface {v0, p1}, Landroid/net/nsd/INsdManager;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_0
    return-void

    .line 590
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/nsd/NsdManager$DiscoveryListener;

    .prologue
    .line 556
    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->getListenerKey(Ljava/lang/Object;)I

    move-result v0

    .line 557
    .local v0, "id":I
    if-nez v0, :cond_0

    .line 558
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "service discovery not active on listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 560
    :cond_0
    if-nez p1, :cond_1

    .line 561
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 563
    :cond_1
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x60006

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 564
    return-void
.end method

.method public unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/nsd/NsdManager$RegistrationListener;

    .prologue
    .line 492
    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->getListenerKey(Ljava/lang/Object;)I

    move-result v0

    .line 493
    .local v0, "id":I
    if-nez v0, :cond_0

    .line 494
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener not registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    :cond_0
    if-nez p1, :cond_1

    .line 497
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 499
    :cond_1
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x6000c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 500
    return-void
.end method
