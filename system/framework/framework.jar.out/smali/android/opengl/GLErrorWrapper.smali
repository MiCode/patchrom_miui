.class Landroid/opengl/GLErrorWrapper;
.super Landroid/opengl/GLWrapperBase;
.source "GLErrorWrapper.java"


# instance fields
.field mCheckError:Z

.field mCheckThread:Z

.field mOurThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL;I)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL;
    .param p2, "configFlags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/opengl/GLWrapperBase;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    .line 40
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/opengl/GLErrorWrapper;->mCheckError:Z

    .line 41
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/opengl/GLErrorWrapper;->mCheckThread:Z

    .line 42
    return-void

    :cond_0
    move v0, v2

    .line 40
    goto :goto_0

    :cond_1
    move v1, v2

    .line 41
    goto :goto_1
.end method

.method private checkError()V
    .locals 2

    .prologue
    .line 59
    iget-boolean v1, p0, Landroid/opengl/GLErrorWrapper;->mCheckError:Z

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .local v0, "glError":I
    if-eqz v0, :cond_0

    .line 62
    new-instance v1, Landroid/opengl/GLException;

    invoke-direct {v1, v0}, Landroid/opengl/GLException;-><init>(I)V

    throw v1

    .line 65
    .end local v0    # "glError":I
    :cond_0
    return-void
.end method

.method private checkThread()V
    .locals 4

    .prologue
    .line 45
    iget-boolean v1, p0, Landroid/opengl/GLErrorWrapper;->mCheckThread:Z

    if-eqz v1, :cond_0

    .line 46
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 47
    .local v0, "currentThread":Ljava/lang/Thread;
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mOurThread:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 48
    iput-object v0, p0, Landroid/opengl/GLErrorWrapper;->mOurThread:Ljava/lang/Thread;

    .line 56
    .end local v0    # "currentThread":Ljava/lang/Thread;
    :cond_0
    return-void

    .line 50
    .restart local v0    # "currentThread":Ljava/lang/Thread;
    :cond_1
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mOurThread:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Landroid/opengl/GLException;

    const/16 v2, 0x7000

    const-string v3, "OpenGL method called from wrong thread."

    invoke-direct {v1, v2, v3}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public glActiveTexture(I)V
    .locals 1
    .param p1, "texture"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 72
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 73
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 74
    return-void
.end method

.method public glAlphaFunc(IF)V
    .locals 1
    .param p1, "func"    # I
    .param p2, "ref"    # F

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 78
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    .line 79
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 80
    return-void
.end method

.method public glAlphaFuncx(II)V
    .locals 1
    .param p1, "func"    # I
    .param p2, "ref"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 84
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFuncx(II)V

    .line 85
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 86
    return-void
.end method

.method public glBindBuffer(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "buffer"    # I

    .prologue
    .line 963
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 964
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 965
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 966
    return-void
.end method

.method public glBindFramebufferOES(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "framebuffer"    # I

    .prologue
    .line 1382
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1383
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 1384
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1385
    return-void
.end method

.method public glBindRenderbufferOES(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "renderbuffer"    # I

    .prologue
    .line 1389
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1390
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindRenderbufferOES(II)V

    .line 1391
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1392
    return-void
.end method

.method public glBindTexture(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "texture"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 90
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 91
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 92
    return-void
.end method

.method public glBlendEquation(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1396
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1397
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBlendEquation(I)V

    .line 1398
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1399
    return-void
.end method

.method public glBlendEquationSeparate(II)V
    .locals 1
    .param p1, "modeRGB"    # I
    .param p2, "modeAlpha"    # I

    .prologue
    .line 1403
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1404
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBlendEquationSeparate(II)V

    .line 1405
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1406
    return-void
.end method

.method public glBlendFunc(II)V
    .locals 1
    .param p1, "sfactor"    # I
    .param p2, "dfactor"    # I

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 96
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 97
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 98
    return-void
.end method

.method public glBlendFuncSeparate(IIII)V
    .locals 1
    .param p1, "srcRGB"    # I
    .param p2, "dstRGB"    # I
    .param p3, "srcAlpha"    # I
    .param p4, "dstAlpha"    # I

    .prologue
    .line 1411
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1412
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBlendFuncSeparate(IIII)V

    .line 1413
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1414
    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "size"    # I
    .param p3, "data"    # Ljava/nio/Buffer;
    .param p4, "usage"    # I

    .prologue
    .line 969
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 970
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 971
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 972
    return-void
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "data"    # Ljava/nio/Buffer;

    .prologue
    .line 975
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 976
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 977
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 978
    return-void
.end method

.method public glCheckFramebufferStatusOES(I)I
    .locals 2
    .param p1, "target"    # I

    .prologue
    .line 1418
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1419
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    move-result v0

    .line 1420
    .local v0, "result":I
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1421
    return v0
.end method

.method public glClear(I)V
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 102
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 103
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 104
    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 108
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 109
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 110
    return-void
.end method

.method public glClearColorx(IIII)V
    .locals 1
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I
    .param p4, "alpha"    # I

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 114
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColorx(IIII)V

    .line 115
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 116
    return-void
.end method

.method public glClearDepthf(F)V
    .locals 1
    .param p1, "depth"    # F

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 120
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    .line 121
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 122
    return-void
.end method

.method public glClearDepthx(I)V
    .locals 1
    .param p1, "depth"    # I

    .prologue
    .line 125
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 126
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthx(I)V

    .line 127
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 128
    return-void
.end method

.method public glClearStencil(I)V
    .locals 1
    .param p1, "s"    # I

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 132
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    .line 133
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 134
    return-void
.end method

.method public glClientActiveTexture(I)V
    .locals 1
    .param p1, "texture"    # I

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 138
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    .line 139
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 140
    return-void
.end method

.method public glClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "plane"    # I
    .param p2, "equation"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 853
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 854
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(ILjava/nio/FloatBuffer;)V

    .line 855
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 856
    return-void
.end method

.method public glClipPlanef(I[FI)V
    .locals 1
    .param p1, "plane"    # I
    .param p2, "equation"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 847
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 848
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(I[FI)V

    .line 849
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 850
    return-void
.end method

.method public glClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "plane"    # I
    .param p2, "equation"    # Ljava/nio/IntBuffer;

    .prologue
    .line 865
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 866
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(ILjava/nio/IntBuffer;)V

    .line 867
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 868
    return-void
.end method

.method public glClipPlanex(I[II)V
    .locals 1
    .param p1, "plane"    # I
    .param p2, "equation"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 859
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 860
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(I[II)V

    .line 861
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 862
    return-void
.end method

.method public glColor4f(FFFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 144
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 145
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 146
    return-void
.end method

.method public glColor4ub(BBBB)V
    .locals 1
    .param p1, "red"    # B
    .param p2, "green"    # B
    .param p3, "blue"    # B
    .param p4, "alpha"    # B

    .prologue
    .line 981
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 982
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glColor4ub(BBBB)V

    .line 983
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glColor4x(IIII)V
    .locals 1
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I
    .param p4, "alpha"    # I

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 150
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 151
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 152
    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 1
    .param p1, "red"    # Z
    .param p2, "green"    # Z
    .param p3, "blue"    # Z
    .param p4, "alpha"    # Z

    .prologue
    .line 156
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 157
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    .line 158
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 159
    return-void
.end method

.method public glColorPointer(IIII)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "offset"    # I

    .prologue
    .line 986
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 987
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    .line 988
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 989
    return-void
.end method

.method public glColorPointer(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 162
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 163
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 164
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 165
    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 9
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "border"    # I
    .param p7, "imageSize"    # I
    .param p8, "data"    # Ljava/nio/Buffer;

    .prologue
    .line 170
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 171
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 173
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 174
    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "format"    # I
    .param p8, "imageSize"    # I
    .param p9, "data"    # Ljava/nio/Buffer;

    .prologue
    .line 179
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 180
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 182
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 183
    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 9
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "border"    # I

    .prologue
    .line 187
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 188
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    .line 190
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 191
    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 9
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I

    .prologue
    .line 195
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 196
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexSubImage2D(IIIIIIII)V

    .line 198
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 199
    return-void
.end method

.method public glCullFace(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 202
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 203
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 204
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 205
    return-void
.end method

.method public glCurrentPaletteMatrixOES(I)V
    .locals 1
    .param p1, "matrixpaletteindex"    # I

    .prologue
    .line 1342
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1343
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glCurrentPaletteMatrixOES(I)V

    .line 1344
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1345
    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "buffers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 998
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 999
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 1000
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1001
    return-void
.end method

.method public glDeleteBuffers(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "buffers"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 992
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 993
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 994
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 995
    return-void
.end method

.method public glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "framebuffers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1433
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1434
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V

    .line 1435
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1436
    return-void
.end method

.method public glDeleteFramebuffersOES(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "framebuffers"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1426
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1427
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V

    .line 1428
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1429
    return-void
.end method

.method public glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "renderbuffers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1447
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1448
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V

    .line 1449
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1450
    return-void
.end method

.method public glDeleteRenderbuffersOES(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "renderbuffers"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1440
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1441
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteRenderbuffersOES(I[II)V

    .line 1442
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1443
    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    .prologue
    .line 214
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 215
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 216
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 217
    return-void
.end method

.method public glDeleteTextures(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 208
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 209
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 210
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 211
    return-void
.end method

.method public glDepthFunc(I)V
    .locals 1
    .param p1, "func"    # I

    .prologue
    .line 220
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 221
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 222
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 223
    return-void
.end method

.method public glDepthMask(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 226
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 227
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 228
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 229
    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 1
    .param p1, "near"    # F
    .param p2, "far"    # F

    .prologue
    .line 232
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 233
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangef(FF)V

    .line 234
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 235
    return-void
.end method

.method public glDepthRangex(II)V
    .locals 1
    .param p1, "near"    # I
    .param p2, "far"    # I

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 239
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangex(II)V

    .line 240
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 241
    return-void
.end method

.method public glDisable(I)V
    .locals 1
    .param p1, "cap"    # I

    .prologue
    .line 244
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 245
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 246
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 247
    return-void
.end method

.method public glDisableClientState(I)V
    .locals 1
    .param p1, "array"    # I

    .prologue
    .line 250
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 251
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 252
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 253
    return-void
.end method

.method public glDrawArrays(III)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "first"    # I
    .param p3, "count"    # I

    .prologue
    .line 256
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 257
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 258
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 259
    return-void
.end method

.method public glDrawElements(IIII)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "offset"    # I

    .prologue
    .line 1004
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1005
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 1006
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1007
    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "indices"    # Ljava/nio/Buffer;

    .prologue
    .line 262
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 263
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 264
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 265
    return-void
.end method

.method public glDrawTexfOES(FFFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 874
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 875
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 876
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 877
    return-void
.end method

.method public glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "coords"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 886
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 887
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES(Ljava/nio/FloatBuffer;)V

    .line 888
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 889
    return-void
.end method

.method public glDrawTexfvOES([FI)V
    .locals 1
    .param p1, "coords"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 880
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 881
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES([FI)V

    .line 882
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 883
    return-void
.end method

.method public glDrawTexiOES(IIIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 892
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 893
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 894
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 895
    return-void
.end method

.method public glDrawTexivOES(Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "coords"    # Ljava/nio/IntBuffer;

    .prologue
    .line 904
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 905
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES(Ljava/nio/IntBuffer;)V

    .line 906
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 907
    return-void
.end method

.method public glDrawTexivOES([II)V
    .locals 1
    .param p1, "coords"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 898
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 899
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES([II)V

    .line 900
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 901
    return-void
.end method

.method public glDrawTexsOES(SSSSS)V
    .locals 6
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "z"    # S
    .param p4, "width"    # S
    .param p5, "height"    # S

    .prologue
    .line 911
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 912
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsOES(SSSSS)V

    .line 913
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 914
    return-void
.end method

.method public glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
    .locals 1
    .param p1, "coords"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 923
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 924
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES(Ljava/nio/ShortBuffer;)V

    .line 925
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 926
    return-void
.end method

.method public glDrawTexsvOES([SI)V
    .locals 1
    .param p1, "coords"    # [S
    .param p2, "offset"    # I

    .prologue
    .line 917
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 918
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES([SI)V

    .line 919
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 920
    return-void
.end method

.method public glDrawTexxOES(IIIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 929
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 930
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxOES(IIIII)V

    .line 931
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 932
    return-void
.end method

.method public glDrawTexxvOES(Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "coords"    # Ljava/nio/IntBuffer;

    .prologue
    .line 941
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 942
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES(Ljava/nio/IntBuffer;)V

    .line 943
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 944
    return-void
.end method

.method public glDrawTexxvOES([II)V
    .locals 1
    .param p1, "coords"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 935
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 936
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES([II)V

    .line 937
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 938
    return-void
.end method

.method public glEnable(I)V
    .locals 1
    .param p1, "cap"    # I

    .prologue
    .line 268
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 269
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 270
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 271
    return-void
.end method

.method public glEnableClientState(I)V
    .locals 1
    .param p1, "array"    # I

    .prologue
    .line 274
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 275
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 276
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 277
    return-void
.end method

.method public glFinish()V
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 281
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    .line 282
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 283
    return-void
.end method

.method public glFlush()V
    .locals 1

    .prologue
    .line 286
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 287
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    .line 288
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 289
    return-void
.end method

.method public glFogf(IF)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # F

    .prologue
    .line 292
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 293
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 294
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 295
    return-void
.end method

.method public glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 304
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 305
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    .line 306
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 307
    return-void
.end method

.method public glFogfv(I[FI)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 298
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 299
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(I[FI)V

    .line 300
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 301
    return-void
.end method

.method public glFogx(II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .prologue
    .line 310
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 311
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogx(II)V

    .line 312
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 313
    return-void
.end method

.method public glFogxv(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 322
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 323
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(ILjava/nio/IntBuffer;)V

    .line 324
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 325
    return-void
.end method

.method public glFogxv(I[II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 316
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 317
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(I[II)V

    .line 318
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 319
    return-void
.end method

.method public glFramebufferRenderbufferOES(IIII)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "renderbuffertarget"    # I
    .param p4, "renderbuffer"    # I

    .prologue
    .line 1455
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1456
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferRenderbufferOES(IIII)V

    .line 1457
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1458
    return-void
.end method

.method public glFramebufferTexture2DOES(IIIII)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "textarget"    # I
    .param p4, "texture"    # I
    .param p5, "level"    # I

    .prologue
    .line 1463
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1464
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    .line 1465
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1466
    return-void
.end method

.method public glFrontFace(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 328
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 329
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 330
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 331
    return-void
.end method

.method public glFrustumf(FFFFFF)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    .prologue
    .line 335
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 336
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 337
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 338
    return-void
.end method

.method public glFrustumx(IIIIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "top"    # I
    .param p5, "near"    # I
    .param p6, "far"    # I

    .prologue
    .line 342
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 343
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumx(IIIIII)V

    .line 344
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 345
    return-void
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "buffers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1016
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1017
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 1018
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1019
    return-void
.end method

.method public glGenBuffers(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "buffers"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1010
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1011
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 1012
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1013
    return-void
.end method

.method public glGenFramebuffersOES(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "framebuffers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1484
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1485
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenFramebuffersOES(ILjava/nio/IntBuffer;)V

    .line 1486
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1487
    return-void
.end method

.method public glGenFramebuffersOES(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "framebuffers"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1477
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1478
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenFramebuffersOES(I[II)V

    .line 1479
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1480
    return-void
.end method

.method public glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "renderbuffers"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1498
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1499
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V

    .line 1500
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1501
    return-void
.end method

.method public glGenRenderbuffersOES(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "renderbuffers"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1491
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1492
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenRenderbuffersOES(I[II)V

    .line 1493
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1494
    return-void
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 355
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 356
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 357
    return-void
.end method

.method public glGenTextures(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 348
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 349
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 350
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 351
    return-void
.end method

.method public glGenerateMipmapOES(I)V
    .locals 1
    .param p1, "target"    # I

    .prologue
    .line 1470
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1471
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenerateMipmapOES(I)V

    .line 1472
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1473
    return-void
.end method

.method public glGetBooleanv(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1028
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1029
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    .line 1030
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1031
    return-void
.end method

.method public glGetBooleanv(I[ZI)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [Z
    .param p3, "offset"    # I

    .prologue
    .line 1022
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1023
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetBooleanv(I[ZI)V

    .line 1024
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1025
    return-void
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1041
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1042
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    .line 1043
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1044
    return-void
.end method

.method public glGetBufferParameteriv(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1035
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1036
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetBufferParameteriv(II[II)V

    .line 1037
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1038
    return-void
.end method

.method public glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "eqn"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1053
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1054
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanef(ILjava/nio/FloatBuffer;)V

    .line 1055
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1056
    return-void
.end method

.method public glGetClipPlanef(I[FI)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "eqn"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 1047
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1048
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanef(I[FI)V

    .line 1049
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1050
    return-void
.end method

.method public glGetClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "eqn"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1065
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1066
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanex(ILjava/nio/IntBuffer;)V

    .line 1067
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1068
    return-void
.end method

.method public glGetClipPlanex(I[II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "eqn"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1059
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1060
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanex(I[II)V

    .line 1061
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1062
    return-void
.end method

.method public glGetError()I
    .locals 2

    .prologue
    .line 360
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 361
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .line 362
    .local v0, "result":I
    return v0
.end method

.method public glGetFixedv(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1077
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1078
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetFixedv(ILjava/nio/IntBuffer;)V

    .line 1079
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1080
    return-void
.end method

.method public glGetFixedv(I[II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1071
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1072
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetFixedv(I[II)V

    .line 1073
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1074
    return-void
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1089
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1090
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    .line 1091
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1092
    return-void
.end method

.method public glGetFloatv(I[FI)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 1083
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1084
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(I[FI)V

    .line 1085
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1086
    return-void
.end method

.method public glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "pname"    # I
    .param p4, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1514
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1515
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V

    .line 1516
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1517
    return-void
.end method

.method public glGetFramebufferAttachmentParameterivOES(III[II)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "pname"    # I
    .param p4, "params"    # [I
    .param p5, "offset"    # I

    .prologue
    .line 1506
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1507
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetFramebufferAttachmentParameterivOES(III[II)V

    .line 1508
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1509
    return-void
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 373
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 374
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 375
    return-void
.end method

.method public glGetIntegerv(I[II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 366
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 367
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 368
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 369
    return-void
.end method

.method public glGetLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1101
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1102
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightfv(IILjava/nio/FloatBuffer;)V

    .line 1103
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1104
    return-void
.end method

.method public glGetLightfv(II[FI)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 1095
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1096
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightfv(II[FI)V

    .line 1097
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1098
    return-void
.end method

.method public glGetLightxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1113
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1114
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightxv(IILjava/nio/IntBuffer;)V

    .line 1115
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1116
    return-void
.end method

.method public glGetLightxv(II[II)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1107
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1108
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightxv(II[II)V

    .line 1109
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1110
    return-void
.end method

.method public glGetMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1125
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1126
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 1127
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1128
    return-void
.end method

.method public glGetMaterialfv(II[FI)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 1119
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1120
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialfv(II[FI)V

    .line 1121
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1122
    return-void
.end method

.method public glGetMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1137
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1138
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialxv(IILjava/nio/IntBuffer;)V

    .line 1139
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1140
    return-void
.end method

.method public glGetMaterialxv(II[II)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1131
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1132
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialxv(II[II)V

    .line 1133
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1134
    return-void
.end method

.method public glGetPointerv(I[Ljava/nio/Buffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [Ljava/nio/Buffer;

    .prologue
    .line 1143
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1144
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetPointerv(I[Ljava/nio/Buffer;)V

    .line 1145
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1146
    return-void
.end method

.method public glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1530
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1531
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V

    .line 1532
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1533
    return-void
.end method

.method public glGetRenderbufferParameterivOES(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1522
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1523
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetRenderbufferParameterivOES(II[II)V

    .line 1524
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1525
    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # I

    .prologue
    .line 378
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 379
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 381
    return-object v0
.end method

.method public glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "env"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1155
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1156
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(IILjava/nio/IntBuffer;)V

    .line 1157
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1158
    return-void
.end method

.method public glGetTexEnviv(II[II)V
    .locals 1
    .param p1, "env"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1149
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1150
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(II[II)V

    .line 1151
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1152
    return-void
.end method

.method public glGetTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "env"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1167
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1168
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnvxv(IILjava/nio/IntBuffer;)V

    .line 1169
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1170
    return-void
.end method

.method public glGetTexEnvxv(II[II)V
    .locals 1
    .param p1, "env"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1161
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1162
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnvxv(II[II)V

    .line 1163
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1164
    return-void
.end method

.method public glGetTexGenfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1544
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1545
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenfv(IILjava/nio/FloatBuffer;)V

    .line 1546
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1547
    return-void
.end method

.method public glGetTexGenfv(II[FI)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 1537
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1538
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenfv(II[FI)V

    .line 1539
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1540
    return-void
.end method

.method public glGetTexGeniv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1558
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1559
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGeniv(IILjava/nio/IntBuffer;)V

    .line 1560
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1561
    return-void
.end method

.method public glGetTexGeniv(II[II)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1551
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1552
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGeniv(II[II)V

    .line 1553
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1554
    return-void
.end method

.method public glGetTexGenxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1572
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1573
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenxv(IILjava/nio/IntBuffer;)V

    .line 1574
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1575
    return-void
.end method

.method public glGetTexGenxv(II[II)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1565
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1566
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenxv(II[II)V

    .line 1567
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1568
    return-void
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1180
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1181
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 1182
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1183
    return-void
.end method

.method public glGetTexParameterfv(II[FI)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 1174
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1175
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterfv(II[FI)V

    .line 1176
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1177
    return-void
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1193
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1194
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 1195
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1196
    return-void
.end method

.method public glGetTexParameteriv(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1187
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1188
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameteriv(II[II)V

    .line 1189
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1190
    return-void
.end method

.method public glGetTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1206
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1207
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterxv(IILjava/nio/IntBuffer;)V

    .line 1208
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1209
    return-void
.end method

.method public glGetTexParameterxv(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1200
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1201
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterxv(II[II)V

    .line 1202
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1203
    return-void
.end method

.method public glHint(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "mode"    # I

    .prologue
    .line 385
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 386
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 387
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 388
    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 2
    .param p1, "buffer"    # I

    .prologue
    .line 1212
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1213
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsBuffer(I)Z

    move-result v0

    .line 1214
    .local v0, "valid":Z
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1215
    return v0
.end method

.method public glIsEnabled(I)Z
    .locals 2
    .param p1, "cap"    # I

    .prologue
    .line 1219
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1220
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsEnabled(I)Z

    move-result v0

    .line 1221
    .local v0, "valid":Z
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1222
    return v0
.end method

.method public glIsFramebufferOES(I)Z
    .locals 2
    .param p1, "framebuffer"    # I

    .prologue
    .line 1579
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1580
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glIsFramebufferOES(I)Z

    move-result v0

    .line 1581
    .local v0, "result":Z
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1582
    return v0
.end method

.method public glIsRenderbufferOES(I)Z
    .locals 1
    .param p1, "renderbuffer"    # I

    .prologue
    .line 1587
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1588
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glIsRenderbufferOES(I)Z

    .line 1589
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1590
    const/4 v0, 0x0

    return v0
.end method

.method public glIsTexture(I)Z
    .locals 2
    .param p1, "texture"    # I

    .prologue
    .line 1226
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1227
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsTexture(I)Z

    move-result v0

    .line 1228
    .local v0, "valid":Z
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1229
    return v0
.end method

.method public glLightModelf(IF)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # F

    .prologue
    .line 391
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 392
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelf(IF)V

    .line 393
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 394
    return-void
.end method

.method public glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 403
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 404
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    .line 405
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 406
    return-void
.end method

.method public glLightModelfv(I[FI)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 397
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 398
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    .line 399
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 400
    return-void
.end method

.method public glLightModelx(II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .prologue
    .line 409
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 410
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    .line 411
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 412
    return-void
.end method

.method public glLightModelxv(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 421
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 422
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(ILjava/nio/IntBuffer;)V

    .line 423
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 424
    return-void
.end method

.method public glLightModelxv(I[II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 415
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 416
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(I[II)V

    .line 417
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 418
    return-void
.end method

.method public glLightf(IIF)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 427
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 428
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    .line 429
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 430
    return-void
.end method

.method public glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 439
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 440
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    .line 441
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 442
    return-void
.end method

.method public glLightfv(II[FI)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 433
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 434
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 435
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 436
    return-void
.end method

.method public glLightx(III)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 445
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 446
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightx(III)V

    .line 447
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 448
    return-void
.end method

.method public glLightxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 457
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 458
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(IILjava/nio/IntBuffer;)V

    .line 459
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 460
    return-void
.end method

.method public glLightxv(II[II)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 451
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 452
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(II[II)V

    .line 453
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 454
    return-void
.end method

.method public glLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 463
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 464
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 465
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 466
    return-void
.end method

.method public glLineWidthx(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 469
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 470
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    .line 471
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 472
    return-void
.end method

.method public glLoadIdentity()V
    .locals 1

    .prologue
    .line 475
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 476
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 477
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 478
    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "m"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 487
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 488
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 489
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 490
    return-void
.end method

.method public glLoadMatrixf([FI)V
    .locals 1
    .param p1, "m"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 481
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 482
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 483
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 484
    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "m"    # Ljava/nio/IntBuffer;

    .prologue
    .line 499
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 500
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    .line 501
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 502
    return-void
.end method

.method public glLoadMatrixx([II)V
    .locals 1
    .param p1, "m"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 493
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 494
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx([II)V

    .line 495
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 496
    return-void
.end method

.method public glLoadPaletteFromModelViewMatrixOES()V
    .locals 1

    .prologue
    .line 1348
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1349
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11Ext;->glLoadPaletteFromModelViewMatrixOES()V

    .line 1350
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1351
    return-void
.end method

.method public glLogicOp(I)V
    .locals 1
    .param p1, "opcode"    # I

    .prologue
    .line 505
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 506
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLogicOp(I)V

    .line 507
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 508
    return-void
.end method

.method public glMaterialf(IIF)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 511
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 512
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    .line 513
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 514
    return-void
.end method

.method public glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 523
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 524
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 525
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 526
    return-void
.end method

.method public glMaterialfv(II[FI)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 517
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 518
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 519
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 520
    return-void
.end method

.method public glMaterialx(III)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 529
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 530
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialx(III)V

    .line 531
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 532
    return-void
.end method

.method public glMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 541
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 542
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(IILjava/nio/IntBuffer;)V

    .line 543
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 544
    return-void
.end method

.method public glMaterialxv(II[II)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 535
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 536
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(II[II)V

    .line 537
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 538
    return-void
.end method

.method public glMatrixIndexPointerOES(IIII)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "offset"    # I

    .prologue
    .line 1362
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1363
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glMatrixIndexPointerOES(IIII)V

    .line 1364
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1365
    return-void
.end method

.method public glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 1355
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1356
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V

    .line 1357
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1358
    return-void
.end method

.method public glMatrixMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 547
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 548
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 549
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 550
    return-void
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "m"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 559
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 560
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 561
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 562
    return-void
.end method

.method public glMultMatrixf([FI)V
    .locals 1
    .param p1, "m"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 553
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 554
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 555
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 556
    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "m"    # Ljava/nio/IntBuffer;

    .prologue
    .line 571
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 572
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    .line 573
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 574
    return-void
.end method

.method public glMultMatrixx([II)V
    .locals 1
    .param p1, "m"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 565
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 566
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx([II)V

    .line 567
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 568
    return-void
.end method

.method public glMultiTexCoord4f(IFFFF)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "s"    # F
    .param p3, "t"    # F
    .param p4, "r"    # F
    .param p5, "q"    # F

    .prologue
    .line 578
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 579
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4f(IFFFF)V

    .line 580
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 581
    return-void
.end method

.method public glMultiTexCoord4x(IIIII)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "s"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "q"    # I

    .prologue
    .line 584
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 585
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4x(IIIII)V

    .line 586
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 587
    return-void
.end method

.method public glNormal3f(FFF)V
    .locals 1
    .param p1, "nx"    # F
    .param p2, "ny"    # F
    .param p3, "nz"    # F

    .prologue
    .line 590
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 591
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3f(FFF)V

    .line 592
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 593
    return-void
.end method

.method public glNormal3x(III)V
    .locals 1
    .param p1, "nx"    # I
    .param p2, "ny"    # I
    .param p3, "nz"    # I

    .prologue
    .line 596
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 597
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3x(III)V

    .line 598
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 599
    return-void
.end method

.method public glNormalPointer(III)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "stride"    # I
    .param p3, "offset"    # I

    .prologue
    .line 1233
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1234
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glNormalPointer(III)V

    .line 1235
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1236
    return-void
.end method

.method public glNormalPointer(IILjava/nio/Buffer;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "stride"    # I
    .param p3, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 602
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 603
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 604
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 605
    return-void
.end method

.method public glOrthof(FFFFFF)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    .prologue
    .line 609
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 610
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 611
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 612
    return-void
.end method

.method public glOrthox(IIIIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "top"    # I
    .param p5, "near"    # I
    .param p6, "far"    # I

    .prologue
    .line 616
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 617
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthox(IIIIII)V

    .line 618
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 619
    return-void
.end method

.method public glPixelStorei(II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .prologue
    .line 622
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 623
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPixelStorei(II)V

    .line 624
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 625
    return-void
.end method

.method public glPointParameterf(IF)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # F

    .prologue
    .line 1239
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1240
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterf(IF)V

    .line 1241
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1242
    return-void
.end method

.method public glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1251
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1252
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterfv(ILjava/nio/FloatBuffer;)V

    .line 1253
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1254
    return-void
.end method

.method public glPointParameterfv(I[FI)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 1245
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1246
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterfv(I[FI)V

    .line 1247
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1248
    return-void
.end method

.method public glPointParameterx(II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .prologue
    .line 1257
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1258
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterx(II)V

    .line 1259
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1260
    return-void
.end method

.method public glPointParameterxv(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1269
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1270
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterxv(ILjava/nio/IntBuffer;)V

    .line 1271
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1272
    return-void
.end method

.method public glPointParameterxv(I[II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 1263
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1264
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterxv(I[II)V

    .line 1265
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1266
    return-void
.end method

.method public glPointSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 628
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 629
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 630
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 631
    return-void
.end method

.method public glPointSizePointerOES(IILjava/nio/Buffer;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "stride"    # I
    .param p3, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 1275
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1276
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointSizePointerOES(IILjava/nio/Buffer;)V

    .line 1277
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1278
    return-void
.end method

.method public glPointSizex(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 634
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 635
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSizex(I)V

    .line 636
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 637
    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 1
    .param p1, "factor"    # F
    .param p2, "units"    # F

    .prologue
    .line 640
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 641
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffset(FF)V

    .line 642
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 643
    return-void
.end method

.method public glPolygonOffsetx(II)V
    .locals 1
    .param p1, "factor"    # I
    .param p2, "units"    # I

    .prologue
    .line 646
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 647
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffsetx(II)V

    .line 648
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 649
    return-void
.end method

.method public glPopMatrix()V
    .locals 1

    .prologue
    .line 652
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 653
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 654
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 655
    return-void
.end method

.method public glPushMatrix()V
    .locals 1

    .prologue
    .line 658
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 659
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 660
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 661
    return-void
.end method

.method public glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .locals 2
    .param p1, "mantissa"    # Ljava/nio/IntBuffer;
    .param p2, "exponent"    # Ljava/nio/IntBuffer;

    .prologue
    .line 956
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 957
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I

    move-result v0

    .line 958
    .local v0, "valid":I
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 959
    return v0
.end method

.method public glQueryMatrixxOES([II[II)I
    .locals 2
    .param p1, "mantissa"    # [I
    .param p2, "mantissaOffset"    # I
    .param p3, "exponent"    # [I
    .param p4, "exponentOffset"    # I

    .prologue
    .line 948
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 949
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES([II[II)I

    move-result v0

    .line 951
    .local v0, "valid":I
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 952
    return v0
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "format"    # I
    .param p6, "type"    # I
    .param p7, "pixels"    # Ljava/nio/Buffer;

    .prologue
    .line 665
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 666
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 667
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 668
    return-void
.end method

.method public glRenderbufferStorageOES(IIII)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "internalformat"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1596
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1597
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glRenderbufferStorageOES(IIII)V

    .line 1598
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1599
    return-void
.end method

.method public glRotatef(FFFF)V
    .locals 1
    .param p1, "angle"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 671
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 672
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 673
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 674
    return-void
.end method

.method public glRotatex(IIII)V
    .locals 1
    .param p1, "angle"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I

    .prologue
    .line 677
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 678
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    .line 679
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 680
    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 1
    .param p1, "value"    # F
    .param p2, "invert"    # Z

    .prologue
    .line 683
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 684
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoverage(FZ)V

    .line 685
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 686
    return-void
.end method

.method public glSampleCoveragex(IZ)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "invert"    # Z

    .prologue
    .line 689
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 690
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoveragex(IZ)V

    .line 691
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 692
    return-void
.end method

.method public glScalef(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 695
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 696
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 697
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 698
    return-void
.end method

.method public glScalex(III)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 701
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 702
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    .line 703
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 704
    return-void
.end method

.method public glScissor(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 707
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 708
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 709
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 710
    return-void
.end method

.method public glShadeModel(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 713
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 714
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 715
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 716
    return-void
.end method

.method public glStencilFunc(III)V
    .locals 1
    .param p1, "func"    # I
    .param p2, "ref"    # I
    .param p3, "mask"    # I

    .prologue
    .line 719
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 720
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    .line 721
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 722
    return-void
.end method

.method public glStencilMask(I)V
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 725
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 726
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    .line 727
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 728
    return-void
.end method

.method public glStencilOp(III)V
    .locals 1
    .param p1, "fail"    # I
    .param p2, "zfail"    # I
    .param p3, "zpass"    # I

    .prologue
    .line 731
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 732
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    .line 733
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 734
    return-void
.end method

.method public glTexCoordPointer(IIII)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "offset"    # I

    .prologue
    .line 1281
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1282
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 1283
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1284
    return-void
.end method

.method public glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 738
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 739
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 740
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 741
    return-void
.end method

.method public glTexEnvf(IIF)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 744
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 745
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 746
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 747
    return-void
.end method

.method public glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 756
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 757
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    .line 758
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 759
    return-void
.end method

.method public glTexEnvfv(II[FI)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 750
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 751
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(II[FI)V

    .line 752
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 753
    return-void
.end method

.method public glTexEnvi(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 1287
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1288
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvi(III)V

    .line 1289
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1290
    return-void
.end method

.method public glTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1299
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1300
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnviv(IILjava/nio/IntBuffer;)V

    .line 1301
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1302
    return-void
.end method

.method public glTexEnviv(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1293
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1294
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnviv(II[II)V

    .line 1295
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1296
    return-void
.end method

.method public glTexEnvx(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 762
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 763
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 764
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 765
    return-void
.end method

.method public glTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 774
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 775
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(IILjava/nio/IntBuffer;)V

    .line 776
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 777
    return-void
.end method

.method public glTexEnvxv(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 768
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 769
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(II[II)V

    .line 770
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 771
    return-void
.end method

.method public glTexGenf(IIF)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 1603
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1604
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenf(IIF)V

    .line 1605
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1606
    return-void
.end method

.method public glTexGenfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1617
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1618
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenfv(IILjava/nio/FloatBuffer;)V

    .line 1619
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1620
    return-void
.end method

.method public glTexGenfv(II[FI)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 1610
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1611
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenfv(II[FI)V

    .line 1612
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1613
    return-void
.end method

.method public glTexGeni(III)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 1624
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1625
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeni(III)V

    .line 1626
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1627
    return-void
.end method

.method public glTexGeniv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1638
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1639
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeniv(IILjava/nio/IntBuffer;)V

    .line 1640
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1641
    return-void
.end method

.method public glTexGeniv(II[II)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1631
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1632
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeniv(II[II)V

    .line 1633
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1634
    return-void
.end method

.method public glTexGenx(III)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 1645
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1646
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenx(III)V

    .line 1647
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1648
    return-void
.end method

.method public glTexGenxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1659
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1660
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenxv(IILjava/nio/IntBuffer;)V

    .line 1661
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1662
    return-void
.end method

.method public glTexGenxv(II[II)V
    .locals 1
    .param p1, "coord"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1652
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1653
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenxv(II[II)V

    .line 1654
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1655
    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "border"    # I
    .param p7, "format"    # I
    .param p8, "type"    # I
    .param p9, "pixels"    # Ljava/nio/Buffer;

    .prologue
    .line 782
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 783
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 785
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 786
    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 789
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 790
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 791
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 792
    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 1312
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1313
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 1314
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1315
    return-void
.end method

.method public glTexParameterfv(II[FI)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 1306
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1307
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 1308
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1309
    return-void
.end method

.method public glTexParameteri(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 1318
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1319
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 1320
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1321
    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 807
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 808
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 809
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 810
    return-void
.end method

.method public glTexParameteriv(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 801
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 802
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 803
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 804
    return-void
.end method

.method public glTexParameterx(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 795
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 796
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 797
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 798
    return-void
.end method

.method public glTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 1330
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1331
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterxv(IILjava/nio/IntBuffer;)V

    .line 1332
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1333
    return-void
.end method

.method public glTexParameterxv(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 1324
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1325
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterxv(II[II)V

    .line 1326
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1327
    return-void
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "format"    # I
    .param p8, "type"    # I
    .param p9, "pixels"    # Ljava/nio/Buffer;

    .prologue
    .line 815
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 816
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 818
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 819
    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 822
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 823
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 824
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 825
    return-void
.end method

.method public glTranslatex(III)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 828
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 829
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatex(III)V

    .line 830
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 831
    return-void
.end method

.method public glVertexPointer(IIII)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "offset"    # I

    .prologue
    .line 1336
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1337
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 1338
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1339
    return-void
.end method

.method public glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 835
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 836
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 837
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 838
    return-void
.end method

.method public glViewport(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 841
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 842
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 843
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 844
    return-void
.end method

.method public glWeightPointerOES(IIII)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "offset"    # I

    .prologue
    .line 1375
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1376
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glWeightPointerOES(IIII)V

    .line 1377
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1378
    return-void
.end method

.method public glWeightPointerOES(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 1369
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 1370
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glWeightPointerOES(IIILjava/nio/Buffer;)V

    .line 1371
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 1372
    return-void
.end method
