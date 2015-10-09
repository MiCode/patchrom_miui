.class public Landroid/filterpacks/imageproc/StraightenFilter;
.super Landroid/filterfw/core/Filter;
.source "StraightenFilter.java"


# static fields
.field private static final DEGREE_TO_RADIAN:F = 0.017453292f


# instance fields
.field private mAngle:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "angle"
    .end annotation
.end field

.field private mHeight:I

.field private mMaxAngle:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxAngle"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    .line 44
    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    .line 47
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTileSize:I

    .line 52
    iput v1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    .line 53
    iput v1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    .line 54
    iput v1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    .line 60
    return-void
.end method

.method private updateParameters()V
    .locals 15

    .prologue
    const/high16 v10, 0x42b40000    # 90.0f

    const v14, 0x3c8efa35

    const/high16 v13, 0x3f000000    # 0.5f

    .line 121
    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    mul-float/2addr v11, v14

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v0, v11

    .line 122
    .local v0, "cosTheta":F
    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    mul-float/2addr v11, v14

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v9, v11

    .line 124
    .local v9, "sinTheta":F
    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_0

    .line 125
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Max angle is out of range (0-180)."

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 126
    :cond_0
    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    cmpl-float v11, v11, v10

    if-lez v11, :cond_1

    :goto_0
    iput v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    .line 128
    new-instance v3, Landroid/filterfw/geometry/Point;

    neg-float v10, v0

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v11, v11

    mul-float/2addr v11, v9

    add-float/2addr v10, v11

    neg-float v11, v9

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    mul-float/2addr v12, v0

    sub-float/2addr v11, v12

    invoke-direct {v3, v10, v11}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 131
    .local v3, "p0":Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Point;

    iget v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v10, v10

    mul-float/2addr v10, v0

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v11, v11

    mul-float/2addr v11, v9

    add-float/2addr v10, v11

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    mul-float/2addr v11, v9

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    mul-float/2addr v12, v0

    sub-float/2addr v11, v12

    invoke-direct {v4, v10, v11}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 134
    .local v4, "p1":Landroid/filterfw/geometry/Point;
    new-instance v5, Landroid/filterfw/geometry/Point;

    neg-float v10, v0

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v11, v11

    mul-float/2addr v11, v9

    sub-float/2addr v10, v11

    neg-float v11, v9

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    mul-float/2addr v12, v0

    add-float/2addr v11, v12

    invoke-direct {v5, v10, v11}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 137
    .local v5, "p2":Landroid/filterfw/geometry/Point;
    new-instance v6, Landroid/filterfw/geometry/Point;

    iget v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v10, v10

    mul-float/2addr v10, v0

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v11, v11

    mul-float/2addr v11, v9

    sub-float/2addr v10, v11

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    mul-float/2addr v11, v9

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    mul-float/2addr v12, v0

    add-float/2addr v11, v12

    invoke-direct {v6, v10, v11}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 140
    .local v6, "p3":Landroid/filterfw/geometry/Point;
    iget v10, v3, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, v4, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 141
    .local v2, "maxWidth":F
    iget v10, v3, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, v4, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 143
    .local v1, "maxHeight":F
    iget v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v10, v10

    div-float/2addr v10, v2

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v11, v11

    div-float/2addr v11, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    mul-float v8, v13, v10

    .line 146
    .local v8, "scale":F
    iget v10, v3, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v10, v8

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    add-float/2addr v10, v13

    iget v11, v3, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v11, v8

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    add-float/2addr v11, v13

    invoke-virtual {v3, v10, v11}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 147
    iget v10, v4, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v10, v8

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    add-float/2addr v10, v13

    iget v11, v4, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v11, v8

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    add-float/2addr v11, v13

    invoke-virtual {v4, v10, v11}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 148
    iget v10, v5, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v10, v8

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    add-float/2addr v10, v13

    iget v11, v5, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v11, v8

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    add-float/2addr v11, v13

    invoke-virtual {v5, v10, v11}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 149
    iget v10, v6, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v10, v8

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    add-float/2addr v10, v13

    iget v11, v6, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v11, v8

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    add-float/2addr v11, v13

    invoke-virtual {v6, v10, v11}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 151
    new-instance v7, Landroid/filterfw/geometry/Quad;

    invoke-direct {v7, v3, v4, v5, v6}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 152
    .local v7, "quad":Landroid/filterfw/geometry/Quad;
    iget-object v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    check-cast v10, Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v10, v7}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 153
    return-void

    .line 126
    .end local v1    # "maxHeight":F
    .end local v2    # "maxWidth":F
    .end local v3    # "p0":Landroid/filterfw/geometry/Point;
    .end local v4    # "p1":Landroid/filterfw/geometry/Point;
    .end local v5    # "p2":Landroid/filterfw/geometry/Point;
    .end local v6    # "p3":Landroid/filterfw/geometry/Point;
    .end local v7    # "quad":Landroid/filterfw/geometry/Quad;
    .end local v8    # "scale":F
    :cond_1
    iget v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    goto/16 :goto_0
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 85
    iget-object v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Landroid/filterpacks/imageproc/StraightenFilter;->updateParameters()V

    .line 88
    :cond_0
    return-void
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .prologue
    .line 69
    packed-switch p2, :pswitch_data_0

    .line 77
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter Sharpen does not support frames of target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :pswitch_0
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    .line 72
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 73
    iput-object v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 80
    iput p2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    .line 81
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 93
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/StraightenFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 94
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 97
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 98
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/StraightenFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 102
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    if-eq v3, v4, :cond_3

    .line 103
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    .line 104
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    .line 105
    invoke-direct {p0}, Landroid/filterpacks/imageproc/StraightenFilter;->updateParameters()V

    .line 108
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 111
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 114
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/StraightenFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 117
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 118
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/StraightenFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 65
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/StraightenFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
