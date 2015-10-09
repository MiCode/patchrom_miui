.class public Landroid/filterpacks/imageproc/SepiaFilter;
.super Landroid/filterfw/core/Filter;
.source "SepiaFilter.java"


# instance fields
.field private mProgram:Landroid/filterfw/core/Program;

.field private final mSepiaShader:Ljava/lang/String;

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
    .line 51
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 33
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/SepiaFilter;->mTileSize:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/SepiaFilter;->mTarget:I

    .line 39
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform mat3 matrix;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec3 new_color = min(matrix * color.rgb, 1.0);\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/SepiaFilter;->mSepiaShader:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private initParameters()V
    .locals 3

    .prologue
    .line 106
    const/16 v1, 0x9

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 109
    .local v0, "weights":[F
    iget-object v1, p0, Landroid/filterpacks/imageproc/SepiaFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v2, "matrix"

    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    return-void

    .line 106
    :array_0
    .array-data 4
        0x3ec94000
        0x3eb2c000
        0x3e8b4000
        0x3f44e000
        0x3f2fa000
        0x3f092000
        0x3e418000
        0x3e2c0000    # 0.16796875f
        0x3e060000
    .end array-data
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 62
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .prologue
    .line 66
    packed-switch p2, :pswitch_data_0

    .line 74
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

    .line 68
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform mat3 matrix;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec3 new_color = min(matrix * color.rgb, 1.0);\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 69
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/SepiaFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 70
    iput-object v0, p0, Landroid/filterpacks/imageproc/SepiaFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 77
    iput p2, p0, Landroid/filterpacks/imageproc/SepiaFilter;->mTarget:I

    .line 78
    return-void

    .line 66
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 83
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/SepiaFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 84
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 87
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 90
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/SepiaFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/SepiaFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 91
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/SepiaFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 92
    invoke-direct {p0}, Landroid/filterpacks/imageproc/SepiaFilter;->initParameters()V

    .line 96
    :cond_1
    iget-object v3, p0, Landroid/filterpacks/imageproc/SepiaFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 99
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/SepiaFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 102
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 103
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/SepiaFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 57
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/SepiaFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method
