.class public Landroid/filterpacks/imageproc/ToRGBAFilter;
.super Landroid/filterfw/core/Filter;
.source "ToRGBAFilter.java"


# instance fields
.field private mInputBPP:I

.field private mLastFormat:Landroid/filterfw/core/FrameFormat;

.field private mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    .line 45
    return-void
.end method


# virtual methods
.method public createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "format"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 69
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v0

    iput v0, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mInputBPP:I

    .line 70
    iget-object v0, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v0

    iget v1, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mInputBPP:I

    if-ne v0, v1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 71
    :cond_0
    iput-object p2, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    .line 72
    iget v0, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mInputBPP:I

    packed-switch v0, :pswitch_data_0

    .line 80
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported BytesPerPixel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mInputBPP:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :pswitch_1
    new-instance v0, Landroid/filterfw/core/NativeProgram;

    const-string v1, "filterpack_imageproc"

    const-string v2, "gray_to_rgba"

    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 77
    :pswitch_2
    new-instance v0, Landroid/filterfw/core/NativeProgram;

    const-string v1, "filterpack_imageproc"

    const-string/jumbo v2, "rgb_to_rgba"

    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getConvertedFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 3
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 63
    .local v0, "result":Landroid/filterfw/core/MutableFrameFormat;
    const-string v1, "colorspace"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setMetaValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    .line 65
    return-object v0
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 1
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 58
    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/ToRGBAFilter;->getConvertedFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    return-object v0
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 87
    const-string v2, "image"

    invoke-virtual {p0, v2}, Landroid/filterpacks/imageproc/ToRGBAFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 88
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/filterpacks/imageproc/ToRGBAFilter;->createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V

    .line 91
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/ToRGBAFilter;->getConvertedFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 94
    .local v1, "output":Landroid/filterfw/core/Frame;
    iget-object v2, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v2, v0, v1}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 97
    const-string v2, "image"

    invoke-virtual {p0, v2, v1}, Landroid/filterpacks/imageproc/ToRGBAFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 100
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 101
    return-void
.end method

.method public setupPorts()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 49
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    invoke-direct {v0, v1, v1}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .line 51
    .local v0, "mask":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensionCount(I)V

    .line 52
    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/ToRGBAFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 53
    const-string v1, "image"

    const-string v2, "image"

    invoke-virtual {p0, v1, v2}, Landroid/filterpacks/imageproc/ToRGBAFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method
