.class public Landroid/filterpacks/imageproc/DuotoneFilter;
.super Landroid/filterfw/core/Filter;
.source "DuotoneFilter.java"


# instance fields
.field private final mDuotoneShader:Ljava/lang/String;

.field private mFirstColor:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "first_color"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;

.field private mSecondColor:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "second_color"
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
    .line 60
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 34
    const/high16 v0, -0x10000

    iput v0, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mFirstColor:I

    .line 37
    const/16 v0, -0x100

    iput v0, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mSecondColor:I

    .line 40
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mTileSize:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mTarget:I

    .line 46
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 first;\nuniform vec3 second;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = (color.r + color.g + color.b) * 0.3333;\n  vec3 new_color = (1.0 - energy) * first + energy * second;\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mDuotoneShader:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private updateParameters()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    .line 115
    new-array v0, v7, [F

    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mFirstColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v4

    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mFirstColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v5

    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mFirstColor:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v6

    .line 118
    .local v0, "first":[F
    new-array v1, v7, [F

    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mSecondColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v1, v4

    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mSecondColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v1, v5

    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mSecondColor:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v1, v6

    .line 122
    .local v1, "second":[F
    iget-object v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v3, "first"

    invoke-virtual {v2, v3, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    iget-object v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v3, "second"

    invoke-virtual {v2, v3, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 71
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .prologue
    .line 75
    packed-switch p2, :pswitch_data_0

    .line 83
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter Duotone does not support frames of target "

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

    .line 77
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 first;\nuniform vec3 second;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = (color.r + color.g + color.b) * 0.3333;\n  vec3 new_color = (1.0 - energy) * first + energy * second;\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 78
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 79
    iput-object v0, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 86
    iput p2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mTarget:I

    .line 87
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 92
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/DuotoneFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 93
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 96
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 99
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    .line 100
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/DuotoneFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 102
    :cond_1
    invoke-direct {p0}, Landroid/filterpacks/imageproc/DuotoneFilter;->updateParameters()V

    .line 105
    iget-object v3, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 108
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/DuotoneFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 111
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 112
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 65
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/DuotoneFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 66
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/DuotoneFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method
