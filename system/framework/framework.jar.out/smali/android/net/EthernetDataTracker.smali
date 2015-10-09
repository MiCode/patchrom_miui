.class public Landroid/net/EthernetDataTracker;
.super Landroid/net/BaseNetworkStateTracker;
.source "EthernetDataTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/EthernetDataTracker$InterfaceObserver;
    }
.end annotation


# static fields
.field private static final NETWORKTYPE:Ljava/lang/String; = "ETHERNET"

.field private static final TAG:Ljava/lang/String; = "Ethernet"

.field private static mIface:Ljava/lang/String;

.field private static mLinkUp:Z

.field private static sIfaceMatch:Ljava/lang/String;

.field private static sInstance:Landroid/net/EthernetDataTracker;


# instance fields
.field protected mCsHandler:Landroid/os/Handler;

.field private mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mHwAddr:Ljava/lang/String;

.field private mInterfaceObserver:Landroid/net/EthernetDataTracker$InterfaceObserver;

.field private mNMService:Landroid/os/INetworkManagementService;

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, ""

    sput-object v0, Landroid/net/EthernetDataTracker;->sIfaceMatch:Ljava/lang/String;

    .line 59
    const-string v0, ""

    sput-object v0, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 103
    invoke-direct {p0}, Landroid/net/BaseNetworkStateTracker;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v1, 0x9

    const-string v2, "ETHERNET"

    const-string v3, ""

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 105
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 106
    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/EthernetDataTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 107
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 41
    sput-boolean p0, Landroid/net/EthernetDataTracker;->mLinkUp:Z

    return p0
.end method

.method static synthetic access$200(Landroid/net/EthernetDataTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/EthernetDataTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/net/EthernetDataTracker;->interfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/EthernetDataTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/EthernetDataTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/net/EthernetDataTracker;->interfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/EthernetDataTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/EthernetDataTracker;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mHwAddr:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Landroid/net/EthernetDataTracker;
    .locals 2

    .prologue
    .line 185
    const-class v1, Landroid/net/EthernetDataTracker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/net/EthernetDataTracker;->sInstance:Landroid/net/EthernetDataTracker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/UsbShareNetStateTracker;

    invoke-direct {v0}, Landroid/net/UsbShareNetStateTracker;-><init>()V

    sput-object v0, Landroid/net/EthernetDataTracker;->sInstance:Landroid/net/EthernetDataTracker;

    .line 186
    :cond_0
    sget-object v0, Landroid/net/EthernetDataTracker;->sInstance:Landroid/net/EthernetDataTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private interfaceAdded(Ljava/lang/String;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 110
    sget-object v2, Landroid/net/EthernetDataTracker;->sIfaceMatch:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string v2, "Ethernet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    sget-object v2, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    monitor-exit p0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 118
    :cond_1
    :try_start_1
    sput-object p1, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    .line 119
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :try_start_2
    iget-object v2, p0, Landroid/net/EthernetDataTracker;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->setInterfaceUp(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 128
    :goto_1
    iget-object v2, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 129
    iget-object v2, p0, Landroid/net/EthernetDataTracker;->mCsHandler:Landroid/os/Handler;

    const v3, 0x70001

    iget-object v4, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 130
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 124
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Ethernet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error upping interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private interfaceRemoved(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 157
    sget-object v0, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v0, "Ethernet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Landroid/net/EthernetDataTracker;->disconnect()V

    .line 162
    const-string v0, ""

    sput-object v0, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    goto :goto_0
.end method

.method private runDhcp()V
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/EthernetDataTracker$1;

    invoke-direct {v1, p0}, Landroid/net/EthernetDataTracker$1;-><init>(Landroid/net/EthernetDataTracker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 181
    .local v0, "dhcpThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 182
    return-void
.end method


# virtual methods
.method public Clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public addStackedLink(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 414
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 415
    return-void
.end method

.method public captivePortalCheckComplete()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public captivePortalCheckCompleted(Z)V
    .locals 0
    .param p1, "isCaptivePortal"    # Z

    .prologue
    .line 280
    return-void
.end method

.method public defaultRouteSet(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 397
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 398
    return-void
.end method

.method public disconnect()V
    .locals 8

    .prologue
    .line 135
    sget-object v4, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    .line 137
    iget-object v4, p0, Landroid/net/EthernetDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->clear()V

    .line 138
    iget-object v4, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 139
    iget-object v4, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/net/EthernetDataTracker;->mHwAddr:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v4, p0, Landroid/net/EthernetDataTracker;->mCsHandler:Landroid/os/Handler;

    const v5, 0x70001

    iget-object v6, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 142
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 144
    iget-object v4, p0, Landroid/net/EthernetDataTracker;->mCsHandler:Landroid/os/Handler;

    const/high16 v5, 0x70000

    iget-object v6, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 145
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 147
    const-string/jumbo v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 148
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    .line 150
    .local v3, "service":Landroid/os/INetworkManagementService;
    :try_start_0
    sget-object v4, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Ethernet"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to clear addresses or disable ipv6"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDefaultGatewayAddr()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 376
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/EthernetDataTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public declared-synchronized getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 366
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/EthernetDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 359
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    const-string/jumbo v0, "net.tcp.buffersize.wifi"

    return-object v0
.end method

.method public declared-synchronized isAvailable()Z
    .locals 1

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 352
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 353
    return-void
.end method

.method public reconnect()Z
    .locals 2

    .prologue
    .line 265
    sget-boolean v0, Landroid/net/EthernetDataTracker;->mLinkUp:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 267
    invoke-direct {p0}, Landroid/net/EthernetDataTracker;->runDhcp()V

    .line 269
    :cond_0
    sget-boolean v0, Landroid/net/EthernetDataTracker;->mLinkUp:Z

    return v0
.end method

.method public removeStackedLink(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 419
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->removeStackedLink(Landroid/net/LinkProperties;)Z

    .line 420
    return-void
.end method

.method public setDependencyMet(Z)V
    .locals 0
    .param p1, "met"    # Z

    .prologue
    .line 410
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 338
    const-string v0, "Ethernet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setPolicyDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void
.end method

.method public setRadio(Z)Z
    .locals 1
    .param p1, "turnOn"    # Z

    .prologue
    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public setTeardownRequested(Z)V
    .locals 1
    .param p1, "isRequested"    # Z

    .prologue
    .line 194
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 195
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 333
    const-string v0, "Ethernet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setUserDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 205
    iput-object p1, p0, Landroid/net/EthernetDataTracker;->mContext:Landroid/content/Context;

    .line 206
    iput-object p2, p0, Landroid/net/EthernetDataTracker;->mCsHandler:Landroid/os/Handler;

    .line 209
    const-string/jumbo v8, "network_management"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 210
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v8

    iput-object v8, p0, Landroid/net/EthernetDataTracker;->mNMService:Landroid/os/INetworkManagementService;

    .line 212
    new-instance v8, Landroid/net/EthernetDataTracker$InterfaceObserver;

    invoke-direct {v8, p0}, Landroid/net/EthernetDataTracker$InterfaceObserver;-><init>(Landroid/net/EthernetDataTracker;)V

    iput-object v8, p0, Landroid/net/EthernetDataTracker;->mInterfaceObserver:Landroid/net/EthernetDataTracker$InterfaceObserver;

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/internal/R$string;->config_ethernet_iface_regex:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Landroid/net/EthernetDataTracker;->sIfaceMatch:Ljava/lang/String;

    .line 219
    :try_start_0
    iget-object v8, p0, Landroid/net/EthernetDataTracker;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v8}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v6

    .line 220
    .local v6, "ifaces":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v5, v0, v4

    .line 221
    .local v5, "iface":Ljava/lang/String;
    sget-object v8, Landroid/net/EthernetDataTracker;->sIfaceMatch:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 222
    sput-object v5, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    .line 223
    iget-object v8, p0, Landroid/net/EthernetDataTracker;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v8, v5}, Landroid/os/INetworkManagementService;->setInterfaceUp(Ljava/lang/String;)V

    .line 224
    iget-object v8, p0, Landroid/net/EthernetDataTracker;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v8, v5}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v2

    .line 225
    .local v2, "config":Landroid/net/InterfaceConfiguration;
    const-string/jumbo v8, "up"

    invoke-virtual {v2, v8}, Landroid/net/InterfaceConfiguration;->hasFlag(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Landroid/net/EthernetDataTracker;->mLinkUp:Z

    .line 226
    if-eqz v2, :cond_0

    iget-object v8, p0, Landroid/net/EthernetDataTracker;->mHwAddr:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 227
    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/net/EthernetDataTracker;->mHwAddr:Ljava/lang/String;

    .line 228
    iget-object v8, p0, Landroid/net/EthernetDataTracker;->mHwAddr:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 229
    iget-object v8, p0, Landroid/net/EthernetDataTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v9, p0, Landroid/net/EthernetDataTracker;->mHwAddr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    .line 234
    :cond_0
    sget-object v8, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    .line 236
    invoke-virtual {p0}, Landroid/net/EthernetDataTracker;->reconnect()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "config":Landroid/net/InterfaceConfiguration;
    .end local v4    # "i$":I
    .end local v5    # "iface":Ljava/lang/String;
    .end local v6    # "ifaces":[Ljava/lang/String;
    .end local v7    # "len$":I
    :cond_1
    :goto_1
    :try_start_1
    iget-object v8, p0, Landroid/net/EthernetDataTracker;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v9, p0, Landroid/net/EthernetDataTracker;->mInterfaceObserver:Landroid/net/EthernetDataTracker$InterfaceObserver;

    invoke-interface {v8, v9}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    :goto_2
    return-void

    .line 220
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "iface":Ljava/lang/String;
    .restart local v6    # "ifaces":[Ljava/lang/String;
    .restart local v7    # "len$":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 240
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "iface":Ljava/lang/String;
    .end local v6    # "ifaces":[Ljava/lang/String;
    .end local v7    # "len$":I
    :catch_0
    move-exception v3

    .line 241
    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "Ethernet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not get list of interfaces "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 246
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 247
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v8, "Ethernet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not register InterfaceObserver "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I

    .prologue
    .line 311
    const/4 v0, -0x1

    return v0
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I

    .prologue
    .line 328
    const/4 v0, -0x1

    return v0
.end method

.method public supplyMessenger(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 425
    return-void
.end method

.method public teardown()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 256
    iget-object v0, p0, Landroid/net/EthernetDataTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 257
    sget-object v0, Landroid/net/EthernetDataTracker;->mIface:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    .line 258
    return v1
.end method
