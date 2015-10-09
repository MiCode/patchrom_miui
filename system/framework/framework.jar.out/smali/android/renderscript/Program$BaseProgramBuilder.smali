.class public Landroid/renderscript/Program$BaseProgramBuilder;
.super Ljava/lang/Object;
.source "Program.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Program;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseProgramBuilder"
.end annotation


# instance fields
.field mConstantCount:I

.field mConstants:[Landroid/renderscript/Type;

.field mInputCount:I

.field mInputs:[Landroid/renderscript/Element;

.field mOutputCount:I

.field mOutputs:[Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;

.field mShader:Ljava/lang/String;

.field mTextureCount:I

.field mTextureNames:[Ljava/lang/String;

.field mTextureTypes:[Landroid/renderscript/Program$TextureType;

.field mTextures:[Landroid/renderscript/Type;


# direct methods
.method protected constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 3
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 217
    new-array v0, v1, [Landroid/renderscript/Element;

    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    .line 218
    new-array v0, v1, [Landroid/renderscript/Element;

    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputs:[Landroid/renderscript/Element;

    .line 219
    new-array v0, v1, [Landroid/renderscript/Type;

    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    .line 220
    iput v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    .line 221
    iput v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    .line 222
    iput v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    .line 223
    iput v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    .line 224
    new-array v0, v1, [Landroid/renderscript/Program$TextureType;

    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    .line 225
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureNames:[Ljava/lang/String;

    .line 226
    return-void
.end method


# virtual methods
.method public addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;
    .locals 2
    .param p1, "t"    # Landroid/renderscript/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 310
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 311
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Max input count exceeded."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Element;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Complex elements not allowed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_1
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    aput-object p1, v0, v1

    .line 317
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    .line 318
    return-object p0
.end method

.method public addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;
    .locals 2
    .param p1, "texType"    # Landroid/renderscript/Program$TextureType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/renderscript/Program$BaseProgramBuilder;->addTexture(Landroid/renderscript/Program$TextureType;Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 330
    return-object p0
.end method

.method public addTexture(Landroid/renderscript/Program$TextureType;Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;
    .locals 2
    .param p1, "texType"    # Landroid/renderscript/Program$TextureType;
    .param p2, "texName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 344
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max texture count exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    aput-object p1, v0, v1

    .line 348
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureNames:[Ljava/lang/String;

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    aput-object p2, v0, v1

    .line 349
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    .line 350
    return-object p0
.end method

.method public getCurrentConstantIndex()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getCurrentTextureIndex()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected initProgram(Landroid/renderscript/Program;)V
    .locals 4
    .param p1, "p"    # Landroid/renderscript/Program;

    .prologue
    const/4 v3, 0x0

    .line 354
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    new-array v0, v0, [Landroid/renderscript/Element;

    iput-object v0, p1, Landroid/renderscript/Program;->mInputs:[Landroid/renderscript/Element;

    .line 355
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    iget-object v1, p1, Landroid/renderscript/Program;->mInputs:[Landroid/renderscript/Element;

    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    new-array v0, v0, [Landroid/renderscript/Element;

    iput-object v0, p1, Landroid/renderscript/Program;->mOutputs:[Landroid/renderscript/Element;

    .line 357
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputs:[Landroid/renderscript/Element;

    iget-object v1, p1, Landroid/renderscript/Program;->mOutputs:[Landroid/renderscript/Element;

    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    new-array v0, v0, [Landroid/renderscript/Type;

    iput-object v0, p1, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    .line 359
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    iget-object v1, p1, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    iput v0, p1, Landroid/renderscript/Program;->mTextureCount:I

    .line 361
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    new-array v0, v0, [Landroid/renderscript/Program$TextureType;

    iput-object v0, p1, Landroid/renderscript/Program;->mTextures:[Landroid/renderscript/Program$TextureType;

    .line 362
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    iget-object v1, p1, Landroid/renderscript/Program;->mTextures:[Landroid/renderscript/Program$TextureType;

    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p1, Landroid/renderscript/Program;->mTextureNames:[Ljava/lang/String;

    .line 364
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureNames:[Ljava/lang/String;

    iget-object v1, p1, Landroid/renderscript/Program;->mTextureNames:[Ljava/lang/String;

    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    return-void
.end method

.method public setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;
    .locals 10
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceID"    # I

    .prologue
    .line 250
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 253
    .local v4, "is":Ljava/io/InputStream;
    const/16 v7, 0x400

    :try_start_0
    new-array v5, v7, [B

    .line 254
    .local v5, "str":[B
    const/4 v6, 0x0

    .line 256
    .local v6, "strLength":I
    :goto_0
    array-length v7, v5

    sub-int v1, v7, v6

    .line 257
    .local v1, "bytesLeft":I
    if-nez v1, :cond_0

    .line 258
    array-length v7, v5

    mul-int/lit8 v7, v7, 0x2

    new-array v0, v7, [B

    .line 259
    .local v0, "buf2":[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, v5

    invoke-static {v5, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    move-object v5, v0

    .line 261
    array-length v7, v5

    sub-int v1, v7, v6

    .line 263
    .end local v0    # "buf2":[B
    :cond_0
    invoke-virtual {v4, v5, v6, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 264
    .local v2, "bytesRead":I
    if-gtz v2, :cond_1

    .line 270
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 277
    :try_start_2
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "UTF-8"

    invoke-direct {v7, v5, v8, v6, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v7, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mShader:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 282
    :goto_1
    return-object p0

    .line 267
    :cond_1
    add-int/2addr v6, v2

    .line 268
    goto :goto_0

    .line 270
    .end local v1    # "bytesLeft":I
    .end local v2    # "bytesRead":I
    .end local v5    # "str":[B
    .end local v6    # "strLength":I
    :catchall_0
    move-exception v7

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 272
    :catch_0
    move-exception v3

    .line 273
    .local v3, "e":Ljava/io/IOException;
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v7}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v7

    .line 278
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "bytesLeft":I
    .restart local v2    # "bytesRead":I
    .restart local v5    # "str":[B
    .restart local v6    # "strLength":I
    :catch_1
    move-exception v3

    .line 279
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v7, "RenderScript shader creation"

    const-string v8, "Could not decode shader string"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mShader:Ljava/lang/String;

    .line 236
    return-object p0
.end method
