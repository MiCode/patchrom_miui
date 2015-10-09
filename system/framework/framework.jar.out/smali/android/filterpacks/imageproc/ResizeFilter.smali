.class public Landroid/filterpacks/imageproc/ResizeFilter;
.super Landroid/filterfw/core/Filter;
.source "ResizeFilter.java"


# instance fields
.field private mGenerateMipMap:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "generateMipMap"
    .end annotation
.end field

.field private mInputChannels:I

.field private mKeepAspectRatio:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "keepAspectRatio"
    .end annotation
.end field

.field private mLastFormat:Landroid/filterfw/core/FrameFormat;

.field private mOHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "oheight"
    .end annotation
.end field

.field private mOWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "owidth"
    .end annotation
.end field

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 45
    iput-boolean v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mKeepAspectRatio:Z

    .line 47
    iput-boolean v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mGenerateMipMap:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    .line 58
    return-void
.end method


# virtual methods
.method protected createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "format"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 72
    iget-object v1, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v1

    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 87
    :goto_0
    return-void

    .line 73
    :cond_0
    iput-object p2, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    .line 74
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 85
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ResizeFilter could not create suitable program!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Native ResizeFilter not implemented yet!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :pswitch_1
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    .line 81
    .local v0, "prog":Landroid/filterfw/core/ShaderProgram;
    iput-object v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 68
    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 7
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 91
    const-string v5, "image"

    invoke-virtual {p0, v5}, Landroid/filterpacks/imageproc/ResizeFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 92
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Landroid/filterpacks/imageproc/ResizeFilter;->createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V

    .line 95
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v4

    .line 96
    .local v4, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    iget-boolean v5, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mKeepAspectRatio:Z

    if-eqz v5, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 98
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget v5, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOWidth:I

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v6

    div-int/2addr v5, v6

    iput v5, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOHeight:I

    .line 100
    .end local v1    # "inputFormat":Landroid/filterfw/core/FrameFormat;
    :cond_0
    iget v5, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOWidth:I

    iget v6, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 101
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 104
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-boolean v5, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mGenerateMipMap:Z

    if-eqz v5, :cond_1

    .line 105
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/GLFrame;

    .line 106
    .local v2, "mipmapped":Landroid/filterfw/core/GLFrame;
    const/16 v5, 0x2801

    const/16 v6, 0x2701

    invoke-virtual {v2, v5, v6}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 108
    invoke-virtual {v2, v0}, Landroid/filterfw/core/GLFrame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 109
    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 110
    iget-object v5, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v5, v2, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 111
    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 117
    .end local v2    # "mipmapped":Landroid/filterfw/core/GLFrame;
    :goto_0
    const-string v5, "image"

    invoke-virtual {p0, v5, v3}, Landroid/filterpacks/imageproc/ResizeFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 120
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 121
    return-void

    .line 113
    :cond_1
    iget-object v5, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v5, v0, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    goto :goto_0
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ResizeFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 63
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ResizeFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
