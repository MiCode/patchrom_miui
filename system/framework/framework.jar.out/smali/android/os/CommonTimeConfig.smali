.class public Landroid/os/CommonTimeConfig;
.super Ljava/lang/Object;
.source "CommonTimeConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CommonTimeConfig$OnServerDiedListener;
    }
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x4

.field public static final ERROR_DEAD_OBJECT:I = -0x7

.field public static final INVALID_GROUP_ID:J = -0x1L

.field private static final METHOD_FORCE_NETWORKLESS_MASTER_MODE:I = 0x11

.field private static final METHOD_GET_AUTO_DISABLE:I = 0xf

.field private static final METHOD_GET_CLIENT_SYNC_INTERVAL:I = 0xb

.field private static final METHOD_GET_INTERFACE_BINDING:I = 0x7

.field private static final METHOD_GET_MASTER_ANNOUNCE_INTERVAL:I = 0x9

.field private static final METHOD_GET_MASTER_ELECTION_ENDPOINT:I = 0x3

.field private static final METHOD_GET_MASTER_ELECTION_GROUP_ID:I = 0x5

.field private static final METHOD_GET_MASTER_ELECTION_PRIORITY:I = 0x1

.field private static final METHOD_GET_PANIC_THRESHOLD:I = 0xd

.field private static final METHOD_SET_AUTO_DISABLE:I = 0x10

.field private static final METHOD_SET_CLIENT_SYNC_INTERVAL:I = 0xc

.field private static final METHOD_SET_INTERFACE_BINDING:I = 0x8

.field private static final METHOD_SET_MASTER_ANNOUNCE_INTERVAL:I = 0xa

.field private static final METHOD_SET_MASTER_ELECTION_ENDPOINT:I = 0x4

.field private static final METHOD_SET_MASTER_ELECTION_GROUP_ID:I = 0x6

.field private static final METHOD_SET_MASTER_ELECTION_PRIORITY:I = 0x2

.field private static final METHOD_SET_PANIC_THRESHOLD:I = 0xe

.field public static final SERVICE_NAME:Ljava/lang/String; = "common_time.config"

.field public static final SUCCESS:I


# instance fields
.field private mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mInterfaceDesc:Ljava/lang/String;

.field private final mListenerLock:Ljava/lang/Object;

.field private mRemote:Landroid/os/IBinder;

.field private mServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

.field private mUtils:Landroid/os/CommonTimeUtils;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mListenerLock:Ljava/lang/Object;

    .line 416
    iput-object v1, p0, Landroid/os/CommonTimeConfig;->mServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    .line 418
    iput-object v1, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    .line 419
    const-string v0, ""

    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mInterfaceDesc:Ljava/lang/String;

    .line 422
    new-instance v0, Landroid/os/CommonTimeConfig$1;

    invoke-direct {v0, p0}, Landroid/os/CommonTimeConfig$1;-><init>(Landroid/os/CommonTimeConfig;)V

    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 66
    const-string v0, "common_time.config"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    .line 67
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 70
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mInterfaceDesc:Ljava/lang/String;

    .line 71
    new-instance v0, Landroid/os/CommonTimeUtils;

    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/os/CommonTimeConfig;->mInterfaceDesc:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/os/CommonTimeUtils;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 72
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Landroid/os/CommonTimeConfig;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/os/CommonTimeConfig;

    .prologue
    .line 31
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/CommonTimeConfig;)Landroid/os/CommonTimeConfig$OnServerDiedListener;
    .locals 1
    .param p0, "x0"    # Landroid/os/CommonTimeConfig;

    .prologue
    .line 31
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    return-object v0
.end method

.method private checkDeadServer()Z
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create()Landroid/os/CommonTimeConfig;
    .locals 2

    .prologue
    .line 82
    :try_start_0
    new-instance v1, Landroid/os/CommonTimeConfig;

    invoke-direct {v1}, Landroid/os/CommonTimeConfig;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .local v1, "retVal":Landroid/os/CommonTimeConfig;
    :goto_0
    return-object v1

    .line 84
    .end local v1    # "retVal":Landroid/os/CommonTimeConfig;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .restart local v1    # "retVal":Landroid/os/CommonTimeConfig;
    goto :goto_0
.end method

.method private throwOnDeadServer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 413
    :cond_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p0}, Landroid/os/CommonTimeConfig;->release()V

    return-void
.end method

.method public forceNetworklessMasterMode()I
    .locals 6

    .prologue
    .line 360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 361
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 364
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    iget-object v3, p0, Landroid/os/CommonTimeConfig;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 365
    iget-object v3, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 367
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 373
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :goto_0
    return v3

    .line 369
    :catch_0
    move-exception v1

    .line 370
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, -0x7

    .line 373
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 373
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getAutoDisable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 322
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 323
    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClientSyncInterval()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 267
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0xb

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    move-result v0

    return v0
.end method

.method public getInterfaceBinding()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 204
    iget-object v2, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/os/CommonTimeUtils;->transactGetString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "ifaceName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 209
    .end local v0    # "ifaceName":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getMasterAnnounceInterval()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 240
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0x9

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    move-result v0

    return v0
.end method

.method public getMasterElectionEndpoint()Ljava/net/InetSocketAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 148
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/CommonTimeUtils;->transactGetSockaddr(I)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMasterElectionGroupId()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 176
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v1, 0x5

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/CommonTimeUtils;->transactGetLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMasterElectionPriority()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 121
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public getPanicThreshold()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->throwOnDeadServer()V

    .line 295
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 103
    :try_start_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    iput-object v3, p0, Landroid/os/CommonTimeConfig;->mRemote:Landroid/os/IBinder;

    .line 108
    :cond_0
    iput-object v3, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    .line 109
    return-void

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAutoDisable(Z)I
    .locals 3
    .param p1, "autoDisable"    # Z

    .prologue
    .line 338
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const/4 v0, -0x7

    .line 341
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v2, 0x10

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setClientSyncInterval(I)I
    .locals 2
    .param p1, "interval"    # I

    .prologue
    .line 279
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const/4 v0, -0x7

    .line 281
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    move-result v0

    goto :goto_0
.end method

.method public setMasterAnnounceInterval(I)I
    .locals 2
    .param p1, "interval"    # I

    .prologue
    .line 252
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, -0x7

    .line 254
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    move-result v0

    goto :goto_0
.end method

.method public setMasterElectionEndpoint(Ljava/net/InetSocketAddress;)I
    .locals 2
    .param p1, "ep"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 162
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, -0x7

    .line 164
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetSockaddr(ILjava/net/InetSocketAddress;)I

    move-result v0

    goto :goto_0
.end method

.method public setMasterElectionGroupId(J)I
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 187
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const/4 v0, -0x7

    .line 189
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/CommonTimeUtils;->transactSetLong(IJ)I

    move-result v0

    goto :goto_0
.end method

.method public setMasterElectionPriority(B)I
    .locals 2
    .param p1, "priority"    # B

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, -0x7

    .line 135
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    move-result v0

    goto :goto_0
.end method

.method public setNetworkBinding(Ljava/lang/String;)I
    .locals 2
    .param p1, "ifaceName"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, -0x7

    .line 226
    .end local p1    # "ifaceName":Ljava/lang/String;
    :goto_0
    return v0

    .restart local p1    # "ifaceName":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0x8

    if-nez p1, :cond_1

    const-string p1, ""

    .end local p1    # "ifaceName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetString(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public setPanicThreshold(I)I
    .locals 2
    .param p1, "threshold"    # I

    .prologue
    .line 309
    invoke-direct {p0}, Landroid/os/CommonTimeConfig;->checkDeadServer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const/4 v0, -0x7

    .line 311
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/os/CommonTimeConfig;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/CommonTimeUtils;->transactSetInt(II)I

    move-result v0

    goto :goto_0
.end method

.method public setServerDiedListener(Landroid/os/CommonTimeConfig$OnServerDiedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/CommonTimeConfig$OnServerDiedListener;

    .prologue
    .line 399
    iget-object v1, p0, Landroid/os/CommonTimeConfig;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 400
    :try_start_0
    iput-object p1, p0, Landroid/os/CommonTimeConfig;->mServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    .line 401
    monitor-exit v1

    .line 402
    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
