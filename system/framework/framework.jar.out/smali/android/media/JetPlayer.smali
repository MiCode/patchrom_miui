.class public Landroid/media/JetPlayer;
.super Ljava/lang/Object;
.source "JetPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/JetPlayer$OnJetEventListener;,
        Landroid/media/JetPlayer$NativeEventHandler;
    }
.end annotation


# static fields
.field private static final JET_EVENT:I = 0x1

.field private static final JET_EVENT_CHAN_MASK:I = 0x3c000

.field private static final JET_EVENT_CHAN_SHIFT:I = 0xe

.field private static final JET_EVENT_CTRL_MASK:I = 0x3f80

.field private static final JET_EVENT_CTRL_SHIFT:I = 0x7

.field private static final JET_EVENT_SEG_MASK:I = -0x1000000

.field private static final JET_EVENT_SEG_SHIFT:I = 0x18

.field private static final JET_EVENT_TRACK_MASK:I = 0xfc0000

.field private static final JET_EVENT_TRACK_SHIFT:I = 0x12

.field private static final JET_EVENT_VAL_MASK:I = 0x7f

.field private static final JET_NUMQUEUEDSEGMENT_UPDATE:I = 0x3

.field private static final JET_OUTPUT_CHANNEL_CONFIG:I = 0xc

.field private static final JET_OUTPUT_RATE:I = 0x5622

.field private static final JET_PAUSE_UPDATE:I = 0x4

.field private static final JET_USERID_UPDATE:I = 0x2

.field private static MAXTRACKS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "JetPlayer-J"

.field private static singletonRef:Landroid/media/JetPlayer;


# instance fields
.field private mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

.field private final mEventListenerLock:Ljava/lang/Object;

.field private mInitializationLooper:Landroid/os/Looper;

.field private mJetEventListener:Landroid/media/JetPlayer$OnJetEventListener;

.field private mNativePlayerInJavaObj:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x20

    sput v0, Landroid/media/JetPlayer;->MAXTRACKS:I

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object v2, p0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    .line 111
    iput-object v2, p0, Landroid/media/JetPlayer;->mInitializationLooper:Landroid/os/Looper;

    .line 116
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/JetPlayer;->mEventListenerLock:Ljava/lang/Object;

    .line 118
    iput-object v2, p0, Landroid/media/JetPlayer;->mJetEventListener:Landroid/media/JetPlayer$OnJetEventListener;

    .line 160
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/media/JetPlayer;->mInitializationLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 161
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/media/JetPlayer;->mInitializationLooper:Landroid/os/Looper;

    .line 164
    :cond_0
    const/16 v1, 0x5622

    const/16 v2, 0xc

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    .line 167
    .local v0, "buffSizeInBytes":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    .line 170
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Landroid/media/JetPlayer;->getMaxTracks()I

    move-result v2

    const/16 v3, 0x4b0

    div-int/lit8 v4, v0, 0x4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/media/JetPlayer;->native_setup(Ljava/lang/Object;II)Z

    .line 176
    :cond_1
    return-void
.end method

.method static synthetic access$000(Landroid/media/JetPlayer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/JetPlayer;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/media/JetPlayer;->mEventListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/JetPlayer;)Landroid/media/JetPlayer$OnJetEventListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/JetPlayer;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/media/JetPlayer;->mJetEventListener:Landroid/media/JetPlayer$OnJetEventListener;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p0}, Landroid/media/JetPlayer;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static getJetPlayer()Landroid/media/JetPlayer;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Landroid/media/JetPlayer;->singletonRef:Landroid/media/JetPlayer;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Landroid/media/JetPlayer;

    invoke-direct {v0}, Landroid/media/JetPlayer;-><init>()V

    sput-object v0, Landroid/media/JetPlayer;->singletonRef:Landroid/media/JetPlayer;

    .line 144
    :cond_0
    sget-object v0, Landroid/media/JetPlayer;->singletonRef:Landroid/media/JetPlayer;

    return-object v0
.end method

.method public static getMaxTracks()I
    .locals 1

    .prologue
    .line 202
    sget v0, Landroid/media/JetPlayer;->MAXTRACKS:I

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 581
    const-string v0, "JetPlayer-J"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ android.media.JetPlayer ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 585
    const-string v0, "JetPlayer-J"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ android.media.JetPlayer ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-void
.end method

.method private final native native_clearQueue()Z
.end method

.method private final native native_closeJetFile()Z
.end method

.method private final native native_finalize()V
.end method

.method private final native native_loadJetFromFile(Ljava/lang/String;)Z
.end method

.method private final native native_loadJetFromFileD(Ljava/io/FileDescriptor;JJ)Z
.end method

.method private final native native_pauseJet()Z
.end method

.method private final native native_playJet()Z
.end method

.method private final native native_queueJetSegment(IIIIIB)Z
.end method

.method private final native native_queueJetSegmentMuteArray(IIII[ZB)Z
.end method

.method private final native native_release()V
.end method

.method private final native native_setMuteArray([ZZ)Z
.end method

.method private final native native_setMuteFlag(IZZ)Z
.end method

.method private final native native_setMuteFlags(IZ)Z
.end method

.method private final native native_setup(Ljava/lang/Object;II)Z
.end method

.method private final native native_triggerClip(I)Z
.end method

.method private static postEventFromNative(Ljava/lang/Object;III)V
    .locals 4
    .param p0, "jetplayer_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 564
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "jetplayer_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/JetPlayer;

    .line 566
    .local v0, "jet":Landroid/media/JetPlayer;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    if-eqz v2, :cond_0

    .line 567
    iget-object v2, v0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, p3, v3}, Landroid/media/JetPlayer$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 569
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    invoke-virtual {v2, v1}, Landroid/media/JetPlayer$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 572
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearQueue()Z
    .locals 1

    .prologue
    .line 389
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_clearQueue()Z

    move-result v0

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public closeJetFile()Z
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_closeJetFile()Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_finalize()V

    .line 181
    return-void
.end method

.method public loadJetFile(Landroid/content/res/AssetFileDescriptor;)Z
    .locals 6
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 226
    .local v4, "len":J
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gez v0, :cond_0

    .line 227
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "no length for fd"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/JetPlayer;->native_loadJetFromFileD(Ljava/io/FileDescriptor;JJ)Z

    move-result v0

    return v0
.end method

.method public loadJetFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-direct {p0, p1}, Landroid/media/JetPlayer;->native_loadJetFromFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public pause()Z
    .locals 1

    .prologue
    .line 256
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_pauseJet()Z

    move-result v0

    return v0
.end method

.method public play()Z
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_playJet()Z

    move-result v0

    return v0
.end method

.method public queueJetSegment(IIIIIB)Z
    .locals 1
    .param p1, "segmentNum"    # I
    .param p2, "libNum"    # I
    .param p3, "repeatCount"    # I
    .param p4, "transpose"    # I
    .param p5, "muteFlags"    # I
    .param p6, "userID"    # B

    .prologue
    .line 283
    invoke-direct/range {p0 .. p6}, Landroid/media/JetPlayer;->native_queueJetSegment(IIIIIB)Z

    move-result v0

    return v0
.end method

.method public queueJetSegmentMuteArray(IIII[ZB)Z
    .locals 2
    .param p1, "segmentNum"    # I
    .param p2, "libNum"    # I
    .param p3, "repeatCount"    # I
    .param p4, "transpose"    # I
    .param p5, "muteArray"    # [Z
    .param p6, "userID"    # B

    .prologue
    .line 312
    array-length v0, p5

    invoke-static {}, Landroid/media/JetPlayer;->getMaxTracks()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 313
    const/4 v0, 0x0

    .line 315
    :goto_0
    return v0

    :cond_0
    invoke-direct/range {p0 .. p6}, Landroid/media/JetPlayer;->native_queueJetSegmentMuteArray(IIII[ZB)Z

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_release()V

    .line 191
    const/4 v0, 0x0

    sput-object v0, Landroid/media/JetPlayer;->singletonRef:Landroid/media/JetPlayer;

    .line 192
    return-void
.end method

.method public setEventListener(Landroid/media/JetPlayer$OnJetEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/JetPlayer$OnJetEventListener;

    .prologue
    .line 461
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/JetPlayer;->setEventListener(Landroid/media/JetPlayer$OnJetEventListener;Landroid/os/Handler;)V

    .line 462
    return-void
.end method

.method public setEventListener(Landroid/media/JetPlayer$OnJetEventListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/JetPlayer$OnJetEventListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 473
    iget-object v1, p0, Landroid/media/JetPlayer;->mEventListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    :try_start_0
    iput-object p1, p0, Landroid/media/JetPlayer;->mJetEventListener:Landroid/media/JetPlayer$OnJetEventListener;

    .line 477
    if-eqz p1, :cond_1

    .line 478
    if-eqz p2, :cond_0

    .line 479
    new-instance v0, Landroid/media/JetPlayer$NativeEventHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, p0, v2}, Landroid/media/JetPlayer$NativeEventHandler;-><init>(Landroid/media/JetPlayer;Landroid/media/JetPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    .line 488
    :goto_0
    monitor-exit v1

    .line 489
    return-void

    .line 482
    :cond_0
    new-instance v0, Landroid/media/JetPlayer$NativeEventHandler;

    iget-object v2, p0, Landroid/media/JetPlayer;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/JetPlayer$NativeEventHandler;-><init>(Landroid/media/JetPlayer;Landroid/media/JetPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    goto :goto_0

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 485
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setMuteArray([ZZ)Z
    .locals 2
    .param p1, "muteArray"    # [Z
    .param p2, "sync"    # Z

    .prologue
    .line 347
    array-length v0, p1

    invoke-static {}, Landroid/media/JetPlayer;->getMaxTracks()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 348
    const/4 v0, 0x0

    .line 349
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/media/JetPlayer;->native_setMuteArray([ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public setMuteFlag(IZZ)Z
    .locals 1
    .param p1, "trackId"    # I
    .param p2, "muteFlag"    # Z
    .param p3, "sync"    # Z

    .prologue
    .line 364
    invoke-direct {p0, p1, p2, p3}, Landroid/media/JetPlayer;->native_setMuteFlag(IZZ)Z

    move-result v0

    return v0
.end method

.method public setMuteFlags(IZ)Z
    .locals 1
    .param p1, "muteFlags"    # I
    .param p2, "sync"    # Z

    .prologue
    .line 331
    invoke-direct {p0, p1, p2}, Landroid/media/JetPlayer;->native_setMuteFlags(IZ)Z

    move-result v0

    return v0
.end method

.method public triggerClip(I)Z
    .locals 1
    .param p1, "clipId"    # I

    .prologue
    .line 380
    invoke-direct {p0, p1}, Landroid/media/JetPlayer;->native_triggerClip(I)Z

    move-result v0

    return v0
.end method
