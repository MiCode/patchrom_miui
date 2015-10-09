.class public Landroid/opengl/ETC1Util;
.super Ljava/lang/Object;
.source "ETC1Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/opengl/ETC1Util$ETC1Texture;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method public static compressTexture(Ljava/nio/Buffer;IIII)Landroid/opengl/ETC1Util$ETC1Texture;
    .locals 7
    .param p0, "input"    # Ljava/nio/Buffer;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixelSize"    # I
    .param p4, "stride"    # I

    .prologue
    .line 193
    invoke-static {p1, p2}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    move-result v6

    .line 194
    .local v6, "encodedImageSize":I
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .local v5, "compressedImage":Ljava/nio/ByteBuffer;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 196
    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1;->encodeImage(Ljava/nio/Buffer;IIIILjava/nio/Buffer;)V

    .line 197
    new-instance v0, Landroid/opengl/ETC1Util$ETC1Texture;

    invoke-direct {v0, p1, p2, v5}, Landroid/opengl/ETC1Util$ETC1Texture;-><init>(IILjava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static createTexture(Ljava/io/InputStream;)Landroid/opengl/ETC1Util$ETC1Texture;
    .locals 12
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x10

    const/4 v10, 0x0

    .line 153
    const/4 v7, 0x0

    .line 154
    .local v7, "width":I
    const/4 v4, 0x0

    .line 155
    .local v4, "height":I
    const/16 v8, 0x1000

    new-array v6, v8, [B

    .line 157
    .local v6, "ioBuffer":[B
    invoke-virtual {p0, v6, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-eq v8, v11, :cond_0

    .line 158
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Unable to read PKM file header."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 160
    :cond_0
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 162
    .local v3, "headerBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v6, v10, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 163
    invoke-static {v3}, Landroid/opengl/ETC1;->isValid(Ljava/nio/Buffer;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 164
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Not a PKM file."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 166
    :cond_1
    invoke-static {v3}, Landroid/opengl/ETC1;->getWidth(Ljava/nio/Buffer;)I

    move-result v7

    .line 167
    invoke-static {v3}, Landroid/opengl/ETC1;->getHeight(Ljava/nio/Buffer;)I

    move-result v4

    .line 169
    invoke-static {v7, v4}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    move-result v2

    .line 170
    .local v2, "encodedSize":I
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 171
    .local v1, "dataBuffer":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_3

    .line 172
    array-length v8, v6

    sub-int v9, v2, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 173
    .local v0, "chunkSize":I
    invoke-virtual {p0, v6, v10, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-eq v8, v0, :cond_2

    .line 174
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Unable to read PKM file data."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 176
    :cond_2
    invoke-virtual {v1, v6, v10, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 177
    add-int/2addr v5, v0

    .line 178
    goto :goto_0

    .line 179
    .end local v0    # "chunkSize":I
    :cond_3
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 180
    new-instance v8, Landroid/opengl/ETC1Util$ETC1Texture;

    invoke-direct {v8, v7, v4, v1}, Landroid/opengl/ETC1Util$ETC1Texture;-><init>(IILjava/nio/ByteBuffer;)V

    return-object v8
.end method

.method public static isETC1Supported()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 98
    const/16 v4, 0x14

    new-array v2, v4, [I

    .line 99
    .local v2, "results":[I
    const v4, 0x86a2

    invoke-static {v4, v2, v3}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 100
    aget v1, v2, v3

    .line 101
    .local v1, "numFormats":I
    array-length v4, v2

    if-le v1, v4, :cond_0

    .line 102
    new-array v2, v1, [I

    .line 104
    :cond_0
    const v4, 0x86a3

    invoke-static {v4, v2, v3}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 106
    aget v4, v2, v0

    const v5, 0x8d64

    if-ne v4, v5, :cond_2

    .line 107
    const/4 v3, 0x1

    .line 110
    :cond_1
    return v3

    .line 105
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V
    .locals 24
    .param p0, "target"    # I
    .param p1, "level"    # I
    .param p2, "border"    # I
    .param p3, "fallbackFormat"    # I
    .param p4, "fallbackType"    # I
    .param p5, "texture"    # Landroid/opengl/ETC1Util$ETC1Texture;

    .prologue
    .line 66
    const/16 v1, 0x1907

    move/from16 v0, p3

    if-eq v0, v1, :cond_0

    .line 67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "fallbackFormat must be GL_RGB"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_0
    const v1, 0x8363

    move/from16 v0, p4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1401

    move/from16 v0, p4

    if-eq v0, v1, :cond_1

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported fallbackType"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/opengl/ETC1Util$ETC1Texture;->getWidth()I

    move-result v4

    .line 75
    .local v4, "width":I
    invoke-virtual/range {p5 .. p5}, Landroid/opengl/ETC1Util$ETC1Texture;->getHeight()I

    move-result v5

    .line 76
    .local v5, "height":I
    invoke-virtual/range {p5 .. p5}, Landroid/opengl/ETC1Util$ETC1Texture;->getData()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 77
    .local v8, "data":Ljava/nio/Buffer;
    invoke-static {}, Landroid/opengl/ETC1Util;->isETC1Supported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    invoke-virtual {v8}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    .line 79
    .local v7, "imageSize":I
    const v3, 0x8d64

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v6, p2

    invoke-static/range {v1 .. v8}, Landroid/opengl/GLES10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 91
    .end local v7    # "imageSize":I
    :goto_0
    return-void

    .line 82
    :cond_2
    const/16 v1, 0x1401

    move/from16 v0, p4

    if-eq v0, v1, :cond_3

    const/16 v23, 0x1

    .line 83
    .local v23, "useShorts":Z
    :goto_1
    if-eqz v23, :cond_4

    const/4 v12, 0x2

    .line 84
    .local v12, "pixelSize":I
    :goto_2
    mul-int v13, v12, v4

    .line 85
    .local v13, "stride":I
    mul-int v1, v13, v5

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    .local v9, "decodedData":Ljava/nio/ByteBuffer;
    move v10, v4

    move v11, v5

    .line 87
    invoke-static/range {v8 .. v13}, Landroid/opengl/ETC1;->decodeImage(Ljava/nio/Buffer;Ljava/nio/Buffer;IIII)V

    move/from16 v14, p0

    move/from16 v15, p1

    move/from16 v16, p3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, p2

    move/from16 v20, p3

    move/from16 v21, p4

    move-object/from16 v22, v9

    .line 88
    invoke-static/range {v14 .. v22}, Landroid/opengl/GLES10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_0

    .line 82
    .end local v9    # "decodedData":Ljava/nio/ByteBuffer;
    .end local v12    # "pixelSize":I
    .end local v13    # "stride":I
    .end local v23    # "useShorts":Z
    :cond_3
    const/16 v23, 0x0

    goto :goto_1

    .line 83
    .restart local v23    # "useShorts":Z
    :cond_4
    const/4 v12, 0x3

    goto :goto_2
.end method

.method public static loadTexture(IIIIILjava/io/InputStream;)V
    .locals 6
    .param p0, "target"    # I
    .param p1, "level"    # I
    .param p2, "border"    # I
    .param p3, "fallbackFormat"    # I
    .param p4, "fallbackType"    # I
    .param p5, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p5}, Landroid/opengl/ETC1Util;->createTexture(Ljava/io/InputStream;)Landroid/opengl/ETC1Util$ETC1Texture;

    move-result-object v5

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1Util;->loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V

    .line 49
    return-void
.end method

.method public static writeTexture(Landroid/opengl/ETC1Util$ETC1Texture;Ljava/io/OutputStream;)V
    .locals 11
    .param p0, "texture"    # Landroid/opengl/ETC1Util$ETC1Texture;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 208
    .local v1, "dataBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 210
    .local v7, "originalPosition":I
    :try_start_0
    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getWidth()I

    move-result v8

    .line 211
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getHeight()I

    move-result v4

    .line 212
    .local v4, "height":I
    const/16 v9, 0x10

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 213
    .local v3, "header":Ljava/nio/ByteBuffer;
    invoke-static {v3, v8, v4}, Landroid/opengl/ETC1;->formatHeader(Ljava/nio/Buffer;II)V

    .line 214
    const/16 v9, 0x1000

    new-array v6, v9, [B

    .line 215
    .local v6, "ioBuffer":[B
    const/4 v9, 0x0

    const/16 v10, 0x10

    invoke-virtual {v3, v6, v9, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 216
    const/4 v9, 0x0

    const/16 v10, 0x10

    invoke-virtual {p1, v6, v9, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 217
    invoke-static {v8, v4}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    move-result v2

    .line 218
    .local v2, "encodedSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_0

    .line 219
    array-length v9, v6

    sub-int v10, v2, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 220
    .local v0, "chunkSize":I
    const/4 v9, 0x0

    invoke-virtual {v1, v6, v9, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 221
    const/4 v9, 0x0

    invoke-virtual {p1, v6, v9, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    add-int/2addr v5, v0

    .line 223
    goto :goto_0

    .line 225
    .end local v0    # "chunkSize":I
    :cond_0
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 227
    return-void

    .line 225
    .end local v2    # "encodedSize":I
    .end local v3    # "header":Ljava/nio/ByteBuffer;
    .end local v4    # "height":I
    .end local v5    # "i":I
    .end local v6    # "ioBuffer":[B
    .end local v8    # "width":I
    :catchall_0
    move-exception v9

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v9
.end method
