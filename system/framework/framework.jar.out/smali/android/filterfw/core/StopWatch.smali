.class Landroid/filterfw/core/StopWatch;
.super Ljava/lang/Object;
.source "StopWatchMap.java"


# instance fields
.field private STOP_WATCH_LOGGING_PERIOD:I

.field private TAG:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNumCalls:I

.field private mStartTime:J

.field private mTotalTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0xc8

    iput v0, p0, Landroid/filterfw/core/StopWatch;->STOP_WATCH_LOGGING_PERIOD:I

    .line 29
    const-string v0, "MFF"

    iput-object v0, p0, Landroid/filterfw/core/StopWatch;->TAG:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Landroid/filterfw/core/StopWatch;->mName:Ljava/lang/String;

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    .line 41
    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .prologue
    .line 44
    iget-wide v0, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Calling start with StopWatch already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    .line 49
    return-void
.end method

.method public stop()V
    .locals 9

    .prologue
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    .line 52
    iget-wide v2, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    .line 53
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Calling stop with StopWatch already stopped"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 57
    .local v0, "stopTime":J
    iget-wide v2, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    iget-wide v4, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    .line 58
    iget v2, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    .line 59
    iput-wide v6, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    .line 60
    iget v2, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    iget v3, p0, Landroid/filterfw/core/StopWatch;->STOP_WATCH_LOGGING_PERIOD:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_1

    .line 61
    iget-object v2, p0, Landroid/filterfw/core/StopWatch;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AVG ms/call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/filterfw/core/StopWatch;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    long-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    iget v7, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    .line 64
    iput v8, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    .line 66
    :cond_1
    return-void
.end method
