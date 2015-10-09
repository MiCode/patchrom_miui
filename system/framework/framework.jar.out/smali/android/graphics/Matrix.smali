.class public Landroid/graphics/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Matrix$ScaleToFit;
    }
.end annotation


# static fields
.field public static IDENTITY_MATRIX:Landroid/graphics/Matrix; = null

.field public static final MPERSP_0:I = 0x6

.field public static final MPERSP_1:I = 0x7

.field public static final MPERSP_2:I = 0x8

.field public static final MSCALE_X:I = 0x0

.field public static final MSCALE_Y:I = 0x4

.field public static final MSKEW_X:I = 0x1

.field public static final MSKEW_Y:I = 0x3

.field public static final MTRANS_X:I = 0x2

.field public static final MTRANS_Y:I = 0x5


# instance fields
.field public native_instance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Landroid/graphics/Matrix$1;

    invoke-direct {v0}, Landroid/graphics/Matrix$1;-><init>()V

    sput-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/graphics/Matrix;->native_create(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Matrix;->native_instance:I

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "src"    # Landroid/graphics/Matrix;

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/Matrix;->native_instance:I

    :goto_0
    invoke-static {v0}, Landroid/graphics/Matrix;->native_create(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Matrix;->native_instance:I

    .line 237
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkPointArrays([FI[FII)V
    .locals 3
    .param p0, "src"    # [F
    .param p1, "srcIndex"    # I
    .param p2, "dst"    # [F
    .param p3, "dstIndex"    # I
    .param p4, "pointCount"    # I

    .prologue
    .line 551
    shl-int/lit8 v2, p4, 0x1

    add-int v1, p1, v2

    .line 552
    .local v1, "srcStop":I
    shl-int/lit8 v2, p4, 0x1

    add-int v0, p3, v2

    .line 553
    .local v0, "dstStop":I
    or-int v2, p4, p1

    or-int/2addr v2, p3

    or-int/2addr v2, v1

    or-int/2addr v2, v0

    if-ltz v2, :cond_0

    array-length v2, p0

    if-gt v1, v2, :cond_0

    array-length v2, p2

    if-le v0, v2, :cond_1

    .line 555
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 557
    :cond_1
    return-void
.end method

.method private static native finalizer(I)V
.end method

.method private static native native_create(I)I
.end method

.method private static native native_equals(II)Z
.end method

.method private static native native_getValues(I[F)V
.end method

.method private static native native_invert(II)Z
.end method

.method private static native native_isIdentity(I)Z
.end method

.method private static native native_mapPoints(I[FI[FIIZ)V
.end method

.method private static native native_mapRadius(IF)F
.end method

.method private static native native_mapRect(ILandroid/graphics/RectF;Landroid/graphics/RectF;)Z
.end method

.method private static native native_postConcat(II)Z
.end method

.method private static native native_postRotate(IF)Z
.end method

.method private static native native_postRotate(IFFF)Z
.end method

.method private static native native_postScale(IFF)Z
.end method

.method private static native native_postScale(IFFFF)Z
.end method

.method private static native native_postSkew(IFF)Z
.end method

.method private static native native_postSkew(IFFFF)Z
.end method

.method private static native native_postTranslate(IFF)Z
.end method

.method private static native native_preConcat(II)Z
.end method

.method private static native native_preRotate(IF)Z
.end method

.method private static native native_preRotate(IFFF)Z
.end method

.method private static native native_preScale(IFF)Z
.end method

.method private static native native_preScale(IFFFF)Z
.end method

.method private static native native_preSkew(IFF)Z
.end method

.method private static native native_preSkew(IFFFF)Z
.end method

.method private static native native_preTranslate(IFF)Z
.end method

.method private static native native_rectStaysRect(I)Z
.end method

.method private static native native_reset(I)V
.end method

.method private static native native_set(II)V
.end method

.method private static native native_setConcat(III)Z
.end method

.method private static native native_setPolyToPoly(I[FI[FII)Z
.end method

.method private static native native_setRectToRect(ILandroid/graphics/RectF;Landroid/graphics/RectF;I)Z
.end method

.method private static native native_setRotate(IF)V
.end method

.method private static native native_setRotate(IFFF)V
.end method

.method private static native native_setScale(IFF)V
.end method

.method private static native native_setScale(IFFFF)V
.end method

.method private static native native_setSinCos(IFF)V
.end method

.method private static native native_setSinCos(IFFFF)V
.end method

.method private static native native_setSkew(IFF)V
.end method

.method private static native native_setSkew(IFFFF)V
.end method

.method private static native native_setTranslate(IFF)V
.end method

.method private static native native_setValues(I[F)V
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 273
    instance-of v0, p1, Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 274
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    check-cast p1, Landroid/graphics/Matrix;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->native_equals(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 797
    :try_start_0
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Matrix;->finalizer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 801
    return-void

    .line 799
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getValues([F)V
    .locals 2
    .param p1, "values"    # [F

    .prologue
    .line 727
    array-length v0, p1

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 728
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 730
    :cond_0
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_getValues(I[F)V

    .line 731
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 283
    const/16 v0, 0x2c

    return v0
.end method

.method public invert(Landroid/graphics/Matrix;)Z
    .locals 2
    .param p1, "inverse"    # Landroid/graphics/Matrix;

    .prologue
    .line 588
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->native_invert(II)Z

    move-result v0

    return v0
.end method

.method public isIdentity()Z
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Matrix;->native_isIdentity(I)Z

    move-result v0

    return v0
.end method

.method public mapPoints([F)V
    .locals 6
    .param p1, "pts"    # [F

    .prologue
    const/4 v2, 0x0

    .line 671
    array-length v0, p1

    shr-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 672
    return-void
.end method

.method public mapPoints([FI[FII)V
    .locals 7
    .param p1, "dst"    # [F
    .param p2, "dstIndex"    # I
    .param p3, "src"    # [F
    .param p4, "srcIndex"    # I
    .param p5, "pointCount"    # I

    .prologue
    .line 604
    invoke-static {p3, p4, p1, p2, p5}, Landroid/graphics/Matrix;->checkPointArrays([FI[FII)V

    .line 605
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    const/4 v6, 0x1

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/Matrix;->native_mapPoints(I[FI[FIIZ)V

    .line 607
    return-void
.end method

.method public mapPoints([F[F)V
    .locals 6
    .param p1, "dst"    # [F
    .param p2, "src"    # [F

    .prologue
    const/4 v2, 0x0

    .line 640
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 641
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 643
    :cond_0
    array-length v0, p1

    shr-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 644
    return-void
.end method

.method public mapRadius(F)F
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 721
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_mapRadius(IF)F

    move-result v0

    return v0
.end method

.method public mapRect(Landroid/graphics/RectF;)Z
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 712
    invoke-virtual {p0, p1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 1
    .param p1, "dst"    # Landroid/graphics/RectF;
    .param p2, "src"    # Landroid/graphics/RectF;

    .prologue
    .line 697
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 698
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 700
    :cond_1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_mapRect(ILandroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public mapVectors([F)V
    .locals 6
    .param p1, "vecs"    # [F

    .prologue
    const/4 v2, 0x0

    .line 684
    array-length v0, p1

    shr-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapVectors([FI[FII)V

    .line 685
    return-void
.end method

.method public mapVectors([FI[FII)V
    .locals 7
    .param p1, "dst"    # [F
    .param p2, "dstIndex"    # I
    .param p3, "src"    # [F
    .param p4, "srcIndex"    # I
    .param p5, "vectorCount"    # I

    .prologue
    .line 626
    invoke-static {p3, p4, p1, p2, p5}, Landroid/graphics/Matrix;->checkPointArrays([FI[FII)V

    .line 627
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/Matrix;->native_mapPoints(I[FI[FIIZ)V

    .line 629
    return-void
.end method

.method public mapVectors([F[F)V
    .locals 6
    .param p1, "dst"    # [F
    .param p2, "src"    # [F

    .prologue
    const/4 v2, 0x0

    .line 658
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 659
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 661
    :cond_0
    array-length v0, p1

    shr-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapVectors([FI[FII)V

    .line 662
    return-void
.end method

.method final ni()I
    .locals 1

    .prologue
    .line 804
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    return v0
.end method

.method public postConcat(Landroid/graphics/Matrix;)Z
    .locals 2
    .param p1, "other"    # Landroid/graphics/Matrix;

    .prologue
    .line 489
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->native_postConcat(II)Z

    move-result v0

    return v0
.end method

.method public postRotate(F)Z
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 465
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_postRotate(IF)Z

    move-result v0

    return v0
.end method

.method public postRotate(FFF)Z
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    .line 457
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Matrix;->native_postRotate(IFFF)Z

    move-result v0

    return v0
.end method

.method public postScale(FF)Z
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 449
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_postScale(IFF)Z

    move-result v0

    return v0
.end method

.method public postScale(FFFF)Z
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 441
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->native_postScale(IFFFF)Z

    move-result v0

    return v0
.end method

.method public postSkew(FF)Z
    .locals 1
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .prologue
    .line 481
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_postSkew(IFF)Z

    move-result v0

    return v0
.end method

.method public postSkew(FFFF)Z
    .locals 1
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 473
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->native_postSkew(IFFFF)Z

    move-result v0

    return v0
.end method

.method public postTranslate(FF)Z
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 433
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_postTranslate(IFF)Z

    move-result v0

    return v0
.end method

.method public preConcat(Landroid/graphics/Matrix;)Z
    .locals 2
    .param p1, "other"    # Landroid/graphics/Matrix;

    .prologue
    .line 425
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->native_preConcat(II)Z

    move-result v0

    return v0
.end method

.method public preRotate(F)Z
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 401
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_preRotate(IF)Z

    move-result v0

    return v0
.end method

.method public preRotate(FFF)Z
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    .line 393
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Matrix;->native_preRotate(IFFF)Z

    move-result v0

    return v0
.end method

.method public preScale(FF)Z
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 385
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_preScale(IFF)Z

    move-result v0

    return v0
.end method

.method public preScale(FFFF)Z
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 377
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->native_preScale(IFFFF)Z

    move-result v0

    return v0
.end method

.method public preSkew(FF)Z
    .locals 1
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .prologue
    .line 417
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_preSkew(IFF)Z

    move-result v0

    return v0
.end method

.method public preSkew(FFFF)Z
    .locals 1
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 409
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->native_preSkew(IFFFF)Z

    move-result v0

    return v0
.end method

.method public preTranslate(FF)Z
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 369
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_preTranslate(IFF)Z

    move-result v0

    return v0
.end method

.method public printShortString(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 782
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 783
    .local v0, "values":[F
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 784
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 785
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x1

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 786
    const/4 v1, 0x2

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 787
    const/4 v1, 0x3

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x4

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 788
    const/4 v1, 0x5

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 789
    const/4 v1, 0x6

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x7

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 790
    const/16 v1, 0x8

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const/16 v1, 0x5d

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 792
    return-void
.end method

.method public rectStaysRect()Z
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Matrix;->native_rectStaysRect(I)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Matrix;->native_reset(I)V

    .line 289
    return-void
.end method

.method public set(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "src"    # Landroid/graphics/Matrix;

    .prologue
    .line 261
    if-nez p1, :cond_0

    .line 262
    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->native_set(II)V

    goto :goto_0
.end method

.method public setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .locals 3
    .param p1, "a"    # Landroid/graphics/Matrix;
    .param p2, "b"    # Landroid/graphics/Matrix;

    .prologue
    .line 360
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    iget v2, p2, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Matrix;->native_setConcat(III)Z

    move-result v0

    return v0
.end method

.method public setPolyToPoly([FI[FII)Z
    .locals 6
    .param p1, "src"    # [F
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [F
    .param p4, "dstIndex"    # I
    .param p5, "pointCount"    # I

    .prologue
    .line 574
    const/4 v0, 0x4

    if-le p5, v0, :cond_0

    .line 575
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 577
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Landroid/graphics/Matrix;->checkPointArrays([FI[FII)V

    .line 578
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->native_setPolyToPoly(I[FI[FII)Z

    move-result v0

    return v0
.end method

.method public setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .locals 2
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "stf"    # Landroid/graphics/Matrix$ScaleToFit;

    .prologue
    .line 540
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 541
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 543
    :cond_1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    iget v1, p3, Landroid/graphics/Matrix$ScaleToFit;->nativeInt:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Matrix;->native_setRectToRect(ILandroid/graphics/RectF;Landroid/graphics/RectF;I)Z

    move-result v0

    return v0
.end method

.method public setRotate(F)V
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 323
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_setRotate(IF)V

    .line 324
    return-void
.end method

.method public setRotate(FFF)V
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    .line 316
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Matrix;->native_setRotate(IFFF)V

    .line 317
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 307
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_setScale(IFF)V

    .line 308
    return-void
.end method

.method public setScale(FFFF)V
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 302
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->native_setScale(IFFFF)V

    .line 303
    return-void
.end method

.method public setSinCos(FF)V
    .locals 1
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F

    .prologue
    .line 337
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_setSinCos(IFF)V

    .line 338
    return-void
.end method

.method public setSinCos(FFFF)V
    .locals 1
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 332
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->native_setSinCos(IFFFF)V

    .line 333
    return-void
.end method

.method public setSkew(FF)V
    .locals 1
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .prologue
    .line 351
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_setSkew(IFF)V

    .line 352
    return-void
.end method

.method public setSkew(FFFF)V
    .locals 1
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 346
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->native_setSkew(IFFFF)V

    .line 347
    return-void
.end method

.method public setTranslate(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 293
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_setTranslate(IFF)V

    .line 294
    return-void
.end method

.method public setValues([F)V
    .locals 2
    .param p1, "values"    # [F

    .prologue
    .line 740
    array-length v0, p1

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 741
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 743
    :cond_0
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_setValues(I[F)V

    .line 744
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 758
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    .line 759
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 766
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 767
    .local v0, "values":[F
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 768
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 769
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    const/4 v1, 0x2

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    const/4 v1, 0x3

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    const/4 v1, 0x5

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    const/4 v1, 0x6

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    const/16 v1, 0x8

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 775
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 749
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Matrix{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    .line 751
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 752
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
