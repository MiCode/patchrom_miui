.class public Landroid/media/videoeditor/TransitionAlpha;
.super Landroid/media/videoeditor/Transition;
.source "TransitionAlpha.java"


# instance fields
.field private final mBlendingPercent:I

.field private mHeight:I

.field private final mIsInvert:Z

.field private final mMaskFilename:Ljava/lang/String;

.field private mRGBMaskFile:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 67
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v7, v1

    move v8, v6

    move v9, v6

    invoke-direct/range {v0 .. v9}, Landroid/media/videoeditor/TransitionAlpha;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JILjava/lang/String;IZ)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JILjava/lang/String;IZ)V
    .locals 17
    .param p1, "transitionId"    # Ljava/lang/String;
    .param p2, "afterMediaItem"    # Landroid/media/videoeditor/MediaItem;
    .param p3, "beforeMediaItem"    # Landroid/media/videoeditor/MediaItem;
    .param p4, "durationMs"    # J
    .param p6, "behavior"    # I
    .param p7, "maskFilename"    # Ljava/lang/String;
    .param p8, "blendingPercent"    # I
    .param p9, "invert"    # Z

    .prologue
    .line 93
    invoke-direct/range {p0 .. p6}, Landroid/media/videoeditor/Transition;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    .line 98
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 99
    .local v12, "dbo":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 100
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p7

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 101
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not Found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 102
    :cond_0
    move-object/from16 v0, p7

    invoke-static {v0, v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 104
    iget v4, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/videoeditor/TransitionAlpha;->mWidth:I

    .line 105
    iget v4, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/videoeditor/TransitionAlpha;->mHeight:I

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/videoeditor/TransitionAlpha;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getProjectPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mask"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".rgb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/videoeditor/TransitionAlpha;->mRGBMaskFile:Ljava/lang/String;

    .line 111
    const/4 v14, 0x0

    .line 114
    .local v14, "fl":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/videoeditor/TransitionAlpha;->mRGBMaskFile:Ljava/lang/String;

    invoke-direct {v15, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v14    # "fl":Ljava/io/FileOutputStream;
    .local v15, "fl":Ljava/io/FileOutputStream;
    move-object v14, v15

    .line 118
    .end local v15    # "fl":Ljava/io/FileOutputStream;
    .restart local v14    # "fl":Ljava/io/FileOutputStream;
    :goto_0
    new-instance v13, Ljava/io/DataOutputStream;

    invoke-direct {v13, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 120
    .local v13, "dos":Ljava/io/DataOutputStream;
    if-eqz v14, :cond_2

    .line 124
    invoke-static/range {p7 .. p7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 125
    .local v2, "imageBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/videoeditor/TransitionAlpha;->mWidth:I

    new-array v3, v4, [I

    .line 126
    .local v3, "framingBuffer":[I
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 129
    .local v11, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    .line 130
    .local v10, "array":[B
    const/4 v7, 0x0

    .line 131
    .local v7, "tmp":I
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/videoeditor/TransitionAlpha;->mHeight:I

    if-ge v7, v4, :cond_1

    .line 132
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/videoeditor/TransitionAlpha;->mWidth:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Landroid/media/videoeditor/TransitionAlpha;->mWidth:I

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 133
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v16

    .line 134
    .local v16, "intBuffer":Ljava/nio/IntBuffer;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/videoeditor/TransitionAlpha;->mWidth:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 136
    :try_start_1
    invoke-virtual {v13, v10}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 143
    .end local v16    # "intBuffer":Ljava/nio/IntBuffer;
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 145
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 154
    .end local v2    # "imageBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "framingBuffer":[I
    .end local v7    # "tmp":I
    .end local v10    # "array":[B
    .end local v11    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_2
    :goto_3
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/TransitionAlpha;->mMaskFilename:Ljava/lang/String;

    .line 155
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/videoeditor/TransitionAlpha;->mBlendingPercent:I

    .line 156
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/videoeditor/TransitionAlpha;->mIsInvert:Z

    .line 157
    return-void

    .line 137
    .restart local v2    # "imageBitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "framingBuffer":[I
    .restart local v7    # "tmp":I
    .restart local v10    # "array":[B
    .restart local v11    # "byteBuffer":Ljava/nio/ByteBuffer;
    .restart local v16    # "intBuffer":Ljava/nio/IntBuffer;
    :catch_0
    move-exception v4

    goto :goto_2

    .line 146
    .end local v16    # "intBuffer":Ljava/nio/IntBuffer;
    :catch_1
    move-exception v4

    goto :goto_3

    .line 115
    .end local v2    # "imageBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "framingBuffer":[I
    .end local v7    # "tmp":I
    .end local v10    # "array":[B
    .end local v11    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v13    # "dos":Ljava/io/DataOutputStream;
    :catch_2
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public generate()V
    .locals 0

    .prologue
    .line 203
    invoke-super {p0}, Landroid/media/videoeditor/Transition;->generate()V

    .line 204
    return-void
.end method

.method public getBlendingPercent()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Landroid/media/videoeditor/TransitionAlpha;->mBlendingPercent:I

    return v0
.end method

.method public getMaskFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/media/videoeditor/TransitionAlpha;->mMaskFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getPNGMaskFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/media/videoeditor/TransitionAlpha;->mRGBMaskFile:Ljava/lang/String;

    return-object v0
.end method

.method public getRGBFileHeight()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Landroid/media/videoeditor/TransitionAlpha;->mHeight:I

    return v0
.end method

.method public getRGBFileWidth()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Landroid/media/videoeditor/TransitionAlpha;->mWidth:I

    return v0
.end method

.method public isInvert()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Landroid/media/videoeditor/TransitionAlpha;->mIsInvert:Z

    return v0
.end method
