.class public Landroid/media/AsyncPlayer;
.super Ljava/lang/Object;
.source "AsyncPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AsyncPlayer$1;,
        Landroid/media/AsyncPlayer$Thread;,
        Landroid/media/AsyncPlayer$Command;
    }
.end annotation


# static fields
.field private static final PLAY:I = 0x1

.field private static final STOP:I = 0x2

.field private static final mDebug:Z


# instance fields
.field private final mCmdQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/media/AsyncPlayer$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mState:I

.field private mTag:Ljava/lang/String;

.field private mThread:Landroid/media/AsyncPlayer$Thread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    .line 137
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AsyncPlayer;->mState:I

    .line 145
    if-eqz p1, :cond_0

    .line 146
    iput-object p1, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string v0, "AsyncPlayer"

    iput-object v0, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/media/AsyncPlayer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/AsyncPlayer;

    .prologue
    .line 33
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/AsyncPlayer;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Landroid/media/AsyncPlayer;

    .prologue
    .line 33
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Command;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AsyncPlayer;
    .param p1, "x1"    # Landroid/media/AsyncPlayer$Command;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/media/AsyncPlayer;->startSound(Landroid/media/AsyncPlayer$Command;)V

    return-void
.end method

.method static synthetic access$300(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Landroid/media/AsyncPlayer;

    .prologue
    .line 33
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$302(Landroid/media/AsyncPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Landroid/media/AsyncPlayer;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 33
    iput-object p1, p0, Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$402(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Thread;)Landroid/media/AsyncPlayer$Thread;
    .locals 0
    .param p0, "x0"    # Landroid/media/AsyncPlayer;
    .param p1, "x1"    # Landroid/media/AsyncPlayer$Thread;

    .prologue
    .line 33
    iput-object p1, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    return-object p1
.end method

.method static synthetic access$500(Landroid/media/AsyncPlayer;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AsyncPlayer;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/media/AsyncPlayer;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 234
    :cond_0
    return-void
.end method

.method private enqueueLocked(Landroid/media/AsyncPlayer$Command;)V
    .locals 1
    .param p1, "cmd"    # Landroid/media/AsyncPlayer$Command;

    .prologue
    .line 198
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0}, Landroid/media/AsyncPlayer;->acquireWakeLock()V

    .line 201
    new-instance v0, Landroid/media/AsyncPlayer$Thread;

    invoke-direct {v0, p0}, Landroid/media/AsyncPlayer$Thread;-><init>(Landroid/media/AsyncPlayer;)V

    iput-object v0, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    .line 202
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    invoke-virtual {v0}, Landroid/media/AsyncPlayer$Thread;->start()V

    .line 204
    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 240
    :cond_0
    return-void
.end method

.method private startSound(Landroid/media/AsyncPlayer$Command;)V
    .locals 8
    .param p1, "cmd"    # Landroid/media/AsyncPlayer$Command;

    .prologue
    .line 60
    :try_start_0
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 61
    .local v3, "player":Landroid/media/MediaPlayer;
    iget v4, p1, Landroid/media/AsyncPlayer$Command;->stream:I

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 62
    iget-object v4, p1, Landroid/media/AsyncPlayer$Command;->context:Landroid/content/Context;

    iget-object v5, p1, Landroid/media/AsyncPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 63
    iget-boolean v4, p1, Landroid/media/AsyncPlayer$Command;->looping:Z

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 64
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 65
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 66
    iget-object v4, p0, Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_0

    .line 67
    iget-object v4, p0, Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 69
    :cond_0
    iput-object v3, p0, Landroid/media/AsyncPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p1, Landroid/media/AsyncPlayer$Command;->requestTime:J

    sub-long v0, v4, v6

    .line 71
    .local v0, "delay":J
    const-wide/16 v4, 0x3e8

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 72
    iget-object v4, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notification sound delayed by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "msecs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "delay":J
    .end local v3    # "player":Landroid/media/MediaPlayer;
    :cond_1
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error loading sound for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/media/AsyncPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public play(Landroid/content/Context;Landroid/net/Uri;ZI)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "looping"    # Z
    .param p4, "stream"    # I

    .prologue
    const/4 v3, 0x1

    .line 166
    new-instance v0, Landroid/media/AsyncPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/AsyncPlayer$Command;-><init>(Landroid/media/AsyncPlayer$1;)V

    .line 167
    .local v0, "cmd":Landroid/media/AsyncPlayer$Command;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/media/AsyncPlayer$Command;->requestTime:J

    .line 168
    iput v3, v0, Landroid/media/AsyncPlayer$Command;->code:I

    .line 169
    iput-object p1, v0, Landroid/media/AsyncPlayer$Command;->context:Landroid/content/Context;

    .line 170
    iput-object p2, v0, Landroid/media/AsyncPlayer$Command;->uri:Landroid/net/Uri;

    .line 171
    iput-boolean p3, v0, Landroid/media/AsyncPlayer$Command;->looping:Z

    .line 172
    iput p4, v0, Landroid/media/AsyncPlayer$Command;->stream:I

    .line 173
    iget-object v2, p0, Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 174
    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/AsyncPlayer;->enqueueLocked(Landroid/media/AsyncPlayer$Command;)V

    .line 175
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AsyncPlayer;->mState:I

    .line 176
    monitor-exit v2

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUsesWakeLock(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    iget-object v1, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    if-eqz v1, :cond_1

    .line 223
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assertion failed mWakeLock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mThread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AsyncPlayer;->mThread:Landroid/media/AsyncPlayer$Thread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_1
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 227
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/media/AsyncPlayer;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AsyncPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 228
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 184
    iget-object v2, p0, Landroid/media/AsyncPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 187
    :try_start_0
    iget v1, p0, Landroid/media/AsyncPlayer;->mState:I

    if-eq v1, v3, :cond_0

    .line 188
    new-instance v0, Landroid/media/AsyncPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/AsyncPlayer$Command;-><init>(Landroid/media/AsyncPlayer$1;)V

    .line 189
    .local v0, "cmd":Landroid/media/AsyncPlayer$Command;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Landroid/media/AsyncPlayer$Command;->requestTime:J

    .line 190
    const/4 v1, 0x2

    iput v1, v0, Landroid/media/AsyncPlayer$Command;->code:I

    .line 191
    invoke-direct {p0, v0}, Landroid/media/AsyncPlayer;->enqueueLocked(Landroid/media/AsyncPlayer$Command;)V

    .line 192
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AsyncPlayer;->mState:I

    .line 194
    .end local v0    # "cmd":Landroid/media/AsyncPlayer$Command;
    :cond_0
    monitor-exit v2

    .line 195
    return-void

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
