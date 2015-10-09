.class public abstract Landroid/util/TimedRemoteCaller;
.super Ljava/lang/Object;
.source "TimedRemoteCaller.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CALL_TIMEOUT_MILLIS:J = 0x1388L

.field private static final UNDEFINED_SEQUENCE:I = -0x1


# instance fields
.field private mAwaitedSequence:I

.field private final mCallTimeoutMillis:J

.field private final mLock:Ljava/lang/Object;

.field private mReceivedSequence:I

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mSequenceCounter:I


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .param p1, "callTimeoutMillis"    # J

    .prologue
    .local p0, "this":Landroid/util/TimedRemoteCaller;, "Landroid/util/TimedRemoteCaller<TT;>;"
    const/4 v1, -0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    .line 77
    iput v1, p0, Landroid/util/TimedRemoteCaller;->mReceivedSequence:I

    .line 79
    iput v1, p0, Landroid/util/TimedRemoteCaller;->mAwaitedSequence:I

    .line 84
    iput-wide p1, p0, Landroid/util/TimedRemoteCaller;->mCallTimeoutMillis:J

    .line 85
    return-void
.end method

.method private waitForResultTimedLocked(I)Z
    .locals 8
    .param p1, "sequence"    # I

    .prologue
    .line 117
    .local p0, "this":Landroid/util/TimedRemoteCaller;, "Landroid/util/TimedRemoteCaller<TT;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 120
    .local v2, "startMillis":J
    :goto_0
    :try_start_0
    iget v6, p0, Landroid/util/TimedRemoteCaller;->mReceivedSequence:I

    if-ne v6, p1, :cond_0

    .line 121
    const/4 v6, 0x1

    .line 126
    :goto_1
    return v6

    .line 123
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v2

    .line 124
    .local v0, "elapsedMillis":J
    iget-wide v6, p0, Landroid/util/TimedRemoteCaller;->mCallTimeoutMillis:J

    sub-long v4, v6, v0

    .line 125
    .local v4, "waitMillis":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1

    .line 126
    const/4 v6, 0x0

    goto :goto_1

    .line 128
    :cond_1
    iget-object v6, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    invoke-virtual {v6, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v0    # "elapsedMillis":J
    .end local v4    # "waitMillis":J
    :catch_0
    move-exception v6

    goto :goto_0
.end method


# virtual methods
.method public final getResultTimed(I)Ljava/lang/Object;
    .locals 6
    .param p1, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Landroid/util/TimedRemoteCaller;, "Landroid/util/TimedRemoteCaller<TT;>;"
    iget-object v3, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 96
    :try_start_0
    invoke-direct {p0, p1}, Landroid/util/TimedRemoteCaller;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 97
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 98
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No reponse for sequence: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    .end local v1    # "success":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 100
    .restart local v1    # "success":Z
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/util/TimedRemoteCaller;->mResult:Ljava/lang/Object;

    .line 101
    .local v0, "result":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/util/TimedRemoteCaller;->mResult:Ljava/lang/Object;

    .line 102
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public final onBeforeRemoteCall()I
    .locals 3

    .prologue
    .line 88
    .local p0, "this":Landroid/util/TimedRemoteCaller;, "Landroid/util/TimedRemoteCaller<TT;>;"
    iget-object v1, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    iget v0, p0, Landroid/util/TimedRemoteCaller;->mSequenceCounter:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/util/TimedRemoteCaller;->mSequenceCounter:I

    iput v0, p0, Landroid/util/TimedRemoteCaller;->mAwaitedSequence:I

    .line 90
    iget v0, p0, Landroid/util/TimedRemoteCaller;->mAwaitedSequence:I

    monitor-exit v1

    return v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onRemoteMethodResult(Ljava/lang/Object;I)V
    .locals 2
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Landroid/util/TimedRemoteCaller;, "Landroid/util/TimedRemoteCaller<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    iget v0, p0, Landroid/util/TimedRemoteCaller;->mAwaitedSequence:I

    if-ne p2, v0, :cond_0

    .line 109
    iput p2, p0, Landroid/util/TimedRemoteCaller;->mReceivedSequence:I

    .line 110
    iput-object p1, p0, Landroid/util/TimedRemoteCaller;->mResult:Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 113
    :cond_0
    monitor-exit v1

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
