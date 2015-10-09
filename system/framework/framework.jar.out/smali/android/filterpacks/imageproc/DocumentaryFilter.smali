.class public Landroid/filterpacks/imageproc/DocumentaryFilter;
.super Landroid/filterfw/core/Filter;
.source "DocumentaryFilter.java"


# instance fields
.field private final mDocumentaryShader:Ljava/lang/String;

.field private mHeight:I

.field private mProgram:Landroid/filterfw/core/Program;

.field private mRandom:Ljava/util/Random;

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
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 36
    const/16 v1, 0x280

    iput v1, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mTileSize:I

    .line 42
    iput v2, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mWidth:I

    .line 43
    iput v2, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mHeight:I

    .line 44
    iput v2, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mTarget:I

    .line 46
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 seed;\nuniform float stepsize;\nuniform float inv_max_dist;\nuniform vec2 scale;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float dither = rand(v_texcoord + seed);\n  vec3 xform = clamp(2.0 * color.rgb, 0.0, 1.0);\n  vec3 temp = clamp(2.0 * (color.rgb + stepsize), 0.0, 1.0);\n  vec3 new_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  float gray = dot(new_color, vec3(0.299, 0.587, 0.114));\n  new_color = vec3(gray, gray, gray);\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = 0.85 / (1.0 + exp((dist * inv_max_dist - 0.83) * 20.0)) + 0.15;\n  gl_FragColor = vec4(new_color * lumen, color.a);\n}\n"

    iput-object v1, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mDocumentaryShader:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 85
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/util/Random;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v1, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mRandom:Ljava/util/Random;

    .line 86
    return-void
.end method

.method private initParameters()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 146
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    .line 147
    new-array v1, v9, [F

    .line 148
    .local v1, "scale":[F
    iget v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mWidth:I

    iget v4, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mHeight:I

    if-le v3, v4, :cond_1

    .line 149
    aput v8, v1, v6

    .line 150
    iget v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mHeight:I

    int-to-float v3, v3

    iget v4, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v1, v7

    .line 155
    :goto_0
    aget v3, v1, v6

    aget v4, v1, v6

    mul-float/2addr v3, v4

    aget v4, v1, v7

    aget v5, v1, v7

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v0, v3, v4

    .line 157
    .local v0, "max_dist":F
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v4, "scale"

    invoke-virtual {v3, v4, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v4, "inv_max_dist"

    div-float v5, v8, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v4, "stepsize"

    const v5, 0x3b808081

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    new-array v2, v9, [F

    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    aput v3, v2, v6

    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    aput v3, v2, v7

    .line 162
    .local v2, "seed":[F
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v4, "seed"

    invoke-virtual {v3, v4, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    .end local v0    # "max_dist":F
    .end local v1    # "scale":[F
    .end local v2    # "seed":[F
    :cond_0
    return-void

    .line 152
    .restart local v1    # "scale":[F
    :cond_1
    iget v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v1, v6

    .line 153
    aput v8, v1, v7

    goto :goto_0
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 96
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .prologue
    .line 100
    packed-switch p2, :pswitch_data_0

    .line 108
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

    .line 102
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 seed;\nuniform float stepsize;\nuniform float inv_max_dist;\nuniform vec2 scale;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float dither = rand(v_texcoord + seed);\n  vec3 xform = clamp(2.0 * color.rgb, 0.0, 1.0);\n  vec3 temp = clamp(2.0 * (color.rgb + stepsize), 0.0, 1.0);\n  vec3 new_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  float gray = dot(new_color, vec3(0.299, 0.587, 0.114));\n  new_color = vec3(gray, gray, gray);\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = 0.85 / (1.0 + exp((dist * inv_max_dist - 0.83) * 20.0)) + 0.15;\n  gl_FragColor = vec4(new_color * lumen, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 103
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 104
    iput-object v0, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 111
    iput p2, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mTarget:I

    .line 112
    return-void

    .line 100
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 117
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/DocumentaryFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 118
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 121
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 122
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/DocumentaryFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 126
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mWidth:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mHeight:I

    if-eq v3, v4, :cond_3

    .line 127
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mWidth:I

    .line 128
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mHeight:I

    .line 129
    invoke-direct {p0}, Landroid/filterpacks/imageproc/DocumentaryFilter;->initParameters()V

    .line 133
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 136
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 139
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/DocumentaryFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 142
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 143
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/DocumentaryFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 91
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/DocumentaryFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method
