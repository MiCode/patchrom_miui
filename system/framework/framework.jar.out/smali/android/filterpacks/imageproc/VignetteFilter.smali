.class public Landroid/filterpacks/imageproc/VignetteFilter;
.super Landroid/filterfw/core/Filter;
.source "VignetteFilter.java"


# instance fields
.field private mHeight:I

.field private mProgram:Landroid/filterfw/core/Program;

.field private mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "scale"
    .end annotation
.end field

.field private final mShade:F

.field private final mSlope:F

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private final mVignetteShader:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mScale:F

    .line 36
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mTileSize:I

    .line 41
    iput v1, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mWidth:I

    .line 42
    iput v1, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mHeight:I

    .line 43
    iput v1, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mTarget:I

    .line 45
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mSlope:F

    .line 46
    const v0, 0x3f59999a    # 0.85f

    iput v0, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mShade:F

    .line 48
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float range;\nuniform float inv_max_dist;\nuniform float shade;\nuniform vec2 scale;\nvarying vec2 v_texcoord;\nvoid main() {\n  const float slope = 20.0;\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  gl_FragColor = vec4(color.rgb * lumen, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mVignetteShader:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private initParameters()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    iget-object v2, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v2, :cond_0

    .line 97
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 98
    .local v1, "scale":[F
    iget v2, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mWidth:I

    iget v3, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mHeight:I

    if-le v2, v3, :cond_1

    .line 99
    aput v6, v1, v4

    .line 100
    iget v2, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v5

    .line 105
    :goto_0
    aget v2, v1, v4

    aget v3, v1, v4

    mul-float/2addr v2, v3

    aget v3, v1, v5

    aget v4, v1, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v0, v2, v3

    .line 106
    .local v0, "max_dist":F
    iget-object v2, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v3, "scale"

    invoke-virtual {v2, v3, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    iget-object v2, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v3, "inv_max_dist"

    div-float v4, v6, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    iget-object v2, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v3, "shade"

    const v4, 0x3f59999a    # 0.85f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    invoke-direct {p0}, Landroid/filterpacks/imageproc/VignetteFilter;->updateParameters()V

    .line 112
    .end local v0    # "max_dist":F
    .end local v1    # "scale":[F
    :cond_0
    return-void

    .line 102
    .restart local v1    # "scale":[F
    :cond_1
    iget v2, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v4

    .line 103
    aput v6, v1, v5

    goto :goto_0
.end method

.method private updateParameters()V
    .locals 5

    .prologue
    .line 118
    iget-object v0, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v1, "range"

    const v2, 0x3fa66666    # 1.3f

    iget v3, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mScale:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 123
    iget-object v0, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Landroid/filterpacks/imageproc/VignetteFilter;->updateParameters()V

    .line 126
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 77
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .prologue
    .line 81
    packed-switch p2, :pswitch_data_0

    .line 89
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

    .line 83
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float range;\nuniform float inv_max_dist;\nuniform float shade;\nuniform vec2 scale;\nvarying vec2 v_texcoord;\nvoid main() {\n  const float slope = 20.0;\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  gl_FragColor = vec4(color.rgb * lumen, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 84
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 85
    iput-object v0, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 92
    iput p2, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mTarget:I

    .line 93
    return-void

    .line 81
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 131
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/VignetteFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 132
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 135
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 136
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/VignetteFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 140
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mWidth:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mHeight:I

    if-eq v3, v4, :cond_3

    .line 141
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mWidth:I

    .line 142
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mHeight:I

    .line 143
    invoke-direct {p0}, Landroid/filterpacks/imageproc/VignetteFilter;->initParameters()V

    .line 147
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 150
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 153
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/VignetteFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 156
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 157
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/VignetteFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 72
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/VignetteFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method
