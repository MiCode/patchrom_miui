.class public Landroid/filterpacks/imageproc/FixedRotationFilter;
.super Landroid/filterfw/core/Filter;
.source "FixedRotationFilter.java"


# instance fields
.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private mRotation:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "rotation"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mRotation:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 45
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 56
    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 14
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 61
    const-string v11, "image"

    invoke-virtual {p0, v11}, Landroid/filterpacks/imageproc/FixedRotationFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 62
    .local v1, "input":Landroid/filterfw/core/Frame;
    iget v11, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mRotation:I

    if-nez v11, :cond_0

    .line 63
    const-string v11, "image"

    invoke-virtual {p0, v11, v1}, Landroid/filterpacks/imageproc/FixedRotationFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 111
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 69
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v11, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    if-nez v11, :cond_1

    .line 70
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v11

    iput-object v11, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 72
    :cond_1
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v4

    .line 73
    .local v4, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v10

    .line 74
    .local v10, "width":I
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v0

    .line 75
    .local v0, "height":I
    new-instance v5, Landroid/filterfw/geometry/Point;

    invoke-direct {v5, v12, v12}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 76
    .local v5, "p1":Landroid/filterfw/geometry/Point;
    new-instance v6, Landroid/filterfw/geometry/Point;

    invoke-direct {v6, v13, v12}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 77
    .local v6, "p2":Landroid/filterfw/geometry/Point;
    new-instance v7, Landroid/filterfw/geometry/Point;

    invoke-direct {v7, v12, v13}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 78
    .local v7, "p3":Landroid/filterfw/geometry/Point;
    new-instance v8, Landroid/filterfw/geometry/Point;

    invoke-direct {v8, v13, v13}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 80
    .local v8, "p4":Landroid/filterfw/geometry/Point;
    iget v11, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mRotation:I

    int-to-float v11, v11

    const/high16 v12, 0x42b40000    # 90.0f

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    rem-int/lit8 v11, v11, 0x4

    packed-switch v11, :pswitch_data_0

    .line 94
    new-instance v9, Landroid/filterfw/geometry/Quad;

    invoke-direct {v9, v5, v6, v7, v8}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 98
    .local v9, "sourceRegion":Landroid/filterfw/geometry/Quad;
    :goto_1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 101
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-object v11, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v11, v9}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 104
    iget-object v11, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v11, v1, v3}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 107
    const-string v11, "image"

    invoke-virtual {p0, v11, v3}, Landroid/filterpacks/imageproc/FixedRotationFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 110
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    goto :goto_0

    .line 82
    .end local v3    # "output":Landroid/filterfw/core/Frame;
    .end local v9    # "sourceRegion":Landroid/filterfw/geometry/Quad;
    :pswitch_0
    new-instance v9, Landroid/filterfw/geometry/Quad;

    invoke-direct {v9, v7, v5, v8, v6}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 83
    .restart local v9    # "sourceRegion":Landroid/filterfw/geometry/Quad;
    invoke-virtual {v4, v0, v10}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    goto :goto_1

    .line 86
    .end local v9    # "sourceRegion":Landroid/filterfw/geometry/Quad;
    :pswitch_1
    new-instance v9, Landroid/filterfw/geometry/Quad;

    invoke-direct {v9, v8, v7, v6, v5}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 87
    .restart local v9    # "sourceRegion":Landroid/filterfw/geometry/Quad;
    goto :goto_1

    .line 89
    .end local v9    # "sourceRegion":Landroid/filterfw/geometry/Quad;
    :pswitch_2
    new-instance v9, Landroid/filterfw/geometry/Quad;

    invoke-direct {v9, v6, v8, v5, v7}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 90
    .restart local v9    # "sourceRegion":Landroid/filterfw/geometry/Quad;
    invoke-virtual {v4, v0, v10}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    goto :goto_1

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 49
    const-string v0, "image"

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FixedRotationFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 51
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FixedRotationFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method
