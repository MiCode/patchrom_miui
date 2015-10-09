.class public abstract Landroid/net/BaseNetworkStateTracker;
.super Ljava/lang/Object;
.source "BaseNetworkStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# static fields
.field public static final PROP_TCP_BUFFER_UNKNOWN:Ljava/lang/String; = "net.tcp.buffersize.unknown"

.field public static final PROP_TCP_BUFFER_WIFI:Ljava/lang/String; = "net.tcp.buffersize.wifi"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mLinkCapabilities:Landroid/net/LinkCapabilities;

.field protected mLinkProperties:Landroid/net/LinkProperties;

.field protected mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "networkType"    # I

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Landroid/net/NetworkInfo;

    const/4 v1, -0x1

    invoke-static {p1}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 56
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 57
    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 58
    return-void
.end method


# virtual methods
.method public addStackedLink(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 178
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 179
    return-void
.end method

.method public captivePortalCheckComplete()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public captivePortalCheckCompleted(Z)V
    .locals 0
    .param p1, "isCaptivePortal"    # Z

    .prologue
    .line 118
    return-void
.end method

.method public defaultRouteSet(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 159
    return-void
.end method

.method protected final dispatchConfigurationChanged()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTarget:Landroid/os/Handler;

    const v1, 0x70001

    invoke-virtual {p0}, Landroid/net/BaseNetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 77
    return-void
.end method

.method protected final dispatchStateChanged()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/high16 v1, 0x70000

    invoke-virtual {p0}, Landroid/net/BaseNetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 72
    return-void
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/BaseNetworkStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/BaseNetworkStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getLinkQualityInfo()Landroid/net/LinkQualityInfo;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    return-object v0
.end method

.method public getNetworkInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTargetHandler()Landroid/os/Handler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTarget:Landroid/os/Handler;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 148
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 149
    return-void
.end method

.method public removeStackedLink(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 183
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->removeStackedLink(Landroid/net/LinkProperties;)Z

    .line 184
    return-void
.end method

.method public setDependencyMet(Z)V
    .locals 0
    .param p1, "met"    # Z

    .prologue
    .line 174
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 139
    return-void
.end method

.method public setRadio(Z)Z
    .locals 1
    .param p1, "turnOn"    # Z

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public setTeardownRequested(Z)V
    .locals 1
    .param p1, "isRequested"    # Z

    .prologue
    .line 168
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 169
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 134
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 81
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTarget:Landroid/os/Handler;

    .line 83
    invoke-virtual {p0}, Landroid/net/BaseNetworkStateTracker;->startMonitoringInternal()V

    .line 84
    return-void
.end method

.method protected startMonitoringInternal()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 0
    .param p1, "s"    # Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .prologue
    .line 203
    return-void
.end method

.method public stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 0
    .param p1, "s"    # Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .prologue
    .line 208
    return-void
.end method

.method public supplyMessenger(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 189
    return-void
.end method
