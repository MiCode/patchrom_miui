.class public Landroid/net/DummyDataStateTracker;
.super Landroid/net/BaseNetworkStateTracker;
.source "DummyDataStateTracker.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "DummyDataStateTracker"

.field private static final VDBG:Z


# instance fields
.field private mDefaultRouteSet:Z

.field private mIsDefaultOrHipri:Z

.field private mPrivateDnsRouteSet:Z

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "netType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/net/BaseNetworkStateTracker;-><init>()V

    .line 38
    iput-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mTeardownRequested:Z

    .line 40
    iput-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 41
    iput-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mDefaultRouteSet:Z

    .line 45
    iput-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mIsDefaultOrHipri:Z

    .line 53
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p1}, Landroid/net/NetworkInfo;-><init>(I)V

    iput-object v0, p0, Landroid/net/DummyDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 54
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 225
    const-string v0, "DummyDataStateTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 229
    const-string v0, "DummyDataStateTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method private setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDetailed state, old ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DummyDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and new state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/DummyDataStateTracker;->log(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Landroid/net/DummyDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Landroid/net/DummyDataStateTracker;->mTarget:Landroid/os/Handler;

    const/high16 v2, 0x70000

    iget-object v3, p0, Landroid/net/DummyDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 144
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 145
    return-void
.end method


# virtual methods
.method public addStackedLink(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 211
    iget-object v0, p0, Landroid/net/DummyDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 212
    return-void
.end method

.method public captivePortalCheckComplete()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public captivePortalCheckCompleted(Z)V
    .locals 0
    .param p1, "isCaptivePortal"    # Z

    .prologue
    .line 127
    return-void
.end method

.method public defaultRouteSet(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Landroid/net/DummyDataStateTracker;->mDefaultRouteSet:Z

    .line 85
    return-void
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/DummyDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/DummyDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/net/DummyDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string/jumbo v0, "net.tcp.buffersize.unknown"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mDefaultRouteSet:Z

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mPrivateDnsRouteSet:Z

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/net/DummyDataStateTracker;->mTeardownRequested:Z

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Landroid/net/DummyDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 73
    return-void
.end method

.method public reconnect()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "enabled"

    invoke-direct {p0, v0, v1, v2}, Landroid/net/DummyDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "enabled"

    invoke-direct {p0, v0, v1, v2}, Landroid/net/DummyDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/DummyDataStateTracker;->setTeardownRequested(Z)V

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public releaseWakeLock()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public removeStackedLink(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 216
    iget-object v0, p0, Landroid/net/DummyDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->removeStackedLink(Landroid/net/LinkProperties;)Z

    .line 217
    return-void
.end method

.method public setDependencyMet(Z)V
    .locals 0
    .param p1, "met"    # Z

    .prologue
    .line 207
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 183
    return-void
.end method

.method public setRadio(Z)Z
    .locals 1
    .param p1, "turnOn"    # Z

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public setTeardownRequested(Z)V
    .locals 0
    .param p1, "isRequested"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Landroid/net/DummyDataStateTracker;->mTeardownRequested:Z

    .line 149
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 178
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 63
    iput-object p2, p0, Landroid/net/DummyDataStateTracker;->mTarget:Landroid/os/Handler;

    .line 64
    iput-object p1, p0, Landroid/net/DummyDataStateTracker;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method public supplyMessenger(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 222
    return-void
.end method

.method public teardown()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "disabled"

    invoke-direct {p0, v0, v1, v2}, Landroid/net/DummyDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "disabled"

    invoke-direct {p0, v0, v1, v2}, Landroid/net/DummyDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Dummy data state: none, dummy!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
