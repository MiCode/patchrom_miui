.class public Landroid/content/res/TypedArray;
.super Ljava/lang/Object;
.source "TypedArray.java"


# instance fields
.field mData:[I

.field mIndices:[I

.field mLength:I

.field private final mResources:Landroid/content/res/Resources;

.field mRsrcs:[I

.field mValue:Landroid/util/TypedValue;

.field mXml:Landroid/content/res/XmlBlock$Parser;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;[I[II)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "data"    # [I
    .param p3, "indices"    # [I
    .param p4, "len"    # I

    .prologue
    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 732
    iput-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 733
    iput-object p2, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 734
    iput-object p3, p0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 735
    iput p4, p0, Landroid/content/res/TypedArray;->mLength:I

    .line 736
    return-void
.end method

.method private getValueAt(ILandroid/util/TypedValue;)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .prologue
    .line 701
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 702
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 703
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 704
    const/4 v2, 0x0

    .line 713
    :goto_0
    return v2

    .line 706
    :cond_0
    iput v1, p2, Landroid/util/TypedValue;->type:I

    .line 707
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->data:I

    .line 708
    add-int/lit8 v2, p1, 0x2

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 709
    add-int/lit8 v2, p1, 0x3

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 710
    add-int/lit8 v2, p1, 0x4

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->changingConfigurations:I

    .line 711
    add-int/lit8 v2, p1, 0x5

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->density:I

    .line 712
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1
    iput-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 713
    const/4 v2, 0x1

    goto :goto_0

    .line 712
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private loadStringValueAt(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 717
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 718
    .local v1, "data":[I
    add-int/lit8 v2, p1, 0x2

    aget v0, v1, v2

    .line 719
    .local v0, "cookie":I
    if-gez v0, :cond_1

    .line 720
    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v2, :cond_0

    .line 721
    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 727
    :goto_0
    return-object v2

    .line 724
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 727
    :cond_1
    iget-object v2, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v2, v2, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/AssetManager;->getPooledString(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getBoolean(IZ)Z
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # Z

    .prologue
    .line 212
    mul-int/lit8 p1, p1, 0x6

    .line 213
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 214
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 215
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 230
    .end local p2    # "defValue":Z
    :goto_0
    return p2

    .line 217
    .restart local p2    # "defValue":Z
    :cond_0
    const/16 v3, 0x10

    if-lt v1, v3, :cond_2

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_2

    .line 219
    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move p2, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 222
    :cond_2
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 223
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 224
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Converting to boolean: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result p2

    goto :goto_0

    .line 228
    :cond_3
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBoolean of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getColor(II)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 309
    mul-int/lit8 p1, p1, 0x6

    .line 310
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 311
    .local v1, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    .line 312
    .local v2, "type":I
    if-nez v2, :cond_1

    .line 324
    .end local p2    # "defValue":I
    :cond_0
    :goto_0
    return p2

    .line 314
    .restart local p2    # "defValue":I
    :cond_1
    const/16 v4, 0x10

    if-lt v2, v4, :cond_2

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_2

    .line 316
    add-int/lit8 v4, p1, 0x1

    aget p2, v1, v4

    goto :goto_0

    .line 317
    :cond_2
    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 318
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 319
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 320
    iget-object v4, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 322
    .local v0, "csl":Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    goto :goto_0

    .line 327
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t convert to color: type=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 341
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 342
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 345
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDimension(IF)F
    .locals 5
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .prologue
    .line 389
    mul-int/lit8 p1, p1, 0x6

    .line 390
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 391
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 392
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 395
    .end local p2    # "defValue":F
    :goto_0
    return p2

    .line 394
    .restart local p2    # "defValue":F
    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 395
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v3, v3, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result p2

    goto :goto_0

    .line 399
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to dimension: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDimensionPixelOffset(II)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 421
    mul-int/lit8 p1, p1, 0x6

    .line 422
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 423
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 424
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 427
    .end local p2    # "defValue":I
    :goto_0
    return p2

    .line 426
    .restart local p2    # "defValue":I
    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 427
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v3, v3, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result p2

    goto :goto_0

    .line 431
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to dimension: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDimensionPixelSize(II)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 454
    mul-int/lit8 p1, p1, 0x6

    .line 455
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 456
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 457
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 460
    .end local p2    # "defValue":I
    :goto_0
    return p2

    .line 459
    .restart local p2    # "defValue":I
    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 460
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v3, v3, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p2

    goto :goto_0

    .line 464
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to dimension: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 591
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 592
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 604
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFloat(IF)F
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .prologue
    .line 271
    mul-int/lit8 p1, p1, 0x6

    .line 272
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 273
    .local v0, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v0, v4

    .line 274
    .local v2, "type":I
    if-nez v2, :cond_0

    .line 293
    .end local p2    # "defValue":F
    :goto_0
    return p2

    .line 276
    .restart local p2    # "defValue":F
    :cond_0
    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    .line 277
    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    goto :goto_0

    .line 278
    :cond_1
    const/16 v4, 0x10

    if-lt v2, v4, :cond_2

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_2

    .line 280
    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    int-to-float p2, v4

    goto :goto_0

    .line 283
    :cond_2
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 284
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 285
    const-string v4, "Resources"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Converting to float: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 287
    .local v1, "str":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    .line 288
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    goto :goto_0

    .line 291
    .end local v1    # "str":Ljava/lang/CharSequence;
    :cond_3
    const-string v4, "Resources"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFloat of bad type: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFraction(IIIF)F
    .locals 5
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I
    .param p4, "defValue"    # F

    .prologue
    .line 540
    mul-int/lit8 p1, p1, 0x6

    .line 541
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 542
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 543
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 546
    .end local p4    # "defValue":F
    :goto_0
    return p4

    .line 545
    .restart local p4    # "defValue":F
    :cond_0
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 546
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result p4

    goto :goto_0

    .line 550
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to fraction: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIndex(I)I
    .locals 2
    .param p1, "at"    # I

    .prologue
    .line 72
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getIndexCount()I
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getInt(II)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 242
    mul-int/lit8 p1, p1, 0x6

    .line 243
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 244
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 245
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 260
    .end local p2    # "defValue":I
    :goto_0
    return p2

    .line 247
    .restart local p2    # "defValue":I
    :cond_0
    const/16 v3, 0x10

    if-lt v1, v3, :cond_1

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_1

    .line 249
    add-int/lit8 v3, p1, 0x1

    aget p2, v0, v3

    goto :goto_0

    .line 252
    :cond_1
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 253
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Converting to int: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result p2

    goto :goto_0

    .line 258
    :cond_2
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInt of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getInteger(II)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 358
    mul-int/lit8 p1, p1, 0x6

    .line 359
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 360
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 361
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 365
    .end local p2    # "defValue":I
    :goto_0
    return p2

    .line 363
    .restart local p2    # "defValue":I
    :cond_0
    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_1

    .line 365
    add-int/lit8 v2, p1, 0x1

    aget p2, v0, v2

    goto :goto_0

    .line 368
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to integer: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getLayoutDimension(II)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 510
    mul-int/lit8 p1, p1, 0x6

    .line 511
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 512
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 513
    .local v1, "type":I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_1

    .line 515
    add-int/lit8 v2, p1, 0x1

    aget p2, v0, v2

    .line 521
    .end local p2    # "defValue":I
    :cond_0
    :goto_0
    return p2

    .line 516
    .restart local p2    # "defValue":I
    :cond_1
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 517
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v3, v3, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p2

    goto :goto_0
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 481
    mul-int/lit8 p1, p1, 0x6

    .line 482
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 483
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 484
    .local v1, "type":I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 486
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    .line 488
    :goto_0
    return v2

    .line 487
    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 488
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v3, v3, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    goto :goto_0

    .line 492
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": You must supply a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " attribute."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getNonConfigurationString(II)Ljava/lang/String;
    .locals 8
    .param p1, "index"    # I
    .param p2, "allowedChangingConfigs"    # I

    .prologue
    const/4 v4, 0x0

    .line 180
    mul-int/lit8 p1, p1, 0x6

    .line 181
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 182
    .local v1, "data":[I
    add-int/lit8 v5, p1, 0x0

    aget v2, v1, v5

    .line 183
    .local v2, "type":I
    add-int/lit8 v5, p1, 0x4

    aget v5, v1, v5

    xor-int/lit8 v6, p2, -0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-object v4

    .line 186
    :cond_1
    if-eqz v2, :cond_0

    .line 188
    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 189
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 192
    :cond_2
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 193
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 194
    const-string v5, "Resources"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Converting to string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 196
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 198
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_3
    const-string v5, "Resources"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getString of bad type: 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 154
    mul-int/lit8 p1, p1, 0x6

    .line 155
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 156
    .local v1, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v2, v1, v3

    .line 157
    .local v2, "type":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 158
    add-int/lit8 v3, p1, 0x2

    aget v0, v1, v3

    .line 159
    .local v0, "cookie":I
    if-gez v0, :cond_0

    .line 160
    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    .end local v0    # "cookie":I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    invoke-virtual {v0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<internal>"

    goto :goto_0
.end method

.method public getResourceId(II)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 569
    mul-int/lit8 p1, p1, 0x6

    .line 570
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 571
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v0, v2

    if-eqz v2, :cond_0

    .line 572
    add-int/lit8 v2, p1, 0x3

    aget v1, v0, v2

    .line 573
    .local v1, "resid":I
    if-eqz v1, :cond_0

    .line 577
    .end local v1    # "resid":I
    :goto_0
    return v1

    :cond_0
    move v1, p2

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 119
    mul-int/lit8 p1, p1, 0x6

    .line 120
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 121
    .local v1, "data":[I
    add-int/lit8 v5, p1, 0x0

    aget v2, v1, v5

    .line 122
    .local v2, "type":I
    if-nez v2, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-object v4

    .line 124
    :cond_1
    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 125
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 128
    :cond_2
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 129
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 130
    const-string v5, "Resources"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Converting to string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 132
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 134
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_3
    const-string v5, "Resources"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getString of bad type: 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 91
    mul-int/lit8 p1, p1, 0x6

    .line 92
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 93
    .local v0, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v1, v0, v4

    .line 94
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 107
    :goto_0
    return-object v3

    .line 96
    :cond_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 97
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 100
    :cond_1
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 101
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Converting to string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 105
    :cond_2
    const-string v4, "Resources"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getString of bad type: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 618
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 619
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 631
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue(ILandroid/util/TypedValue;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .prologue
    .line 644
    mul-int/lit8 v0, p1, 0x6

    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v0

    return v0
.end method

.method public hasValue(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 655
    mul-int/lit8 p1, p1, 0x6

    .line 656
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 657
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 658
    .local v1, "type":I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Landroid/content/res/TypedArray;->mLength:I

    return v0
.end method

.method public peekValue(I)Landroid/util/TypedValue;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 673
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 674
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 677
    .end local v0    # "value":Landroid/util/TypedValue;
    :goto_0
    return-object v0

    .restart local v0    # "value":Landroid/util/TypedValue;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 4

    .prologue
    .line 691
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v2, v1, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 692
    :try_start_0
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v0, v1, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 693
    .local v0, "cached":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/res/TypedArray;->mData:[I

    array-length v1, v1

    iget-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 694
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 695
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iput-object p0, v1, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 697
    :cond_1
    monitor-exit v2

    .line 698
    return-void

    .line 697
    .end local v0    # "cached":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
