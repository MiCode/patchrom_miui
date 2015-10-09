.class public Landroid/filterpacks/imageproc/FisheyeFilter;
.super Landroid/filterfw/core/Filter;
.source "FisheyeFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FisheyeFilter"

.field private static final mFisheyeShader:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 scale;\nuniform float alpha;\nuniform float radius2;\nuniform float factor;\nvarying vec2 v_texcoord;\nvoid main() {\n  const float m_pi_2 = 1.570963;\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float radian = m_pi_2 - atan(alpha * sqrt(radius2 - dist * dist), dist);\n  float scalar = radian * factor / dist;\n  vec2 new_coord = coord * scalar + vec2(0.5, 0.5);\n  gl_FragColor = texture2D(tex_sampler_0, new_coord);\n}\n"


# instance fields
.field private mHeight:I

.field private mProgram:Landroid/filterfw/core/Program;

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

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mScale:F

    .line 49
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTileSize:I

    .line 54
    iput v1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    .line 55
    iput v1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    .line 56
    iput v1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTarget:I

    .line 78
    return-void
.end method

.method private updateFrameSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 143
    iput p1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    .line 144
    iput p2, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    .line 146
    invoke-direct {p0}, Landroid/filterpacks/imageproc/FisheyeFilter;->updateProgramParams()V

    .line 147
    return-void
.end method

.method private updateProgramParams()V
    .locals 14

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 150
    const v5, 0x40490fdb    # (float)Math.PI

    .line 151
    .local v5, "pi":F
    const/4 v9, 0x2

    new-array v8, v9, [F

    .line 152
    .local v8, "scale":[F
    iget v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    iget v10, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    if-le v9, v10, :cond_0

    .line 153
    aput v13, v8, v11

    .line 154
    iget v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    int-to-float v9, v9

    iget v10, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    aput v9, v8, v12

    .line 159
    :goto_0
    iget v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mScale:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f400000    # 0.75f

    add-float v0, v9, v10

    .line 160
    .local v0, "alpha":F
    const/high16 v9, 0x3e800000    # 0.25f

    aget v10, v8, v11

    aget v11, v8, v11

    mul-float/2addr v10, v11

    aget v11, v8, v12

    aget v12, v8, v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    mul-float v2, v9, v10

    .line 161
    .local v2, "bound2":F
    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v1, v9

    .line 162
    .local v1, "bound":F
    const v9, 0x3f933333    # 1.15f

    mul-float v6, v9, v1

    .line 163
    .local v6, "radius":F
    mul-float v7, v6, v6

    .line 164
    .local v7, "radius2":F
    const v9, 0x3fc90fdb

    div-float v10, v0, v1

    sub-float v11, v7, v2

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    double-to-float v10, v10

    sub-float v4, v9, v10

    .line 166
    .local v4, "max_radian":F
    div-float v3, v1, v4

    .line 168
    .local v3, "factor":F
    iget-object v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v10, "scale"

    invoke-virtual {v9, v10, v8}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    iget-object v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v10, "radius2"

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    iget-object v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v10, "factor"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    iget-object v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v10, "alpha"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    return-void

    .line 156
    .end local v0    # "alpha":F
    .end local v1    # "bound":F
    .end local v2    # "bound2":F
    .end local v3    # "factor":F
    .end local v4    # "max_radian":F
    .end local v6    # "radius":F
    .end local v7    # "radius2":F
    :cond_0
    iget v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    int-to-float v9, v9

    iget v10, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    aput v9, v8, v11

    .line 157
    aput v13, v8, v12

    goto :goto_0
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 137
    iget-object v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Landroid/filterpacks/imageproc/FisheyeFilter;->updateProgramParams()V

    .line 140
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 88
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .prologue
    .line 92
    packed-switch p2, :pswitch_data_0

    .line 100
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter FisheyeFilter does not support frames of target "

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

    .line 94
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 scale;\nuniform float alpha;\nuniform float radius2;\nuniform float factor;\nvarying vec2 v_texcoord;\nvoid main() {\n  const float m_pi_2 = 1.570963;\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float radian = m_pi_2 - atan(alpha * sqrt(radius2 - dist * dist), dist);\n  float scalar = radian * factor / dist;\n  vec2 new_coord = coord * scalar + vec2(0.5, 0.5);\n  gl_FragColor = texture2D(tex_sampler_0, new_coord);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 95
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 96
    iput-object v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 103
    iput p2, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTarget:I

    .line 104
    return-void

    .line 92
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 109
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/FisheyeFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 110
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 113
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 116
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 117
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/FisheyeFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 121
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    if-eq v3, v4, :cond_3

    .line 122
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Landroid/filterpacks/imageproc/FisheyeFilter;->updateFrameSize(II)V

    .line 126
    :cond_3
    iget-object v3, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 129
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/FisheyeFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 132
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 133
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FisheyeFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 83
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FisheyeFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method
