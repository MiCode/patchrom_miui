.class public Landroid/os/CommonClock;
.super Ljava/lang/Object;
.source "CommonClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CommonClock$TimelineChangedListener;,
        Landroid/os/CommonClock$OnServerDiedListener;,
        Landroid/os/CommonClock$OnTimelineChangedListener;
    }
.end annotation


# static fields
.field public static final ERROR_ESTIMATE_UNKNOWN:I = 0x7fffffff

.field public static final INVALID_TIMELINE_ID:J = 0x0L

.field private static final METHOD_CBK_ON_TIMELINE_CHANGED:I = 0x1

.field private static final METHOD_COMMON_TIME_TO_LOCAL_TIME:I = 0x2

.field private static final METHOD_GET_COMMON_FREQ:I = 0x5

.field private static final METHOD_GET_COMMON_TIME:I = 0x4

.field private static final METHOD_GET_ESTIMATED_ERROR:I = 0x8

.field private static final METHOD_GET_LOCAL_FREQ:I = 0x7

.field private static final METHOD_GET_LOCAL_TIME:I = 0x6

.field private static final METHOD_GET_MASTER_ADDRESS:I = 0xb

.field private static final METHOD_GET_STATE:I = 0xa

.field private static final METHOD_GET_TIMELINE_ID:I = 0x9

.field private static final METHOD_IS_COMMON_TIME_VALID:I = 0x1

.field private static final METHOD_LOCAL_TIME_TO_COMMON_TIME:I = 0x3

.field private static final METHOD_REGISTER_LISTENER:I = 0xc

.field private static final METHOD_UNREGISTER_LISTENER:I = 0xd

.field public static final SERVICE_NAME:Ljava/lang/String; = "common_time.clock"

.field public static final STATE_CLIENT:I = 0x1

.field public static final STATE_INITIAL:I = 0x0

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_MASTER:I = 0x2

.field public static final STATE_RONIN:I = 0x3

.field public static final STATE_WAIT_FOR_ELECTION:I = 0x4

.field public static final TIME_NOT_SYNCED:J = -0x1L


# instance fields
.field private mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

.field private mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mInterfaceDesc:Ljava/lang/String;

.field private final mListenerLock:Ljava/lang/Object;

.field private mRemote:Landroid/os/IBinder;

.field private mServerDiedListener:Landroid/os/CommonClock$OnServerDiedListener;

.field private mTimelineChangedListener:Landroid/os/CommonClock$OnTimelineChangedListener;

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

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/CommonClock;->mListenerLock:Ljava/lang/Object;

    .line 307
    iput-object v1, p0, Landroid/os/CommonClock;->mTimelineChangedListener:Landroid/os/CommonClock$OnTimelineChangedListener;

    .line 308
    iput-object v1, p0, Landroid/os/CommonClock;->mServerDiedListener:Landroid/os/CommonClock$OnServerDiedListener;

    .line 310
    iput-object v1, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    .line 311
    const-string v0, ""

    iput-object v0, p0, Landroid/os/CommonClock;->mInterfaceDesc:Ljava/lang/String;

    .line 314
    new-instance v0, Landroid/os/CommonClock$1;

    invoke-direct {v0, p0}, Landroid/os/CommonClock$1;-><init>(Landroid/os/CommonClock;)V

    iput-object v0, p0, Landroid/os/CommonClock;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 344
    iput-object v1, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    .line 122
    const-string v0, "common_time.clock"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    .line 123
    iget-object v0, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 126
    :cond_0
    iget-object v0, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/CommonClock;->mInterfaceDesc:Ljava/lang/String;

    .line 127
    new-instance v0, Landroid/os/CommonTimeUtils;

    iget-object v1, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/os/CommonClock;->mInterfaceDesc:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/os/CommonTimeUtils;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    .line 128
    iget-object v0, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/os/CommonClock;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 129
    invoke-direct {p0}, Landroid/os/CommonClock;->registerTimelineChangeListener()V

    .line 130
    return-void
.end method

.method static synthetic access$000(Landroid/os/CommonClock;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/os/CommonClock;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/os/CommonClock;->mListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnServerDiedListener;
    .locals 1
    .param p0, "x0"    # Landroid/os/CommonClock;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/os/CommonClock;->mServerDiedListener:Landroid/os/CommonClock$OnServerDiedListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnTimelineChangedListener;
    .locals 1
    .param p0, "x0"    # Landroid/os/CommonClock;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/os/CommonClock;->mTimelineChangedListener:Landroid/os/CommonClock$OnTimelineChangedListener;

    return-object v0
.end method

.method public static create()Landroid/os/CommonClock;
    .locals 2

    .prologue
    .line 139
    :try_start_0
    new-instance v1, Landroid/os/CommonClock;

    invoke-direct {v1}, Landroid/os/CommonClock;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .local v1, "retVal":Landroid/os/CommonClock;
    :goto_0
    return-object v1

    .line 141
    .end local v1    # "retVal":Landroid/os/CommonClock;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .restart local v1    # "retVal":Landroid/os/CommonClock;
    goto :goto_0
.end method

.method private registerTimelineChangeListener()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 347
    iget-object v5, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    if-eqz v5, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    const/4 v3, 0x0

    .line 351
    .local v3, "success":Z
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 352
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 353
    .local v2, "reply":Landroid/os/Parcel;
    new-instance v5, Landroid/os/CommonClock$TimelineChangedListener;

    invoke-direct {v5, p0, v8}, Landroid/os/CommonClock$TimelineChangedListener;-><init>(Landroid/os/CommonClock;Landroid/os/CommonClock$1;)V

    iput-object v5, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    .line 356
    :try_start_0
    iget-object v5, p0, Landroid/os/CommonClock;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 357
    iget-object v5, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 358
    iget-object v5, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v2, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 359
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x1

    .line 365
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 372
    :goto_2
    if-nez v3, :cond_0

    .line 373
    iput-object v8, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    .line 374
    iput-object v8, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    .line 375
    iput-object v8, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    goto :goto_0

    :cond_2
    move v3, v4

    .line 359
    goto :goto_1

    .line 361
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 365
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    .line 365
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method private throwOnDeadServer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    if-nez v0, :cond_1

    .line 303
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 304
    :cond_1
    return-void
.end method

.method private unregisterTimelineChangeListener()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 380
    iget-object v2, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    if-nez v2, :cond_0

    .line 397
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 384
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 387
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    iget-object v2, p0, Landroid/os/CommonClock;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 389
    iget-object v2, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 395
    iput-object v5, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    goto :goto_0

    .line 391
    :catch_0
    move-exception v2

    .line 393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 395
    iput-object v5, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 395
    iput-object v5, p0, Landroid/os/CommonClock;->mCallbackTgt:Landroid/os/CommonClock$TimelineChangedListener;

    throw v2
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
    .line 299
    invoke-virtual {p0}, Landroid/os/CommonClock;->release()V

    return-void
.end method

.method public getEstimatedError()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0}, Landroid/os/CommonClock;->throwOnDeadServer()V

    .line 199
    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0x8

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    move-result v0

    return v0
.end method

.method public getMasterAddr()Ljava/net/InetSocketAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/os/CommonClock;->throwOnDeadServer()V

    .line 240
    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/CommonTimeUtils;->transactGetSockaddr(I)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-direct {p0}, Landroid/os/CommonClock;->throwOnDeadServer()V

    .line 227
    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0xa

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/CommonTimeUtils;->transactGetInt(II)I

    move-result v0

    return v0
.end method

.method public getTime()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-direct {p0}, Landroid/os/CommonClock;->throwOnDeadServer()V

    .line 180
    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    const/4 v1, 0x4

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/CommonTimeUtils;->transactGetLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimelineId()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0}, Landroid/os/CommonClock;->throwOnDeadServer()V

    .line 213
    iget-object v0, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    const/16 v1, 0x9

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/CommonTimeUtils;->transactGetLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    invoke-direct {p0}, Landroid/os/CommonClock;->unregisterTimelineChangeListener()V

    .line 159
    iget-object v0, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    iget-object v0, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/os/CommonClock;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    iput-object v3, p0, Landroid/os/CommonClock;->mRemote:Landroid/os/IBinder;

    .line 166
    :cond_0
    iput-object v3, p0, Landroid/os/CommonClock;->mUtils:Landroid/os/CommonTimeUtils;

    .line 167
    return-void

    .line 163
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setServerDiedListener(Landroid/os/CommonClock$OnServerDiedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/CommonClock$OnServerDiedListener;

    .prologue
    .line 294
    iget-object v1, p0, Landroid/os/CommonClock;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_0
    iput-object p1, p0, Landroid/os/CommonClock;->mServerDiedListener:Landroid/os/CommonClock$OnServerDiedListener;

    .line 296
    monitor-exit v1

    .line 297
    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimelineChangedListener(Landroid/os/CommonClock$OnTimelineChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/CommonClock$OnTimelineChangedListener;

    .prologue
    .line 266
    iget-object v1, p0, Landroid/os/CommonClock;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_0
    iput-object p1, p0, Landroid/os/CommonClock;->mTimelineChangedListener:Landroid/os/CommonClock$OnTimelineChangedListener;

    .line 268
    monitor-exit v1

    .line 269
    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
