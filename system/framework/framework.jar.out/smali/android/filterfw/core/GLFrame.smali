.class public Landroid/filterfw/core/GLFrame;
.super Landroid/filterfw/core/Frame;
.source "GLFrame.java"


# static fields
.field public static final EXISTING_FBO_BINDING:I = 0x65

.field public static final EXISTING_TEXTURE_BINDING:I = 0x64

.field public static final EXTERNAL_TEXTURE:I = 0x68

.field public static final NEW_FBO_BINDING:I = 0x67

.field public static final NEW_TEXTURE_BINDING:I = 0x66


# instance fields
.field private glFrameId:I

.field private mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

.field private mOwnsTexture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 361
    const-string v0, "filterfw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .locals 1
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    .line 72
    return-void
.end method

.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;IJ)V
    .locals 1
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;
    .param p3, "bindingType"    # I
    .param p4, "bindingId"    # J

    .prologue
    .line 75
    invoke-direct/range {p0 .. p5}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;IJ)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    .line 76
    return-void
.end method

.method private assertGLEnvValid()V
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->isContextActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    invoke-static {}, Landroid/filterfw/core/GLEnvironment;->isAnyContextActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to access "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with foreign GL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "context active!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to access "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with no GL context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " active!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_1
    return-void
.end method

.method private native generateNativeMipMap()Z
.end method

.method private native getNativeBitmap(Landroid/graphics/Bitmap;)Z
.end method

.method private native getNativeData()[B
.end method

.method private native getNativeFboId()I
.end method

.method private native getNativeFloats()[F
.end method

.method private native getNativeInts()[I
.end method

.method private native getNativeTextureId()I
.end method

.method private initNew(Z)V
    .locals 3
    .param p1, "isExternal"    # Z

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-direct {p0, v0}, Landroid/filterfw/core/GLFrame;->nativeAllocateExternal(Landroid/filterfw/core/GLEnvironment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not allocate external GL frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/filterfw/core/GLFrame;->nativeAllocate(Landroid/filterfw/core/GLEnvironment;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not allocate GL frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    return-void
.end method

.method private initWithFbo(I)V
    .locals 4
    .param p1, "fboId"    # I

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v1

    .line 138
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v0

    .line 139
    .local v0, "height":I
    iget-object v2, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-direct {p0, v2, p1, v1, v0}, Landroid/filterfw/core/GLFrame;->nativeAllocateWithFbo(Landroid/filterfw/core/GLEnvironment;III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not allocate FBO backed GL frame!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    :cond_0
    return-void
.end method

.method private initWithTexture(I)V
    .locals 4
    .param p1, "texId"    # I

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v1

    .line 128
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v0

    .line 129
    .local v0, "height":I
    iget-object v2, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-direct {p0, v2, p1, v1, v0}, Landroid/filterfw/core/GLFrame;->nativeAllocateWithTexture(Landroid/filterfw/core/GLEnvironment;III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not allocate texture backed GL frame!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    .line 133
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->markReadOnly()V

    .line 134
    return-void
.end method

.method private native nativeAllocate(Landroid/filterfw/core/GLEnvironment;II)Z
.end method

.method private native nativeAllocateExternal(Landroid/filterfw/core/GLEnvironment;)Z
.end method

.method private native nativeAllocateWithFbo(Landroid/filterfw/core/GLEnvironment;III)Z
.end method

.method private native nativeAllocateWithTexture(Landroid/filterfw/core/GLEnvironment;III)Z
.end method

.method private native nativeCopyFromGL(Landroid/filterfw/core/GLFrame;)Z
.end method

.method private native nativeCopyFromNative(Landroid/filterfw/core/NativeFrame;)Z
.end method

.method private native nativeDeallocate()Z
.end method

.method private native nativeDetachTexFromFbo()Z
.end method

.method private native nativeFocus()Z
.end method

.method private native nativeReattachTexToFbo()Z
.end method

.method private native nativeResetParams()Z
.end method

.method private native setNativeBitmap(Landroid/graphics/Bitmap;I)Z
.end method

.method private native setNativeData([BII)Z
.end method

.method private native setNativeFloats([F)Z
.end method

.method private native setNativeInts([I)Z
.end method

.method private native setNativeTextureParam(II)Z
.end method

.method private native setNativeViewport(IIII)Z
.end method


# virtual methods
.method flushGPU(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {}, Landroid/filterfw/core/GLFrameTimer;->get()Landroid/filterfw/core/StopWatchMap;

    move-result-object v0

    .line 146
    .local v0, "timer":Landroid/filterfw/core/StopWatchMap;
    iget-boolean v1, v0, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    if-eqz v1, :cond_0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glFinish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/StopWatchMap;->start(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glFinish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/StopWatchMap;->stop(Ljava/lang/String;)V

    .line 151
    :cond_0
    return-void
.end method

.method public focus()V
    .locals 2

    .prologue
    .line 312
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not focus on GLFrame for drawing!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_0
    return-void
.end method

.method public generateMipMap()V
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    .line 288
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 289
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->generateNativeMipMap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not generate mip-map for GL frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 242
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 243
    const-string v1, "getBitmap"

    invoke-virtual {p0, v1}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 247
    .local v0, "result":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Landroid/filterfw/core/GLFrame;->getNativeBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not get bitmap data from GL frame!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_0
    return-object v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 221
    const-string v0, "getData"

    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeData()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getFboId()I
    .locals 1

    .prologue
    .line 308
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeFboId()I

    move-result v0

    return v0
.end method

.method public getFloats()[F
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 202
    const-string v0, "getFloats"

    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeFloats()[F

    move-result-object v0

    return-object v0
.end method

.method public getGLEnvironment()Landroid/filterfw/core/GLEnvironment;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    return-object v0
.end method

.method public getInts()[I
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 186
    const-string v0, "getInts"

    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeInts()[I

    move-result-object v0

    return-object v0
.end method

.method public getObjectValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 171
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeData()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getTextureId()I
    .locals 1

    .prologue
    .line 304
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeTextureId()I

    move-result v0

    return v0
.end method

.method protected declared-synchronized hasNativeAllocation()Z
    .locals 2

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method init(Landroid/filterfw/core/GLEnvironment;)V
    .locals 6
    .param p1, "glEnv"    # Landroid/filterfw/core/GLEnvironment;

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 80
    .local v1, "format":Landroid/filterfw/core/FrameFormat;
    iput-object p1, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    .line 83
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 84
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "GL frames must have 4 bytes per sample!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 85
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 86
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "GL frames must be 2-dimensional!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 87
    :cond_1
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v3

    if-gez v3, :cond_2

    .line 88
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Initializing GL frame with zero size!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :cond_2
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getBindingType()I

    move-result v0

    .line 93
    .local v0, "bindingType":I
    const/4 v2, 0x1

    .line 94
    .local v2, "reusable":Z
    if-nez v0, :cond_3

    .line 95
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initNew(Z)V

    .line 111
    :goto_0
    invoke-virtual {p0, v2}, Landroid/filterfw/core/GLFrame;->setReusable(Z)V

    .line 112
    return-void

    .line 96
    :cond_3
    const/16 v3, 0x68

    if-ne v0, v3, :cond_4

    .line 97
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initNew(Z)V

    .line 98
    const/4 v2, 0x0

    goto :goto_0

    .line 99
    :cond_4
    const/16 v3, 0x64

    if-ne v0, v3, :cond_5

    .line 100
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getBindingId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initWithTexture(I)V

    goto :goto_0

    .line 101
    :cond_5
    const/16 v3, 0x65

    if-ne v0, v3, :cond_6

    .line 102
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getBindingId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initWithFbo(I)V

    goto :goto_0

    .line 103
    :cond_6
    const/16 v3, 0x66

    if-ne v0, v3, :cond_7

    .line 104
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getBindingId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initWithTexture(I)V

    goto :goto_0

    .line 105
    :cond_7
    const/16 v3, 0x67

    if-ne v0, v3, :cond_8

    .line 106
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getBindingId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initWithFbo(I)V

    goto :goto_0

    .line 108
    :cond_8
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to create GL frame with unknown binding type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected onFrameFetch()V
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    if-nez v0, :cond_0

    .line 344
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeReattachTexToFbo()Z

    .line 346
    :cond_0
    return-void
.end method

.method protected onFrameStore()V
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    if-nez v0, :cond_0

    .line 335
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeDetachTexFromFbo()Z

    .line 337
    :cond_0
    return-void
.end method

.method protected declared-synchronized releaseNativeAllocation()V
    .locals 1

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeDeallocate()Z

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected reset(Landroid/filterfw/core/FrameFormat;)V
    .locals 2
    .param p1, "newFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 325
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeResetParams()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not reset GLFrame texture parameters!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    invoke-super {p0, p1}, Landroid/filterfw/core/Frame;->reset(Landroid/filterfw/core/FrameFormat;)V

    .line 329
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    .line 228
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 229
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 231
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bitmap dimensions do not match GL frame dimensions!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_1
    invoke-static {p1}, Landroid/filterfw/core/GLFrame;->convertBitmapToRGBA(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 234
    .local v0, "rgbaBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/filterfw/core/GLFrame;->setNativeBitmap(Landroid/graphics/Bitmap;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 235
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not set GL frame bitmap data!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_2
    return-void
.end method

.method public setData(Ljava/nio/ByteBuffer;II)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 208
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    .line 209
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 210
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 211
    .local v0, "bytes":[B
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 212
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Data size in setData does not match GL frame size!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Landroid/filterfw/core/GLFrame;->setNativeData([BII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not set GL frame data!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_1
    return-void
.end method

.method public setDataFromFrame(Landroid/filterfw/core/Frame;)V
    .locals 3
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .prologue
    .line 255
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 258
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 259
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to assign frame of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "smaller GL frame of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    instance-of v0, p1, Landroid/filterfw/core/NativeFrame;

    if-eqz v0, :cond_1

    .line 266
    check-cast p1, Landroid/filterfw/core/NativeFrame;

    .end local p1    # "frame":Landroid/filterfw/core/Frame;
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->nativeCopyFromNative(Landroid/filterfw/core/NativeFrame;)Z

    .line 274
    :goto_0
    return-void

    .line 267
    .restart local p1    # "frame":Landroid/filterfw/core/Frame;
    :cond_1
    instance-of v0, p1, Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_2

    .line 268
    check-cast p1, Landroid/filterfw/core/GLFrame;

    .end local p1    # "frame":Landroid/filterfw/core/Frame;
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->nativeCopyFromGL(Landroid/filterfw/core/GLFrame;)Z

    goto :goto_0

    .line 269
    .restart local p1    # "frame":Landroid/filterfw/core/Frame;
    :cond_2
    instance-of v0, p1, Landroid/filterfw/core/SimpleFrame;

    if-eqz v0, :cond_3

    .line 270
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->setObjectValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 272
    :cond_3
    invoke-super {p0, p1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    goto :goto_0
.end method

.method public setFloats([F)V
    .locals 2
    .param p1, "floats"    # [F

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    .line 193
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 194
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->setNativeFloats([F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not set int values for GL frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    return-void
.end method

.method public setInts([I)V
    .locals 2
    .param p1, "ints"    # [I

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    .line 177
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 178
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->setNativeInts([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not set int values for GL frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    return-void
.end method

.method public setTextureParameter(II)V
    .locals 3
    .param p1, "param"    # I
    .param p2, "value"    # I

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    .line 296
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 297
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/GLFrame;->setNativeTextureParam(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set texture value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "for GLFrame!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    return-void
.end method

.method public setViewport(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 277
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    .line 278
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/filterfw/core/GLFrame;->setNativeViewport(IIII)Z

    .line 279
    return-void
.end method

.method public setViewport(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    .line 283
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/filterfw/core/GLFrame;->setNativeViewport(IIII)Z

    .line 284
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLFrame id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") with texture ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", FBO ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFboId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
