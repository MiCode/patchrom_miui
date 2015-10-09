.class public Landroid/filterpacks/imageproc/SaturateFilter;
.super Landroid/filterfw/core/Filter;
.source "SaturateFilter.java"


# instance fields
.field private mBenProgram:Landroid/filterfw/core/Program;

.field private final mBenSaturateShader:Ljava/lang/String;

.field private mHerfProgram:Landroid/filterfw/core/Program;

.field private final mHerfSaturateShader:Ljava/lang/String;

.field private mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "scale"
    .end annotation
.end field

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    .line 36
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTileSize:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTarget:I

    .line 43
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float scale;\nuniform float shift;\nuniform vec3 weights;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float kv = dot(color.rgb, weights) + shift;\n  vec3 new_color = scale * color.rgb + (1.0 - scale) * kv;\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenSaturateShader:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 weights;\nuniform vec3 exponents;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float de = dot(color.rgb, weights);\n  float inv_de = 1.0 / de;\n  vec3 new_color = de * pow(color.rgb * inv_de, exponents);\n  float max_color = max(max(max(new_color.r, new_color.g), new_color.b), 1.0);\n  gl_FragColor = vec4(new_color / max_color, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfSaturateShader:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private initParameters()V
    .locals 5

    .prologue
    .line 144
    const v0, 0x3b808081

    .line 145
    .local v0, "shift":F
    const/4 v2, 0x3

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    .line 147
    .local v1, "weights":[F
    iget-object v2, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v3, "weights"

    invoke-virtual {v2, v3, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    iget-object v2, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v3, "shift"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    iget-object v2, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v3, "weights"

    invoke-virtual {v2, v3, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SaturateFilter;->updateParameters()V

    .line 153
    return-void

    .line 145
    nop

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f200000    # 0.625f
        0x3e000000    # 0.125f
    .end array-data
.end method

.method private updateParameters()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 157
    iget v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 158
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 160
    .local v0, "exponents":[F
    const/4 v1, 0x0

    const v2, 0x3f666666    # 0.9f

    iget v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    aput v2, v0, v1

    .line 161
    const/4 v1, 0x1

    const v2, 0x40066666    # 2.1f

    iget v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    aput v2, v0, v1

    .line 162
    const/4 v1, 0x2

    const v2, 0x402ccccd    # 2.7f

    iget v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    aput v2, v0, v1

    .line 164
    iget-object v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    const-string v2, "exponents"

    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    .end local v0    # "exponents":[F
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v2, "scale"

    iget v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 110
    iget-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SaturateFilter;->updateParameters()V

    .line 113
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 85
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .prologue
    .line 89
    packed-switch p2, :pswitch_data_0

    .line 102
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

    .line 91
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float scale;\nuniform float shift;\nuniform vec3 weights;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float kv = dot(color.rgb, weights) + shift;\n  vec3 new_color = scale * color.rgb + (1.0 - scale) * kv;\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 92
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 93
    iput-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    .line 95
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    .end local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 weights;\nuniform vec3 exponents;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float de = dot(color.rgb, weights);\n  float inv_de = 1.0 / de;\n  vec3 new_color = de * pow(color.rgb * inv_de, exponents);\n  float max_color = max(max(max(new_color.r, new_color.g), new_color.b), 1.0);\n  gl_FragColor = vec4(new_color / max_color, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 96
    .restart local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 97
    iput-object v0, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    .line 105
    iput p2, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTarget:I

    .line 106
    return-void

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 118
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/SaturateFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 119
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 122
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 123
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/SaturateFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 124
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SaturateFilter;->initParameters()V

    .line 128
    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 131
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mScale:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 132
    iget-object v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mHerfProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 137
    :goto_0
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/SaturateFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 140
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 141
    return-void

    .line 134
    :cond_2
    iget-object v3, p0, Landroid/filterpacks/imageproc/SaturateFilter;->mBenProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    goto :goto_0
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/SaturateFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 80
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/SaturateFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method
