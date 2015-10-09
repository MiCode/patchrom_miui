.class public Landroid/filterpacks/base/ObjectSource;
.super Landroid/filterfw/core/Filter;
.source "ObjectSource.java"


# instance fields
.field private mFrame:Landroid/filterfw/core/Frame;

.field private mObject:Ljava/lang/Object;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "object"
    .end annotation
.end field

.field private mOutputFormat:Landroid/filterfw/core/FrameFormat;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "format"
    .end annotation
.end field

.field mRepeatFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "repeatFrame"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Landroid/filterfw/core/FrameFormat;->unspecified()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/base/ObjectSource;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/base/ObjectSource;->mRepeatFrame:Z

    .line 49
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 86
    const-string/jumbo v0, "object"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    .line 92
    :cond_0
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 59
    iget-object v1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    if-nez v1, :cond_1

    .line 60
    iget-object v1, p0, Landroid/filterpacks/base/ObjectSource;->mObject:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ObjectSource producing frame with no object set!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_0
    iget-object v1, p0, Landroid/filterpacks/base/ObjectSource;->mObject:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/filterfw/format/ObjectFormat;->fromObject(Ljava/lang/Object;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 64
    .local v0, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v1

    iput-object v1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    .line 65
    iget-object v1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    iget-object v2, p0, Landroid/filterpacks/base/ObjectSource;->mObject:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    .line 66
    iget-object v1, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 70
    .end local v0    # "outputFormat":Landroid/filterfw/core/FrameFormat;
    :cond_1
    const-string v1, "frame"

    iget-object v2, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {p0, v1, v2}, Landroid/filterpacks/base/ObjectSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 73
    iget-boolean v1, p0, Landroid/filterpacks/base/ObjectSource;->mRepeatFrame:Z

    if-nez v1, :cond_2

    .line 74
    const-string v1, "frame"

    invoke-virtual {p0, v1}, Landroid/filterpacks/base/ObjectSource;->closeOutputPort(Ljava/lang/String;)V

    .line 76
    :cond_2
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "frame"

    iget-object v1, p0, Landroid/filterpacks/base/ObjectSource;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/base/ObjectSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 54
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/filterpacks/base/ObjectSource;->mFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 81
    return-void
.end method
