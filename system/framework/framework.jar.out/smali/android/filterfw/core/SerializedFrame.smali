.class public Landroid/filterfw/core/SerializedFrame;
.super Landroid/filterfw/core/Frame;
.source "SerializedFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;,
        Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x40


# instance fields
.field private mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

.field private mObjectOut:Ljava/io/ObjectOutputStream;


# direct methods
.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .locals 3
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 171
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/filterfw/core/SerializedFrame;->setReusable(Z)V

    .line 175
    :try_start_0
    new-instance v1, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    const/16 v2, 0x40

    invoke-direct {v1, p0, v2}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;-><init>(Landroid/filterfw/core/SerializedFrame;I)V

    iput-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    .line 176
    new-instance v1, Ljava/io/ObjectOutputStream;

    iget-object v2, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mObjectOut:Ljava/io/ObjectOutputStream;

    .line 177
    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    invoke-virtual {v1}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->markHeaderEnd()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not create serialization streams for SerializedFrame!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final deserializeObjectValue()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 272
    :try_start_0
    iget-object v3, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    invoke-virtual {v3}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->getInputStream()Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;

    move-result-object v1

    .line 273
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 274
    .local v2, "objectStream":Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 275
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "objectStream":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not deserialize object in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 277
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to deserialize object of unknown class in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private final serializeObjectValue(Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 260
    :try_start_0
    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    invoke-virtual {v1}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->reset()V

    .line 261
    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mObjectOut:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 262
    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mObjectOut:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 263
    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mObjectOut:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not serialize object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static wrapObject(Ljava/lang/Object;Landroid/filterfw/core/FrameManager;)Landroid/filterfw/core/SerializedFrame;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "frameManager"    # Landroid/filterfw/core/FrameManager;

    .prologue
    .line 185
    const/4 v2, 0x1

    invoke-static {p0, v2}, Landroid/filterfw/format/ObjectFormat;->fromObject(Ljava/lang/Object;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 186
    .local v0, "format":Landroid/filterfw/core/FrameFormat;
    new-instance v1, Landroid/filterfw/core/SerializedFrame;

    invoke-direct {v1, v0, p1}, Landroid/filterfw/core/SerializedFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 187
    .local v1, "result":Landroid/filterfw/core/SerializedFrame;
    invoke-virtual {v1, p0}, Landroid/filterfw/core/SerializedFrame;->setObjectValue(Ljava/lang/Object;)V

    .line 188
    return-object v1
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 249
    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    move-result-object v0

    .line 250
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/Bitmap;

    .end local v0    # "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 237
    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    move-result-object v0

    .line 238
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/nio/ByteBuffer;

    .end local v0    # "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFloats()[F
    .locals 2

    .prologue
    .line 225
    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    move-result-object v0

    .line 226
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, [F

    if-eqz v1, :cond_0

    check-cast v0, [F

    .end local v0    # "result":Ljava/lang/Object;
    check-cast v0, [F

    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInts()[I
    .locals 2

    .prologue
    .line 213
    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    move-result-object v0

    .line 214
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, [I

    if-eqz v1, :cond_0

    check-cast v0, [I

    .end local v0    # "result":Ljava/lang/Object;
    check-cast v0, [I

    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObjectValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hasNativeAllocation()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method protected releaseNativeAllocation()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->assertFrameMutable()V

    .line 244
    invoke-virtual {p0, p1}, Landroid/filterfw/core/SerializedFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    .line 245
    return-void
.end method

.method public setData(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 231
    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->assertFrameMutable()V

    .line 232
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/SerializedFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    .line 233
    return-void
.end method

.method public setFloats([F)V
    .locals 0
    .param p1, "floats"    # [F

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->assertFrameMutable()V

    .line 220
    invoke-virtual {p0, p1}, Landroid/filterfw/core/SerializedFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.method protected setGenericObjectValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 255
    invoke-direct {p0, p1}, Landroid/filterfw/core/SerializedFrame;->serializeObjectValue(Ljava/lang/Object;)V

    .line 256
    return-void
.end method

.method public setInts([I)V
    .locals 0
    .param p1, "ints"    # [I

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->assertFrameMutable()V

    .line 208
    invoke-virtual {p0, p1}, Landroid/filterfw/core/SerializedFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerializedFrame ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
