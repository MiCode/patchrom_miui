.class public Landroid/filterpacks/performance/ThroughputFilter;
.super Landroid/filterfw/core/Filter;
.source "ThroughputFilter.java"


# instance fields
.field private mLastTime:J

.field private mOutputFormat:Landroid/filterfw/core/FrameFormat;

.field private mPeriod:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "period"
    .end annotation
.end field

.field private mPeriodFrameCount:I

.field private mTotalFrameCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x5

    iput v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriod:I

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    .line 38
    iput v2, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    .line 39
    iput v2, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    .line 45
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 60
    return-object p2
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v0, 0x0

    .line 65
    iput v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    .line 66
    iput v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    .line 68
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 11
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 73
    const-string v7, "frame"

    invoke-virtual {p0, v7}, Landroid/filterpacks/performance/ThroughputFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 74
    .local v2, "input":Landroid/filterfw/core/Frame;
    const-string v7, "frame"

    invoke-virtual {p0, v7, v2}, Landroid/filterpacks/performance/ThroughputFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 77
    iget v7, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    .line 78
    iget v7, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    .line 81
    iget-wide v7, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    .line 84
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 87
    .local v0, "curTime":J
    iget-wide v7, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    sub-long v7, v0, v7

    iget v9, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriod:I

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_1

    .line 88
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    .line 89
    .local v3, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v8

    mul-int v4, v7, v8

    .line 90
    .local v4, "pixelCount":I
    new-instance v5, Landroid/filterpacks/performance/Throughput;

    iget v7, p0, Landroid/filterpacks/performance/ThroughputFilter;->mTotalFrameCount:I

    iget v8, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    iget v9, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriod:I

    invoke-direct {v5, v7, v8, v9, v4}, Landroid/filterpacks/performance/Throughput;-><init>(IIII)V

    .line 94
    .local v5, "throughput":Landroid/filterpacks/performance/Throughput;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    iget-object v8, p0, Landroid/filterpacks/performance/ThroughputFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v7, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    .line 95
    .local v6, "throughputFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v6, v5}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    .line 96
    const-string/jumbo v7, "throughput"

    invoke-virtual {p0, v7, v6}, Landroid/filterpacks/performance/ThroughputFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 97
    iput-wide v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mLastTime:J

    .line 98
    const/4 v7, 0x0

    iput v7, p0, Landroid/filterpacks/performance/ThroughputFilter;->mPeriodFrameCount:I

    .line 100
    .end local v3    # "inputFormat":Landroid/filterfw/core/FrameFormat;
    .end local v4    # "pixelCount":I
    .end local v5    # "throughput":Landroid/filterpacks/performance/Throughput;
    .end local v6    # "throughputFrame":Landroid/filterfw/core/Frame;
    :cond_1
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/performance/ThroughputFilter;->addInputPort(Ljava/lang/String;)V

    .line 53
    const-class v0, Landroid/filterpacks/performance/Throughput;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/performance/ThroughputFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    .line 54
    const-string v0, "frame"

    const-string v1, "frame"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/performance/ThroughputFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v0, "throughput"

    iget-object v1, p0, Landroid/filterpacks/performance/ThroughputFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/performance/ThroughputFilter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 56
    return-void
.end method
