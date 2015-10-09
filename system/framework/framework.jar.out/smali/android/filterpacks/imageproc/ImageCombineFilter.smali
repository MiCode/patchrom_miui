.class public abstract Landroid/filterpacks/imageproc/ImageCombineFilter;
.super Landroid/filterfw/core/Filter;
.source "ImageCombineFilter.java"


# instance fields
.field protected mCurrentTarget:I

.field protected mInputNames:[Ljava/lang/String;

.field protected mOutputName:Ljava/lang/String;

.field protected mParameterName:Ljava/lang/String;

.field protected mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "inputNames"    # [Ljava/lang/String;
    .param p3, "outputName"    # Ljava/lang/String;
    .param p4, "parameterName"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mCurrentTarget:I

    .line 51
    iput-object p2, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    .line 52
    iput-object p3, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mOutputName:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mParameterName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private assertAllInputTargetsMatch()V
    .locals 8

    .prologue
    .line 78
    iget-object v5, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Landroid/filterpacks/imageproc/ImageCombineFilter;->getInputFormat(Ljava/lang/String;)Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    .line 79
    .local v4, "target":I
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 80
    .local v2, "inputName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/filterpacks/imageproc/ImageCombineFilter;->getInputFormat(Ljava/lang/String;)Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 81
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Type mismatch of input formats in filter "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". All input frames must have the same target!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 79
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v2    # "inputName":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract getNativeProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 74
    return-object p2
.end method

.method protected abstract getShaderProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 11
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v10, 0x0

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "i":I
    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    array-length v8, v8

    new-array v5, v8, [Landroid/filterfw/core/Frame;

    .line 92
    .local v5, "inputs":[Landroid/filterfw/core/Frame;
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v4, v0, v3

    .line 93
    .local v4, "inputName":Ljava/lang/String;
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v4}, Landroid/filterpacks/imageproc/ImageCombineFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v8

    aput-object v8, v5, v2

    .line 92
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 97
    .end local v4    # "inputName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v8

    aget-object v9, v5, v10

    invoke-virtual {v9}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v7

    .line 100
    .local v7, "output":Landroid/filterfw/core/Frame;
    aget-object v8, v5, v10

    invoke-virtual {v8}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v8

    invoke-virtual {v8}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v8

    invoke-virtual {p0, v8, p1}, Landroid/filterpacks/imageproc/ImageCombineFilter;->updateProgramWithTarget(ILandroid/filterfw/core/FilterContext;)V

    .line 103
    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v8, v5, v7}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 106
    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mOutputName:Ljava/lang/String;

    invoke-virtual {p0, v8, v7}, Landroid/filterpacks/imageproc/ImageCombineFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 109
    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 110
    return-void
.end method

.method public setupPorts()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 58
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mParameterName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    :try_start_0
    const-class v0, Landroid/filterpacks/imageproc/ImageCombineFilter;

    const-string v1, "mProgram"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 61
    .local v3, "programField":Ljava/lang/reflect/Field;
    iget-object v1, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mParameterName:Ljava/lang/String;

    iget-object v2, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mParameterName:Ljava/lang/String;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/filterpacks/imageproc/ImageCombineFilter;->addProgramPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v3    # "programField":Ljava/lang/reflect/Field;
    :cond_0
    iget-object v6, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    .local v6, "arr$":[Ljava/lang/String;
    array-length v10, v6

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v10, :cond_1

    aget-object v9, v6, v8

    .line 67
    .local v9, "inputName":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Landroid/filterpacks/imageproc/ImageCombineFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 66
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 62
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "inputName":Ljava/lang/String;
    .end local v10    # "len$":I
    :catch_0
    move-exception v7

    .line 63
    .local v7, "e":Ljava/lang/NoSuchFieldException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal Error: mProgram field not found!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    .end local v7    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v8    # "i$":I
    .restart local v10    # "len$":I
    :cond_1
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mOutputName:Ljava/lang/String;

    iget-object v1, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    aget-object v1, v1, v11

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ImageCombineFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected updateProgramWithTarget(ILandroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 113
    iget v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mCurrentTarget:I

    if-eq p1, v0, :cond_1

    .line 114
    packed-switch p1, :pswitch_data_0

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 127
    :goto_0
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create a program for image filter "

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

    .line 116
    :pswitch_0
    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/ImageCombineFilter;->getNativeProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 120
    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/ImageCombineFilter;->getShaderProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {p0, v0, p2}, Landroid/filterpacks/imageproc/ImageCombineFilter;->initProgramInputs(Landroid/filterfw/core/Program;Landroid/filterfw/core/FilterContext;)V

    .line 132
    iput p1, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mCurrentTarget:I

    .line 134
    :cond_1
    return-void

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
