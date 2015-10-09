.class public Landroid/filterpacks/numeric/SinWaveFilter;
.super Landroid/filterfw/core/Filter;
.source "SinWaveFilter.java"


# instance fields
.field private mOutputFormat:Landroid/filterfw/core/FrameFormat;

.field private mStepSize:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "stepSize"
    .end annotation
.end field

.field private mValue:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 34
    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mStepSize:F

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mValue:F

    .line 43
    return-void
.end method


# virtual methods
.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 53
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mValue:F

    .line 54
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 59
    .local v0, "output":Landroid/filterfw/core/Frame;
    iget v1, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mValue:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    .line 60
    const-string/jumbo v1, "value"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/numeric/SinWaveFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 61
    iget v1, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mValue:F

    iget v2, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mStepSize:F

    add-float/2addr v1, v2

    iput v1, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mValue:F

    .line 62
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 63
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 47
    const-class v0, Ljava/lang/Float;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    .line 48
    const-string/jumbo v0, "value"

    iget-object v1, p0, Landroid/filterpacks/numeric/SinWaveFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/numeric/SinWaveFilter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 49
    return-void
.end method
