.class public Landroid/filterpacks/imageproc/GrainFilter;
.super Landroid/filterfw/core/Filter;
.source "GrainFilter.java"


# static fields
.field private static final RAND_THRESHOLD:I = 0x80


# instance fields
.field private mGrainProgram:Landroid/filterfw/core/Program;

.field private final mGrainShader:Ljava/lang/String;

.field private mHeight:I

.field private mNoiseProgram:Landroid/filterfw/core/Program;

.field private final mNoiseShader:Ljava/lang/String;

.field private mRandom:Ljava/util/Random;

.field private mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "strength"
    .end annotation
.end field

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
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mScale:F

    .line 43
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTileSize:I

    .line 49
    iput v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    .line 50
    iput v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    .line 51
    iput v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTarget:I

    .line 55
    const-string/jumbo v0, "precision mediump float;\nuniform vec2 seed;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  gl_FragColor = vec4(rand(v_texcoord + seed), 0.0, 0.0, 1.0);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseShader:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float scale;\nuniform float stepX;\nuniform float stepY;\nvarying vec2 v_texcoord;\nvoid main() {\n  float noise = texture2D(tex_sampler_1, v_texcoord + vec2(-stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(-stepX, stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(stepX, stepY)).r * 0.224;\n  noise += 0.4448;\n  noise *= scale;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = 0.33333 * color.r + 0.33333 * color.g + 0.33333 * color.b;\n  float mask = (1.0 - sqrt(energy));\n  float weight = 1.0 - 1.333 * mask * noise;\n  gl_FragColor = vec4(color.rgb * weight, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainShader:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/Random;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mRandom:Ljava/util/Random;

    .line 99
    return-void
.end method

.method private updateFrameSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 139
    iput p1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    .line 140
    iput p2, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    .line 142
    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v1, "stepX"

    iget v2, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    int-to-float v2, v2

    div-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v1, "stepY"

    iget v2, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    int-to-float v2, v2

    div-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    invoke-direct {p0}, Landroid/filterpacks/imageproc/GrainFilter;->updateParameters()V

    .line 147
    :cond_0
    return-void
.end method

.method private updateParameters()V
    .locals 4

    .prologue
    .line 132
    const/4 v1, 0x2

    new-array v0, v1, [F

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/filterpacks/imageproc/GrainFilter;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/filterpacks/imageproc/GrainFilter;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    aput v2, v0, v1

    .line 133
    .local v0, "seed":[F
    iget-object v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v2, "seed"

    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    iget-object v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v2, "scale"

    iget v3, p0, Landroid/filterpacks/imageproc/GrainFilter;->mScale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 151
    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Landroid/filterpacks/imageproc/GrainFilter;->updateParameters()V

    .line 154
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 109
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .prologue
    .line 113
    packed-switch p2, :pswitch_data_0

    .line 125
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

    .line 115
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform vec2 seed;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  gl_FragColor = vec4(rand(v_texcoord + seed), 0.0, 0.0, 1.0);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 116
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 117
    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseProgram:Landroid/filterfw/core/Program;

    .line 119
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    .end local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float scale;\nuniform float stepX;\nuniform float stepY;\nvarying vec2 v_texcoord;\nvoid main() {\n  float noise = texture2D(tex_sampler_1, v_texcoord + vec2(-stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(-stepX, stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(stepX, stepY)).r * 0.224;\n  noise += 0.4448;\n  noise *= scale;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = 0.33333 * color.r + 0.33333 * color.g + 0.33333 * color.b;\n  float mask = (1.0 - sqrt(energy));\n  float weight = 1.0 - 1.333 * mask * noise;\n  gl_FragColor = vec4(color.rgb * weight, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 120
    .restart local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 121
    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    .line 128
    iput p2, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTarget:I

    .line 129
    return-void

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 11
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 159
    const-string v7, "image"

    invoke-virtual {p0, v7}, Landroid/filterpacks/imageproc/GrainFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 160
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 162
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-static {v7, v8, v10, v10}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v4

    .line 168
    .local v4, "noiseFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v5

    .line 171
    .local v5, "noiseFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    .line 174
    .local v6, "output":Landroid/filterfw/core/Frame;
    iget-object v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseProgram:Landroid/filterfw/core/Program;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v7

    iget v8, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTarget:I

    if-eq v7, v8, :cond_1

    .line 175
    :cond_0
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v7

    invoke-virtual {p0, p1, v7}, Landroid/filterpacks/imageproc/GrainFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 176
    invoke-direct {p0}, Landroid/filterpacks/imageproc/GrainFilter;->updateParameters()V

    .line 180
    :cond_1
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    if-ne v7, v8, :cond_2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    if-eq v7, v8, :cond_3

    .line 181
    :cond_2
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/filterpacks/imageproc/GrainFilter;->updateFrameSize(II)V

    .line 184
    :cond_3
    new-array v0, v9, [Landroid/filterfw/core/Frame;

    .line 185
    .local v0, "empty":[Landroid/filterfw/core/Frame;
    iget-object v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v7, v0, v5}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 188
    const/4 v7, 0x2

    new-array v3, v7, [Landroid/filterfw/core/Frame;

    aput-object v1, v3, v9

    const/4 v7, 0x1

    aput-object v5, v3, v7

    .line 189
    .local v3, "inputs":[Landroid/filterfw/core/Frame;
    iget-object v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v7, v3, v6}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 192
    const-string v7, "image"

    invoke-virtual {p0, v7, v6}, Landroid/filterpacks/imageproc/GrainFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 195
    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 196
    invoke-virtual {v5}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 197
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/GrainFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 104
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/GrainFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method
