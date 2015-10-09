.class public Landroid/filterpacks/imageproc/CropFilter;
.super Landroid/filterfw/core/Filter;
.source "CropFilter.java"


# instance fields
.field private mFillBlack:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "fillblack"
    .end annotation
.end field

.field private final mFragShader:Ljava/lang/String;

.field private mLastFormat:Landroid/filterfw/core/FrameFormat;

.field private mOutputHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "oheight"
    .end annotation
.end field

.field private mOutputWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "owidth"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 56
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    .line 46
    iput v1, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputWidth:I

    .line 49
    iput v1, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputHeight:I

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mFillBlack:Z

    .line 59
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  const vec2 lo = vec2(0.0, 0.0);\n  const vec2 hi = vec2(1.0, 1.0);\n  const vec4 black = vec4(0.0, 0.0, 0.0, 1.0);\n  bool out_of_bounds =\n    any(lessThan(v_texcoord, lo)) ||\n    any(greaterThan(v_texcoord, hi));\n  if (out_of_bounds) {\n    gl_FragColor = black;\n  } else {\n    gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n  }\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mFragShader:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method protected createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "format"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 95
    iget-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v0

    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 110
    :cond_0
    return-void

    .line 96
    :cond_1
    iput-object p2, p0, Landroid/filterpacks/imageproc/CropFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 98
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    iget-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create a program for crop filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :pswitch_0
    iget-boolean v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mFillBlack:Z

    if-eqz v0, :cond_2

    .line 101
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  const vec2 lo = vec2(0.0, 0.0);\n  const vec2 hi = vec2(1.0, 1.0);\n  const vec4 black = vec4(0.0, 0.0, 0.0, 1.0);\n  bool out_of_bounds =\n    any(lessThan(v_texcoord, lo)) ||\n    any(greaterThan(v_texcoord, hi));\n  if (out_of_bounds) {\n    gl_FragColor = black;\n  } else {\n    gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n  }\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 103
    :cond_2
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 2
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 89
    .local v0, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v0, v1, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 90
    return-object v0
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 9
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v8, -0x1

    .line 115
    const-string v6, "image"

    invoke-virtual {p0, v6}, Landroid/filterpacks/imageproc/CropFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 116
    .local v2, "imageFrame":Landroid/filterfw/core/Frame;
    const-string v6, "box"

    invoke-virtual {p0, v6}, Landroid/filterpacks/imageproc/CropFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 118
    .local v1, "boxFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Landroid/filterpacks/imageproc/CropFilter;->createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V

    .line 121
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/geometry/Quad;

    .line 124
    .local v0, "box":Landroid/filterfw/geometry/Quad;
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v4

    .line 125
    .local v4, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    iget v6, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputWidth:I

    if-ne v6, v8, :cond_1

    invoke-virtual {v4}, Landroid/filterfw/core/MutableFrameFormat;->getWidth()I

    move-result v6

    :goto_0
    iget v7, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputHeight:I

    if-ne v7, v8, :cond_2

    invoke-virtual {v4}, Landroid/filterfw/core/MutableFrameFormat;->getHeight()I

    move-result v7

    :goto_1
    invoke-virtual {v4, v6, v7}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 129
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 132
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-object v6, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    instance-of v6, v6, Landroid/filterfw/core/ShaderProgram;

    if-eqz v6, :cond_0

    .line 133
    iget-object v5, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    check-cast v5, Landroid/filterfw/core/ShaderProgram;

    .line 134
    .local v5, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    invoke-virtual {v5, v0}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 137
    .end local v5    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    :cond_0
    iget-object v6, p0, Landroid/filterpacks/imageproc/CropFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v6, v2, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 140
    const-string v6, "image"

    invoke-virtual {p0, v6, v3}, Landroid/filterpacks/imageproc/CropFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 143
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 144
    return-void

    .line 125
    .end local v3    # "output":Landroid/filterfw/core/Frame;
    :cond_1
    iget v6, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputWidth:I

    goto :goto_0

    :cond_2
    iget v7, p0, Landroid/filterpacks/imageproc/CropFilter;->mOutputHeight:I

    goto :goto_1
.end method

.method public setupPorts()V
    .locals 3

    .prologue
    .line 79
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/CropFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 80
    const-string v0, "box"

    const-class v1, Landroid/filterfw/geometry/Quad;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/CropFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 81
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/CropFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method
