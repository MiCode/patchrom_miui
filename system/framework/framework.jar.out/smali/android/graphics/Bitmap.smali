.class public final Landroid/graphics/Bitmap;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Bitmap$2;,
        Landroid/graphics/Bitmap$BitmapFinalizer;,
        Landroid/graphics/Bitmap$CompressFormat;,
        Landroid/graphics/Bitmap$Config;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_NONE:I = 0x0

.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static volatile sDefaultDensity:I

.field private static volatile sScaleMatrix:Landroid/graphics/Matrix;


# instance fields
.field public mBuffer:[B

.field mDensity:I

.field private final mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

.field private mHeight:I

.field private final mIsMutable:Z

.field private mIsPremultiplied:Z

.field private mLayoutBounds:[I

.field public final mNativeBitmap:I

.field private mNinePatchChunk:[B

.field private mRecycled:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, -0x1

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 1450
    new-instance v0, Landroid/graphics/Bitmap$1;

    invoke-direct {v0}, Landroid/graphics/Bitmap$1;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[BIIIZZ[B[I)V
    .locals 2
    .param p1, "nativeBitmap"    # I
    .param p2, "buffer"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "density"    # I
    .param p6, "isMutable"    # Z
    .param p7, "isPremultiplied"    # Z
    .param p8, "ninePatchChunk"    # [B
    .param p9, "layoutBounds"    # [I

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v0

    iput v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 110
    if-nez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "internal error: native bitmap is 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iput p3, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 115
    iput p4, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 116
    iput-boolean p6, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    .line 117
    iput-boolean p7, p0, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    .line 118
    iput-object p2, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 120
    iput p1, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    .line 121
    new-instance v0, Landroid/graphics/Bitmap$BitmapFinalizer;

    invoke-direct {v0, p1}, Landroid/graphics/Bitmap$BitmapFinalizer;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    .line 123
    iput-object p8, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 124
    iput-object p9, p0, Landroid/graphics/Bitmap;->mLayoutBounds:[I

    .line 125
    if-ltz p5, :cond_1

    .line 126
    iput p5, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 128
    :cond_1
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 29
    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeDestructor(I)V

    return-void
.end method

.method private checkPixelAccess(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1341
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 1342
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be < bitmap.width()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1345
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 1346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be < bitmap.height()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1348
    :cond_1
    return-void
.end method

.method private checkPixelsAccess(IIIIII[I)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "offset"    # I
    .param p6, "stride"    # I
    .param p7, "pixels"    # [I

    .prologue
    .line 1364
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 1365
    if-gez p3, :cond_0

    .line 1366
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1368
    :cond_0
    if-gez p4, :cond_1

    .line 1369
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "height must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1371
    :cond_1
    add-int v2, p1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 1372
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "x + width must be <= bitmap.width()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1375
    :cond_2
    add-int v2, p2, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 1376
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "y + height must be <= bitmap.height()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1379
    :cond_3
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, p3, :cond_4

    .line 1380
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "abs(stride) must be >= width"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1382
    :cond_4
    add-int/lit8 v2, p4, -0x1

    mul-int/2addr v2, p6

    add-int v0, p5, v2

    .line 1383
    .local v0, "lastScanline":I
    array-length v1, p7

    .line 1384
    .local v1, "length":I
    if-ltz p5, :cond_5

    add-int v2, p5, p3

    if-gt v2, v1, :cond_5

    if-ltz v0, :cond_5

    add-int v2, v0, p3

    if-le v2, v1, :cond_6

    .line 1387
    :cond_5
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1389
    :cond_6
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 345
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 346
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_0
    return-void
.end method

.method private static checkWidthHeight(II)V
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 372
    if-gtz p0, :cond_0

    .line 373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    if-gtz p1, :cond_1

    .line 376
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_1
    return-void
.end method

.method private static checkXYSign(II)V
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 357
    if-gez p0, :cond_0

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    if-gez p1, :cond_1

    .line 361
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_1
    return-void
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 754
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "hasAlpha"    # Z

    .prologue
    .line 787
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "src"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 613
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 633
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "m"    # Landroid/graphics/Matrix;
    .param p6, "filter"    # Z

    .prologue
    .line 663
    invoke-static/range {p1 .. p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 664
    invoke-static/range {p3 .. p4}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 665
    add-int v13, p1, p3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    if-le v13, v14, :cond_0

    .line 666
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "x + width must be <= bitmap.width()"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 668
    :cond_0
    add-int v13, p2, p4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    if-le v13, v14, :cond_1

    .line 669
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "y + height must be <= bitmap.height()"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 673
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v13

    if-nez v13, :cond_3

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    move/from16 v0, p3

    if-ne v0, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    move/from16 v0, p4

    if-ne v0, v13, :cond_3

    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 741
    .end local p0    # "source":Landroid/graphics/Bitmap;
    :cond_2
    :goto_0
    return-object p0

    .line 678
    .restart local p0    # "source":Landroid/graphics/Bitmap;
    :cond_3
    move/from16 v9, p3

    .line 679
    .local v9, "neww":I
    move/from16 v8, p4

    .line 680
    .local v8, "newh":I
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 684
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Rect;

    add-int v13, p1, p3

    add-int v14, p2, p4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v11, v0, v1, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 685
    .local v11, "srcR":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p3

    int-to-float v15, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v6, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 687
    .local v6, "dstR":Landroid/graphics/RectF;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 688
    .local v7, "newConfig":Landroid/graphics/Bitmap$Config;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 690
    .local v4, "config":Landroid/graphics/Bitmap$Config;
    if-eqz v4, :cond_4

    .line 691
    sget-object v13, Landroid/graphics/Bitmap$2;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v4}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 702
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 707
    :cond_4
    :goto_1
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 708
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v13

    invoke-static {v9, v8, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 709
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 734
    .end local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    .local v10, "paint":Landroid/graphics/Paint;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Landroid/graphics/Bitmap;->mDensity:I

    iput v13, v2, Landroid/graphics/Bitmap;->mDensity:I

    .line 735
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    invoke-direct {v2, v13, v14}, Landroid/graphics/Bitmap;->setAlphaAndPremultiplied(ZZ)V

    .line 737
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 738
    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v11, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 739
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 p0, v2

    .line 741
    goto :goto_0

    .line 693
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "paint":Landroid/graphics/Paint;
    .restart local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    :pswitch_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 694
    goto :goto_1

    .line 696
    :pswitch_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 697
    goto :goto_1

    .line 711
    :cond_7
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v13

    if-nez v13, :cond_a

    const/4 v12, 0x1

    .line 713
    .local v12, "transformed":Z
    :goto_3
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 714
    .local v5, "deviceR":Landroid/graphics/RectF;
    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 716
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 717
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 719
    if-eqz v12, :cond_8

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    :cond_8
    if-nez v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v13

    if-eqz v13, :cond_b

    :cond_9
    const/4 v13, 0x1

    :goto_4
    invoke-static {v9, v8, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 722
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    iget v13, v5, Landroid/graphics/RectF;->left:F

    neg-float v13, v13

    iget v14, v5, Landroid/graphics/RectF;->top:F

    neg-float v14, v14

    invoke-virtual {v3, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 723
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 725
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 726
    .restart local v10    # "paint":Landroid/graphics/Paint;
    move/from16 v0, p6

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 727
    if-eqz v12, :cond_6

    .line 728
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_2

    .line 711
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "deviceR":Landroid/graphics/RectF;
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v12    # "transformed":Z
    .restart local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    :cond_a
    const/4 v12, 0x0

    goto :goto_3

    .line 719
    .end local v7    # "newConfig":Landroid/graphics/Bitmap$Config;
    .restart local v5    # "deviceR":Landroid/graphics/RectF;
    .restart local v12    # "transformed":Z
    :cond_b
    const/4 v13, 0x0

    goto :goto_4

    .line 691
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 770
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .param p4, "hasAlpha"    # Z

    .prologue
    .line 807
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 808
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 810
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v5, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v6, 0x1

    move v2, p1

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 811
    .local v7, "bm":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_2

    .line 812
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, v7, Landroid/graphics/Bitmap;->mDensity:I

    .line 814
    :cond_2
    invoke-virtual {v7, p4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 815
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p3, v0, :cond_3

    if-nez p4, :cond_3

    .line 816
    iget v0, v7, Landroid/graphics/Bitmap;->mNativeBitmap:I

    const/high16 v1, -0x1000000

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeErase(II)V

    .line 821
    :cond_3
    return-object v7
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 870
    invoke-static/range {p4 .. p5}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 871
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, p4, :cond_0

    .line 872
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "abs(stride) must be >= width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 874
    :cond_0
    add-int/lit8 v1, p5, -0x1

    mul-int/2addr v1, p3

    add-int v9, p2, v1

    .line 875
    .local v9, "lastScanline":I
    array-length v10, p1

    .line 876
    .local v10, "length":I
    if-ltz p2, :cond_1

    add-int v1, p2, p4

    if-gt v1, v10, :cond_1

    if-ltz v9, :cond_1

    add-int v1, v9, p4

    if-le v1, v10, :cond_2

    .line 878
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 880
    :cond_2
    if-lez p4, :cond_3

    if-gtz p5, :cond_4

    .line 881
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "width and height must be > 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 883
    :cond_4
    move-object/from16 v0, p6

    iget v6, v0, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v7, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 885
    .local v8, "bm":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_5

    .line 886
    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v8, Landroid/graphics/Bitmap;->mDensity:I

    .line 888
    :cond_5
    return-object v8
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;[IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "display"    # Landroid/util/DisplayMetrics;
    .param p1, "colors"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 929
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "colors"    # [I
    .param p1, "offset"    # I
    .param p2, "stride"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 844
    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "colors"    # [I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 907
    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "dstWidth"    # I
    .param p2, "dstHeight"    # I
    .param p3, "filter"    # Z

    .prologue
    const/4 v1, 0x0

    .line 580
    const-class v2, Landroid/graphics/Bitmap;

    monitor-enter v2

    .line 582
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 583
    .local v5, "m":Landroid/graphics/Matrix;
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 584
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    if-nez v5, :cond_0

    .line 587
    new-instance v5, Landroid/graphics/Matrix;

    .end local v5    # "m":Landroid/graphics/Matrix;
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 590
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 591
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 592
    .local v4, "height":I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v8, v0, v2

    .line 593
    .local v8, "sx":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v9, v0, v2

    .line 594
    .local v9, "sy":F
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v0, p0

    move v2, v1

    move v6, p3

    .line 595
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 597
    .local v7, "b":Landroid/graphics/Bitmap;
    const-class v1, Landroid/graphics/Bitmap;

    monitor-enter v1

    .line 599
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    .line 600
    sput-object v5, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 602
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 604
    return-object v7

    .line 584
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b":Landroid/graphics/Bitmap;
    .end local v8    # "sx":F
    .end local v9    # "sy":F
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 602
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    .restart local v5    # "m":Landroid/graphics/Matrix;
    .restart local v7    # "b":Landroid/graphics/Bitmap;
    .restart local v8    # "sx":F
    .restart local v9    # "sy":F
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method static getDefaultDensity()I
    .locals 1

    .prologue
    .line 94
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    if-ltz v0, :cond_0

    .line 95
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 99
    :goto_0
    return v0

    .line 98
    :cond_0
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 99
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    goto :goto_0
.end method

.method private static native nativeCompress(IIILjava/io/OutputStream;[B)Z
.end method

.method private static native nativeConfig(I)I
.end method

.method private static native nativeCopy(IIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyPixelsFromBuffer(ILjava/nio/Buffer;)V
.end method

.method private static native nativeCopyPixelsToBuffer(ILjava/nio/Buffer;)V
.end method

.method private static native nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDestructor(I)V
.end method

.method private static native nativeErase(II)V
.end method

.method private static native nativeExtractAlpha(II[I)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGenerationId(I)I
.end method

.method private static native nativeGetPixel(IIIZ)I
.end method

.method private static native nativeGetPixels(I[IIIIIIIZ)V
.end method

.method private static native nativeHasAlpha(I)Z
.end method

.method private static native nativeHasMipMap(I)Z
.end method

.method private static native nativePrepareToDraw(I)V
.end method

.method private static native nativeReconfigure(IIIII)V
.end method

.method private static native nativeRecycle(I)Z
.end method

.method private static native nativeRowBytes(I)I
.end method

.method private static native nativeSameAs(II)Z
.end method

.method private static native nativeSetAlphaAndPremultiplied(IZZ)V
.end method

.method private static native nativeSetHasMipMap(IZ)V
.end method

.method private static native nativeSetPixel(IIIIZ)V
.end method

.method private static native nativeSetPixels(I[IIIIIIIZ)V
.end method

.method private static native nativeWriteToParcel(IZILandroid/os/Parcel;)Z
.end method

.method public static scaleFromDensity(III)I
    .locals 2
    .param p0, "size"    # I
    .param p1, "sdensity"    # I
    .param p2, "tdensity"    # I

    .prologue
    .line 1132
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, p2, :cond_1

    .line 1137
    .end local p0    # "size":I
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "size":I
    :cond_1
    mul-int v0, p0, p2

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    div-int p0, v0, p1

    goto :goto_0
.end method

.method private final setAlphaAndPremultiplied(ZZ)V
    .locals 1
    .param p1, "hasAlpha"    # Z
    .param p2, "premultiplied"    # Z

    .prologue
    .line 1060
    iput-boolean p2, p0, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    .line 1061
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->nativeSetAlphaAndPremultiplied(IZZ)V

    .line 1062
    return-void
.end method

.method public static setDefaultDensity(I)V
    .locals 0
    .param p0, "density"    # I

    .prologue
    .line 90
    sput p0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 91
    return-void
.end method


# virtual methods
.method public compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    .locals 3
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "quality"    # I
    .param p3, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 986
    const-string v0, "Can\'t compress a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 988
    if-nez p3, :cond_0

    .line 989
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 991
    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x64

    if-le p2, v0, :cond_2

    .line 992
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 994
    :cond_2
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v1, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    const/16 v2, 0x1000

    new-array v2, v2, [B

    invoke-static {v0, v1, p2, p3, v2}, Landroid/graphics/Bitmap;->nativeCompress(IIILjava/io/OutputStream;[B)Z

    move-result v0

    return v0
.end method

.method public copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;
    .param p2, "isMutable"    # Z

    .prologue
    .line 555
    const-string v1, "Can\'t copy a recycled bitmap"

    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 556
    iget v1, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v2, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v1, v2, p2}, Landroid/graphics/Bitmap;->nativeCopy(IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 557
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    invoke-direct {v0, v1, v2}, Landroid/graphics/Bitmap;->setAlphaAndPremultiplied(ZZ)V

    .line 559
    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 561
    :cond_0
    return-object v0
.end method

.method public copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    .locals 11
    .param p1, "src"    # Ljava/nio/Buffer;

    .prologue
    .line 513
    const-string v7, "copyPixelsFromBuffer called on recycled bitmap"

    invoke-direct {p0, v7}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    .line 517
    .local v4, "elements":I
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_0

    .line 518
    const/4 v6, 0x0

    .line 527
    .local v6, "shift":I
    :goto_0
    int-to-long v7, v4

    shl-long v2, v7, v6

    .line 528
    .local v2, "bufferBytes":J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    int-to-long v0, v7

    .line 530
    .local v0, "bitmapBytes":J
    cmp-long v7, v2, v0

    if-gez v7, :cond_3

    .line 531
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Buffer not large enough for pixels"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 519
    .end local v0    # "bitmapBytes":J
    .end local v2    # "bufferBytes":J
    .end local v6    # "shift":I
    :cond_0
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    if-eqz v7, :cond_1

    .line 520
    const/4 v6, 0x1

    .restart local v6    # "shift":I
    goto :goto_0

    .line 521
    .end local v6    # "shift":I
    :cond_1
    instance-of v7, p1, Ljava/nio/IntBuffer;

    if-eqz v7, :cond_2

    .line 522
    const/4 v6, 0x2

    .restart local v6    # "shift":I
    goto :goto_0

    .line 524
    .end local v6    # "shift":I
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "unsupported Buffer subclass"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 534
    .restart local v0    # "bitmapBytes":J
    .restart local v2    # "bufferBytes":J
    .restart local v6    # "shift":I
    :cond_3
    iget v7, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v7, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsFromBuffer(ILjava/nio/Buffer;)V

    .line 537
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    .line 538
    .local v5, "position":I
    int-to-long v7, v5

    shr-long v9, v0, v6

    add-long/2addr v7, v9

    long-to-int v5, v7

    .line 539
    invoke-virtual {p1, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 540
    return-void
.end method

.method public copyPixelsToBuffer(Ljava/nio/Buffer;)V
    .locals 11
    .param p1, "dst"    # Ljava/nio/Buffer;

    .prologue
    .line 475
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    .line 477
    .local v2, "elements":I
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_0

    .line 478
    const/4 v6, 0x0

    .line 487
    .local v6, "shift":I
    :goto_0
    int-to-long v7, v2

    shl-long v0, v7, v6

    .line 488
    .local v0, "bufferSize":J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    int-to-long v3, v7

    .line 490
    .local v3, "pixelSize":J
    cmp-long v7, v0, v3

    if-gez v7, :cond_3

    .line 491
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Buffer not large enough for pixels"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 479
    .end local v0    # "bufferSize":J
    .end local v3    # "pixelSize":J
    .end local v6    # "shift":I
    :cond_0
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    if-eqz v7, :cond_1

    .line 480
    const/4 v6, 0x1

    .restart local v6    # "shift":I
    goto :goto_0

    .line 481
    .end local v6    # "shift":I
    :cond_1
    instance-of v7, p1, Ljava/nio/IntBuffer;

    if-eqz v7, :cond_2

    .line 482
    const/4 v6, 0x2

    .restart local v6    # "shift":I
    goto :goto_0

    .line 484
    .end local v6    # "shift":I
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "unsupported Buffer subclass"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 494
    .restart local v0    # "bufferSize":J
    .restart local v3    # "pixelSize":J
    .restart local v6    # "shift":I
    :cond_3
    iget v7, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v7, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsToBuffer(ILjava/nio/Buffer;)V

    .line 497
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    .line 498
    .local v5, "position":I
    int-to-long v7, v5

    shr-long v9, v3, v6

    add-long/2addr v7, v9

    long-to-int v5, v7

    .line 499
    invoke-virtual {p1, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 500
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1474
    const/4 v0, 0x0

    return v0
.end method

.method public eraseColor(I)V
    .locals 2
    .param p1, "c"    # I

    .prologue
    .line 1276
    const-string v0, "Can\'t erase a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1277
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1278
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot erase immutable bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1280
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeErase(II)V

    .line 1281
    return-void
.end method

.method public extractAlpha()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1497
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "offsetXY"    # [I

    .prologue
    .line 1526
    const-string v2, "Can\'t extractAlpha on a recycled bitmap"

    invoke-direct {p0, v2}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1527
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    .line 1528
    .local v1, "nativePaint":I
    :goto_0
    iget v2, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v2, v1, p2}, Landroid/graphics/Bitmap;->nativeExtractAlpha(II[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1529
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 1530
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to extractAlpha on Bitmap"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1527
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "nativePaint":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1532
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v1    # "nativePaint":I
    :cond_1
    iget v2, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v2, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 1533
    return-object v0
.end method

.method public final getAllocationByteCount()I
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    if-nez v0, :cond_0

    .line 1186
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 1188
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public final getByteCount()I
    .locals 2

    .prologue
    .line 1165
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public final getConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 1196
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeConfig(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Bitmap$Config;->nativeToConfig(I)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    return-object v0
.end method

.method public getDensity()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public getGenerationId()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeGenerationId(I)I

    move-result v0

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 1071
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    return v0
.end method

.method public getLayoutBounds()[I
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Landroid/graphics/Bitmap;->mLayoutBounds:[I

    return-object v0
.end method

.method public getNinePatchChunk()[B
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-object v0
.end method

.method public getPixel(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1294
    const-string v0, "Can\'t call getPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1295
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 1296
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->nativeGetPixel(IIIZ)I

    move-result v0

    return v0
.end method

.method public getPixels([IIIIIII)V
    .locals 9
    .param p1, "pixels"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 1324
    const-string v0, "Can\'t call getPixels() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1325
    if-eqz p6, :cond_0

    if-nez p7, :cond_1

    .line 1331
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move/from16 v4, p7

    move v5, p2

    move v6, p3

    move-object v7, p1

    .line 1328
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 1329
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-boolean v8, p0, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Bitmap;->nativeGetPixels(I[IIIIIIIZ)V

    goto :goto_0
.end method

.method public final getRowBytes()I
    .locals 1

    .prologue
    .line 1153
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeRowBytes(I)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(I)I
    .locals 2
    .param p1, "targetDensity"    # I

    .prologue
    .line 1125
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/graphics/Canvas;)I
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1087
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/util/DisplayMetrics;)I
    .locals 3
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 1103
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(I)I
    .locals 2
    .param p1, "targetDensity"    # I

    .prologue
    .line 1114
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/graphics/Canvas;)I
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1079
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/util/DisplayMetrics;)I
    .locals 3
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 1095
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 1066
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    return v0
.end method

.method public final hasAlpha()Z
    .locals 1

    .prologue
    .line 1208
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeHasAlpha(I)Z

    move-result v0

    return v0
.end method

.method public final hasMipMap()Z
    .locals 1

    .prologue
    .line 1243
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeHasMipMap(I)Z

    move-result v0

    return v0
.end method

.method public final isMutable()Z
    .locals 1

    .prologue
    .line 1002
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    return v0
.end method

.method public final isPremultiplied()Z
    .locals 2

    .prologue
    .line 1030
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRecycled()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    return v0
.end method

.method final ni()I
    .locals 1

    .prologue
    .line 1634
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    return v0
.end method

.method public prepareToDraw()V
    .locals 1

    .prologue
    .line 1557
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativePrepareToDraw(I)V

    .line 1558
    return-void
.end method

.method public reconfigure(IILandroid/graphics/Bitmap$Config;)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 209
    const-string v0, "Can\'t call reconfigure() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 210
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "only mutable bitmaps may be reconfigured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_2
    iget-object v0, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    if-nez v0, :cond_3

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "native-backed bitmaps may not be reconfigured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_3
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v1, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    iget-object v2, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    array-length v2, v2

    invoke-static {v0, p1, p2, v1, v2}, Landroid/graphics/Bitmap;->nativeReconfigure(IIIII)V

    .line 221
    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 222
    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 223
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 306
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_1

    .line 307
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeRecycle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iput-object v1, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 313
    iput-object v1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 315
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 317
    :cond_1
    return-void
.end method

.method reinit(IIZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isPremultiplied"    # Z

    .prologue
    .line 136
    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 137
    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 138
    iput-boolean p3, p0, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    .line 139
    return-void
.end method

.method public sameAs(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "other"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1542
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v1, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeSameAs(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 2
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 270
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 271
    return-void
.end method

.method public setDensity(I)V
    .locals 0
    .param p1, "density"    # I

    .prologue
    .line 179
    iput p1, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 180
    return-void
.end method

.method public setHasAlpha(Z)V
    .locals 2
    .param p1, "hasAlpha"    # Z

    .prologue
    .line 1222
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->nativeSetAlphaAndPremultiplied(IZZ)V

    .line 1223
    return-void
.end method

.method public final setHasMipMap(Z)V
    .locals 1
    .param p1, "hasMipMap"    # Z

    .prologue
    .line 1267
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeSetHasMipMap(IZ)V

    .line 1268
    return-void
.end method

.method public setHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 254
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 255
    return-void
.end method

.method public setLayoutBounds([I)V
    .locals 0
    .param p1, "bounds"    # [I

    .prologue
    .line 291
    iput-object p1, p0, Landroid/graphics/Bitmap;->mLayoutBounds:[I

    .line 292
    return-void
.end method

.method public setNinePatchChunk([B)V
    .locals 0
    .param p1, "chunk"    # [B

    .prologue
    .line 281
    iput-object p1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 282
    return-void
.end method

.method public setPixel(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "color"    # I

    .prologue
    .line 1405
    const-string v0, "Can\'t call setPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1406
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1407
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1409
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 1410
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    invoke-static {v0, p1, p2, p3, v1}, Landroid/graphics/Bitmap;->nativeSetPixel(IIIIZ)V

    .line 1411
    return-void
.end method

.method public setPixels([IIIIIII)V
    .locals 9
    .param p1, "pixels"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 1438
    const-string v0, "Can\'t call setPixels() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1440
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1442
    :cond_0
    if-eqz p6, :cond_1

    if-nez p7, :cond_2

    .line 1448
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move/from16 v4, p7

    move v5, p2

    move v6, p3

    move-object v7, p1

    .line 1445
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 1446
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-boolean v8, p0, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Bitmap;->nativeSetPixels(I[IIIIIIIZ)V

    goto :goto_0
.end method

.method public final setPremultiplied(Z)V
    .locals 2
    .param p1, "premultiplied"    # Z

    .prologue
    .line 1054
    iput-boolean p1, p0, Landroid/graphics/Bitmap;->mIsPremultiplied:Z

    .line 1055
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetAlphaAndPremultiplied(IZZ)V

    .line 1056
    return-void
.end method

.method public setWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 238
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 239
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1483
    const-string v0, "Can\'t parcel a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1484
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    iget v2, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->nativeWriteToParcel(IZILandroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1485
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native writeToParcel failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1487
    :cond_0
    return-void
.end method
