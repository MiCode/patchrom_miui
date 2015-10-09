.class public Landroid/filterpacks/imageproc/ImageStitcher;
.super Landroid/filterfw/core/Filter;
.source "ImageStitcher.java"


# instance fields
.field private mImageHeight:I

.field private mImageWidth:I

.field private mInputHeight:I

.field private mInputWidth:I

.field private mOutputFrame:Landroid/filterfw/core/Frame;

.field private mPadSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "padSize"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;

.field private mSliceHeight:I

.field private mSliceIndex:I

.field private mSliceWidth:I

.field private mXSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "xSlices"
    .end annotation
.end field

.field private mYSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "ySlices"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    .line 61
    return-void
.end method

.method private calcOutputFormatForInput(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 3
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 78
    .local v0, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    .line 79
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    .line 81
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    .line 82
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    .line 84
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    .line 85
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mYSlices:I

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    .line 87
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 88
    return-object v0
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 72
    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 13
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 94
    const-string v8, "image"

    invoke-virtual {p0, v8}, Landroid/filterpacks/imageproc/ImageStitcher;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 95
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    .line 98
    .local v0, "format":Landroid/filterfw/core/FrameFormat;
    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    if-nez v8, :cond_3

    .line 99
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v8

    invoke-direct {p0, v0}, Landroid/filterpacks/imageproc/ImageStitcher;->calcOutputFormatForInput(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v8

    iput-object v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    .line 109
    :cond_0
    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    if-nez v8, :cond_1

    .line 110
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v8

    iput-object v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    .line 114
    :cond_1
    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    int-to-float v8, v8

    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 115
    .local v6, "x0":F
    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    int-to-float v8, v8

    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    int-to-float v9, v9

    div-float v7, v8, v9

    .line 117
    .local v7, "y0":F
    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    rem-int/2addr v8, v9

    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    mul-int v3, v8, v9

    .line 118
    .local v3, "outputOffsetX":I
    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    div-int/2addr v8, v9

    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    mul-int v4, v8, v9

    .line 120
    .local v4, "outputOffsetY":I
    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    sub-int/2addr v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v5, v8

    .line 121
    .local v5, "outputWidth":F
    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    sub-int/2addr v9, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v2, v8

    .line 124
    .local v2, "outputHeight":F
    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    check-cast v8, Landroid/filterfw/core/ShaderProgram;

    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    int-to-float v9, v9

    div-float v9, v5, v9

    iget v10, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    int-to-float v10, v10

    div-float v10, v2, v10

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 128
    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    check-cast v8, Landroid/filterfw/core/ShaderProgram;

    int-to-float v9, v3

    iget v10, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v4

    iget v11, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iget v11, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    int-to-float v11, v11

    div-float v11, v5, v11

    iget v12, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    int-to-float v12, v12

    div-float v12, v2, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 134
    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    iget-object v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v8, v1, v9}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 135
    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    .line 138
    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    iget v10, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mYSlices:I

    mul-int/2addr v9, v10

    if-ne v8, v9, :cond_2

    .line 139
    const-string v8, "image"

    iget-object v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {p0, v8, v9}, Landroid/filterpacks/imageproc/ImageStitcher;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 140
    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v8}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 141
    const/4 v8, 0x0

    iput v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    .line 143
    :cond_2
    return-void

    .line 101
    .end local v2    # "outputHeight":F
    .end local v3    # "outputOffsetX":I
    .end local v4    # "outputOffsetY":I
    .end local v5    # "outputWidth":F
    .end local v6    # "x0":F
    .end local v7    # "y0":F
    :cond_3
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v8

    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    if-ne v8, v9, :cond_4

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    if-eq v8, v9, :cond_0

    .line 104
    :cond_4
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Image size should not change."

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 65
    const-string v0, "image"

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ImageStitcher;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 67
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ImageStitcher;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
