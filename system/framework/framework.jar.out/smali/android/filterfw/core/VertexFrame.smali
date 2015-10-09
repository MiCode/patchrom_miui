.class public Landroid/filterfw/core/VertexFrame;
.super Landroid/filterfw/core/Frame;
.source "VertexFrame.java"


# instance fields
.field private vertexFrameId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    const-string v0, "filterfw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .locals 2
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/VertexFrame;->vertexFrameId:I

    .line 36
    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    if-gtz v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initializing vertex frame with zero size!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/filterfw/core/VertexFrame;->nativeAllocate(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not allocate vertex frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    return-void
.end method

.method private native getNativeVboId()I
.end method

.method private native nativeAllocate(I)Z
.end method

.method private native nativeDeallocate()Z
.end method

.method private native setNativeData([BII)Z
.end method

.method private native setNativeFloats([F)Z
.end method

.method private native setNativeInts([I)Z
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Vertex frames do not support reading data!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Vertex frames do not support reading data!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFloats()[F
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Vertex frames do not support reading data!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInts()[I
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Vertex frames do not support reading data!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getObjectValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Vertex frames do not support reading data!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVboId()I
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/filterfw/core/VertexFrame;->getNativeVboId()I

    move-result v0

    return v0
.end method

.method protected declared-synchronized hasNativeAllocation()Z
    .locals 2

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/filterfw/core/VertexFrame;->vertexFrameId:I
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

.method protected declared-synchronized releaseNativeAllocation()V
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/filterfw/core/VertexFrame;->nativeDeallocate()Z

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/VertexFrame;->vertexFrameId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported: Cannot set vertex frame bitmap value!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setData(Ljava/nio/ByteBuffer;II)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->assertFrameMutable()V

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 91
    .local v0, "bytes":[B
    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 92
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Data size in setData does not match vertex frame size!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Landroid/filterfw/core/VertexFrame;->setNativeData([BII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not set vertex frame data!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_1
    return-void
.end method

.method public setDataFromFrame(Landroid/filterfw/core/Frame;)V
    .locals 0
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 117
    return-void
.end method

.method public setFloats([F)V
    .locals 2
    .param p1, "floats"    # [F

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->assertFrameMutable()V

    .line 77
    invoke-direct {p0, p1}, Landroid/filterfw/core/VertexFrame;->setNativeFloats([F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not set int values for vertex frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    return-void
.end method

.method public setInts([I)V
    .locals 2
    .param p1, "ints"    # [I

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->assertFrameMutable()V

    .line 64
    invoke-direct {p0, p1}, Landroid/filterfw/core/VertexFrame;->setNativeInts([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not set int values for vertex frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VertexFrame ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") with VBO ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->getVboId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
