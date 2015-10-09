.class public Landroid/filterfw/core/SimpleFrameManager;
.super Landroid/filterfw/core/FrameManager;
.source "SimpleFrameManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/filterfw/core/FrameManager;-><init>()V

    .line 34
    return-void
.end method

.method private createNewFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;
    .locals 5
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, "result":Landroid/filterfw/core/Frame;
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 83
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported frame target type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    invoke-static {v4}, Landroid/filterfw/core/FrameFormat;->targetToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :pswitch_0
    new-instance v1, Landroid/filterfw/core/SimpleFrame;

    .end local v1    # "result":Landroid/filterfw/core/Frame;
    invoke-direct {v1, p1, p0}, Landroid/filterfw/core/SimpleFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 86
    .restart local v1    # "result":Landroid/filterfw/core/Frame;
    :goto_0
    return-object v1

    .line 67
    :pswitch_1
    new-instance v1, Landroid/filterfw/core/NativeFrame;

    .end local v1    # "result":Landroid/filterfw/core/Frame;
    invoke-direct {v1, p1, p0}, Landroid/filterfw/core/NativeFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 68
    .restart local v1    # "result":Landroid/filterfw/core/Frame;
    goto :goto_0

    .line 71
    :pswitch_2
    new-instance v0, Landroid/filterfw/core/GLFrame;

    invoke-direct {v0, p1, p0}, Landroid/filterfw/core/GLFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 72
    .local v0, "glFrame":Landroid/filterfw/core/GLFrame;
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrameManager;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/filterfw/core/GLFrame;->init(Landroid/filterfw/core/GLEnvironment;)V

    .line 73
    move-object v1, v0

    .line 74
    goto :goto_0

    .line 78
    .end local v0    # "glFrame":Landroid/filterfw/core/GLFrame;
    :pswitch_3
    new-instance v1, Landroid/filterfw/core/VertexFrame;

    .end local v1    # "result":Landroid/filterfw/core/Frame;
    invoke-direct {v1, p1, p0}, Landroid/filterfw/core/VertexFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 79
    .restart local v1    # "result":Landroid/filterfw/core/Frame;
    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;
    .locals 7
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "bindingType"    # I
    .param p3, "bindingId"    # J

    .prologue
    .line 43
    const/4 v6, 0x0

    .line 44
    .local v6, "result":Landroid/filterfw/core/Frame;
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 53
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attached frames are not supported for target type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-static {v3}, Landroid/filterfw/core/FrameFormat;->targetToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/GLFrame;

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/filterfw/core/GLFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;IJ)V

    .line 47
    .local v0, "glFrame":Landroid/filterfw/core/GLFrame;
    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrameManager;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLFrame;->init(Landroid/filterfw/core/GLEnvironment;)V

    .line 48
    move-object v6, v0

    .line 56
    return-object v6

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;
    .locals 1
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/filterfw/core/SimpleFrameManager;->createNewFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v0

    return-object v0
.end method

.method public releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .locals 3
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->decRefCount()I

    move-result v0

    .line 98
    .local v0, "refCount":I
    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->hasNativeAllocation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->releaseNativeAllocation()V

    .line 100
    const/4 p1, 0x0

    .line 104
    .end local p1    # "frame":Landroid/filterfw/core/Frame;
    :cond_0
    return-object p1

    .line 101
    .restart local p1    # "frame":Landroid/filterfw/core/Frame;
    :cond_1
    if-gez v0, :cond_0

    .line 102
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Frame reference count dropped below 0!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .locals 0
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->incRefCount()I

    .line 92
    return-object p1
.end method
