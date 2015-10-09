.class public abstract Landroid/filterpacks/imageproc/SimpleImageFilter;
.super Landroid/filterfw/core/Filter;
.source "SimpleImageFilter.java"


# instance fields
.field protected mCurrentTarget:I

.field protected mParameterName:Ljava/lang/String;

.field protected mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameterName"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mCurrentTarget:I

    .line 46
    iput-object p2, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mParameterName:Ljava/lang/String;

    .line 47
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
    .line 65
    return-object p2
.end method

.method protected abstract getShaderProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 71
    const-string v3, "image"

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/SimpleImageFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 72
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 75
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 78
    .local v2, "output":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, v3, p1}, Landroid/filterpacks/imageproc/SimpleImageFilter;->updateProgramWithTarget(ILandroid/filterfw/core/FilterContext;)V

    .line 81
    iget-object v3, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 84
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/SimpleImageFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 87
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 88
    return-void
.end method

.method public setupPorts()V
    .locals 7

    .prologue
    .line 51
    iget-object v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mParameterName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 53
    :try_start_0
    const-class v0, Landroid/filterpacks/imageproc/SimpleImageFilter;

    const-string v1, "mProgram"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 54
    .local v3, "programField":Ljava/lang/reflect/Field;
    iget-object v1, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mParameterName:Ljava/lang/String;

    iget-object v2, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mParameterName:Ljava/lang/String;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/filterpacks/imageproc/SimpleImageFilter;->addProgramPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v3    # "programField":Ljava/lang/reflect/Field;
    :cond_0
    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/SimpleImageFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 60
    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/SimpleImageFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void

    .line 55
    :catch_0
    move-exception v6

    .line 56
    .local v6, "e":Ljava/lang/NoSuchFieldException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal Error: mProgram field not found!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected updateProgramWithTarget(ILandroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 91
    iget v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mCurrentTarget:I

    if-eq p1, v0, :cond_1

    .line 92
    packed-switch p1, :pswitch_data_0

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 105
    :goto_0
    iget-object v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    if-nez v0, :cond_0

    .line 106
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

    .line 94
    :pswitch_0
    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/SimpleImageFilter;->getNativeProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 98
    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/SimpleImageFilter;->getShaderProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {p0, v0, p2}, Landroid/filterpacks/imageproc/SimpleImageFilter;->initProgramInputs(Landroid/filterfw/core/Program;Landroid/filterfw/core/FilterContext;)V

    .line 109
    iput p1, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mCurrentTarget:I

    .line 111
    :cond_1
    return-void

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
