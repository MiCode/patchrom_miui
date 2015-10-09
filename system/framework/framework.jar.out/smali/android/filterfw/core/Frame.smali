.class public abstract Landroid/filterfw/core/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# static fields
.field public static final NO_BINDING:I = 0x0

.field public static final TIMESTAMP_NOT_SET:J = -0x2L

.field public static final TIMESTAMP_UNKNOWN:J = -0x1L


# instance fields
.field private mBindingId:J

.field private mBindingType:I

.field private mFormat:Landroid/filterfw/core/FrameFormat;

.field private mFrameManager:Landroid/filterfw/core/FrameManager;

.field private mReadOnly:Z

.field private mRefCount:I

.field private mReusable:Z

.field private mTimestamp:J


# direct methods
.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .locals 2
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v1, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    .line 40
    iput-boolean v1, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    .line 42
    iput v1, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    .line 44
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    .line 47
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    .line 48
    iput-object p2, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    .line 49
    return-void
.end method

.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;IJ)V
    .locals 2
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;
    .param p3, "bindingType"    # I
    .param p4, "bindingId"    # J

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v1, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    .line 40
    iput-boolean v1, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    .line 42
    iput v1, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    .line 44
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    .line 52
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    .line 53
    iput-object p2, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    .line 54
    iput p3, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    .line 55
    iput-wide p4, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    .line 56
    return-void
.end method

.method protected static convertBitmapToRGBA(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    .line 191
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 185
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 186
    .local v0, "result":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 187
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error converting bitmap to RGBA!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    if-eq v1, v2, :cond_2

    .line 189
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unsupported row byte count in bitmap!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object p0, v0

    .line 191
    goto :goto_0
.end method


# virtual methods
.method protected assertFrameMutable()V
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to modify read-only frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    return-void
.end method

.method final decRefCount()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    .line 225
    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    return v0
.end method

.method public getBindingId()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    return-wide v0
.end method

.method public getBindingType()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    return v0
.end method

.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    return v0
.end method

.method public abstract getData()Ljava/nio/ByteBuffer;
.end method

.method public abstract getFloats()[F
.end method

.method public getFormat()Landroid/filterfw/core/FrameFormat;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    return-object v0
.end method

.method public getFrameManager()Landroid/filterfw/core/FrameManager;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    return-object v0
.end method

.method public abstract getInts()[I
.end method

.method public abstract getObjectValue()Ljava/lang/Object;
.end method

.method public getRefCount()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    return-wide v0
.end method

.method protected abstract hasNativeAllocation()Z
.end method

.method final incRefCount()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    .line 220
    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    return v0
.end method

.method final isReusable()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    return v0
.end method

.method final markReadOnly()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    .line 234
    return-void
.end method

.method protected onFrameFetch()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method protected onFrameStore()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public release()Landroid/filterfw/core/Frame;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    invoke-virtual {v0, p0}, Landroid/filterfw/core/FrameManager;->releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    move-result-object p0

    .line 146
    .end local p0    # "this":Landroid/filterfw/core/Frame;
    :cond_0
    return-object p0
.end method

.method protected abstract releaseNativeAllocation()V
.end method

.method protected requestResize([I)Z
    .locals 1
    .param p1, "newDimensions"    # [I

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method protected reset(Landroid/filterfw/core/FrameFormat;)V
    .locals 1
    .param p1, "newFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    .line 198
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    .line 199
    return-void
.end method

.method public retain()Landroid/filterfw/core/Frame;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    invoke-virtual {v0, p0}, Landroid/filterfw/core/FrameManager;->retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    move-result-object p0

    .line 154
    .end local p0    # "this":Landroid/filterfw/core/Frame;
    :cond_0
    return-object p0
.end method

.method public abstract setBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;II)V

    .line 110
    return-void
.end method

.method public abstract setData(Ljava/nio/ByteBuffer;II)V
.end method

.method public setData([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 113
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;)V

    .line 114
    return-void
.end method

.method public setDataFromFrame(Landroid/filterfw/core/Frame;)V
    .locals 1
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;)V

    .line 132
    return-void
.end method

.method public abstract setFloats([F)V
.end method

.method protected setFormat(Landroid/filterfw/core/FrameFormat;)V
    .locals 1
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    .line 174
    return-void
.end method

.method protected setGenericObjectValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 177
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set object value of unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setInts([I)V
.end method

.method public setObjectValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    .line 83
    instance-of v0, p1, [I

    if-eqz v0, :cond_0

    .line 84
    check-cast p1, [I

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [I

    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setInts([I)V

    .line 94
    :goto_0
    return-void

    .line 85
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, [F

    if-eqz v0, :cond_1

    .line 86
    check-cast p1, [F

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [F

    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setFloats([F)V

    goto :goto_0

    .line 87
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 88
    check-cast p1, Ljava/nio/ByteBuffer;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 89
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 90
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 92
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setGenericObjectValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected setReusable(Z)V
    .locals 0
    .param p1, "reusable"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    .line 170
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 123
    iput-wide p1, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    .line 124
    return-void
.end method
