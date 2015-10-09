.class public Landroid/filterpacks/base/RetargetFilter;
.super Landroid/filterfw/core/Filter;
.source "RetargetFilter.java"


# instance fields
.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mTarget:I

.field private mTargetString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = false
        name = "target"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterpacks/base/RetargetFilter;->mTarget:I

    .line 42
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 2
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 56
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 57
    .local v0, "retargeted":Landroid/filterfw/core/MutableFrameFormat;
    iget v1, p0, Landroid/filterpacks/base/RetargetFilter;->mTarget:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setTarget(I)V

    .line 58
    return-object v0
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 64
    const-string v2, "frame"

    invoke-virtual {p0, v2}, Landroid/filterpacks/base/RetargetFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 67
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    iget v3, p0, Landroid/filterpacks/base/RetargetFilter;->mTarget:I

    invoke-virtual {v2, v0, v3}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 70
    .local v1, "output":Landroid/filterfw/core/Frame;
    const-string v2, "frame"

    invoke-virtual {p0, v2, v1}, Landroid/filterpacks/base/RetargetFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 73
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 74
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Landroid/filterpacks/base/RetargetFilter;->mTargetString:Ljava/lang/String;

    invoke-static {v0}, Landroid/filterfw/core/FrameFormat;->readTargetString(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/filterpacks/base/RetargetFilter;->mTarget:I

    .line 50
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/RetargetFilter;->addInputPort(Ljava/lang/String;)V

    .line 51
    const-string v0, "frame"

    const-string v1, "frame"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/base/RetargetFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method
