.class public Landroid/graphics/Path;
.super Ljava/lang/Object;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Path$Direction;,
        Landroid/graphics/Path$FillType;,
        Landroid/graphics/Path$Op;
    }
.end annotation


# static fields
.field static final sFillTypeArray:[Landroid/graphics/Path$FillType;


# instance fields
.field public isSimplePath:Z

.field private mDetectSimplePaths:Z

.field private mLastDirection:Landroid/graphics/Path$Direction;

.field public final mNativePath:I

.field public rects:Landroid/graphics/Region;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 211
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Path$FillType;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 49
    invoke-static {}, Landroid/graphics/Path;->init1()I

    move-result v0

    iput v0, p0, Landroid/graphics/Path;->mNativePath:I

    .line 50
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/Path;->mDetectSimplePaths:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 3
    .param p1, "src"    # Landroid/graphics/Path;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "valNative":I
    if-eqz p1, :cond_0

    .line 61
    iget v0, p1, Landroid/graphics/Path;->mNativePath:I

    .line 62
    iget-boolean v1, p1, Landroid/graphics/Path;->isSimplePath:Z

    iput-boolean v1, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 63
    iget-object v1, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Landroid/graphics/Region;

    iget-object v2, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-direct {v1, v2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v1, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 67
    :cond_0
    invoke-static {v0}, Landroid/graphics/Path;->init2(I)I

    move-result v1

    iput v1, p0, Landroid/graphics/Path;->mNativePath:I

    .line 68
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v1

    iput-boolean v1, p0, Landroid/graphics/Path;->mDetectSimplePaths:Z

    .line 69
    return-void
.end method

.method private detectSimplePath(FFFFLandroid/graphics/Path$Direction;)V
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "dir"    # Landroid/graphics/Path$Direction;

    .prologue
    .line 478
    iget-boolean v0, p0, Landroid/graphics/Path;->mDetectSimplePaths:Z

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    if-nez v0, :cond_0

    .line 480
    iput-object p5, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 482
    :cond_0
    iget-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    if-eq v0, p5, :cond_2

    .line 483
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 489
    :cond_1
    :goto_0
    return-void

    .line 485
    :cond_2
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 486
    :cond_3
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    float-to-int v1, p1

    float-to-int v2, p2

    float-to-int v3, p3

    float-to-int v4, p4

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_0
.end method

.method private static native finalizer(I)V
.end method

.method private static native init1()I
.end method

.method private static native init2(I)I
.end method

.method private static native native_addArc(ILandroid/graphics/RectF;FF)V
.end method

.method private static native native_addCircle(IFFFI)V
.end method

.method private static native native_addOval(ILandroid/graphics/RectF;I)V
.end method

.method private static native native_addPath(II)V
.end method

.method private static native native_addPath(IIFF)V
.end method

.method private static native native_addPath(III)V
.end method

.method private static native native_addRect(IFFFFI)V
.end method

.method private static native native_addRect(ILandroid/graphics/RectF;I)V
.end method

.method private static native native_addRoundRect(ILandroid/graphics/RectF;FFI)V
.end method

.method private static native native_addRoundRect(ILandroid/graphics/RectF;[FI)V
.end method

.method private static native native_arcTo(ILandroid/graphics/RectF;FFZ)V
.end method

.method private static native native_close(I)V
.end method

.method private static native native_computeBounds(ILandroid/graphics/RectF;)V
.end method

.method private static native native_cubicTo(IFFFFFF)V
.end method

.method private static native native_getFillType(I)I
.end method

.method private static native native_incReserve(II)V
.end method

.method private static native native_isEmpty(I)Z
.end method

.method private static native native_isRect(ILandroid/graphics/RectF;)Z
.end method

.method private static native native_lineTo(IFF)V
.end method

.method private static native native_moveTo(IFF)V
.end method

.method private static native native_offset(IFF)V
.end method

.method private static native native_offset(IFFI)V
.end method

.method private static native native_op(IIII)Z
.end method

.method private static native native_quadTo(IFFFF)V
.end method

.method private static native native_rCubicTo(IFFFFFF)V
.end method

.method private static native native_rLineTo(IFF)V
.end method

.method private static native native_rMoveTo(IFF)V
.end method

.method private static native native_rQuadTo(IFFFF)V
.end method

.method private static native native_reset(I)V
.end method

.method private static native native_rewind(I)V
.end method

.method private static native native_set(II)V
.end method

.method private static native native_setFillType(II)V
.end method

.method private static native native_setLastPoint(IFF)V
.end method

.method private static native native_transform(II)V
.end method

.method private static native native_transform(III)V
.end method


# virtual methods
.method public addArc(Landroid/graphics/RectF;FF)V
    .locals 2
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F

    .prologue
    .line 554
    if-nez p1, :cond_0

    .line 555
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need oval parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 558
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Path;->native_addArc(ILandroid/graphics/RectF;FF)V

    .line 559
    return-void
.end method

.method public addCircle(FFFLandroid/graphics/Path$Direction;)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F
    .param p4, "dir"    # Landroid/graphics/Path$Direction;

    .prologue
    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 543
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p4, Landroid/graphics/Path$Direction;->nativeInt:I

    invoke-static {v0, p1, p2, p3, v1}, Landroid/graphics/Path;->native_addCircle(IFFFI)V

    .line 544
    return-void
.end method

.method public addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .locals 2
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "dir"    # Landroid/graphics/Path$Direction;

    .prologue
    .line 526
    if-nez p1, :cond_0

    .line 527
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need oval parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 530
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p2, Landroid/graphics/Path$Direction;->nativeInt:I

    invoke-static {v0, p1, v1}, Landroid/graphics/Path;->native_addOval(ILandroid/graphics/RectF;I)V

    .line 531
    return-void
.end method

.method public addPath(Landroid/graphics/Path;)V
    .locals 2
    .param p1, "src"    # Landroid/graphics/Path;

    .prologue
    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 615
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p1, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, v1}, Landroid/graphics/Path;->native_addPath(II)V

    .line 616
    return-void
.end method

.method public addPath(Landroid/graphics/Path;FF)V
    .locals 2
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    .line 604
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 605
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p1, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, v1, p2, p3}, Landroid/graphics/Path;->native_addPath(IIFF)V

    .line 606
    return-void
.end method

.method public addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 624
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 625
    :cond_0
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p1, Landroid/graphics/Path;->mNativePath:I

    iget v2, p2, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Path;->native_addPath(III)V

    .line 626
    return-void
.end method

.method public addRect(FFFFLandroid/graphics/Path$Direction;)V
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "dir"    # Landroid/graphics/Path$Direction;

    .prologue
    .line 515
    invoke-direct/range {p0 .. p5}, Landroid/graphics/Path;->detectSimplePath(FFFFLandroid/graphics/Path$Direction;)V

    .line 516
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v5, p5, Landroid/graphics/Path$Direction;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->native_addRect(IFFFFI)V

    .line 517
    return-void
.end method

.method public addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "dir"    # Landroid/graphics/Path$Direction;

    .prologue
    .line 498
    if-nez p1, :cond_0

    .line 499
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need rect parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/Path;->detectSimplePath(FFFFLandroid/graphics/Path$Direction;)V

    .line 502
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p2, Landroid/graphics/Path$Direction;->nativeInt:I

    invoke-static {v0, p1, v1}, Landroid/graphics/Path;->native_addRect(ILandroid/graphics/RectF;I)V

    .line 503
    return-void
.end method

.method public addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "dir"    # Landroid/graphics/Path$Direction;

    .prologue
    .line 570
    if-nez p1, :cond_0

    .line 571
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need rect parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 574
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p4, Landroid/graphics/Path$Direction;->nativeInt:I

    invoke-static {v0, p1, p2, p3, v1}, Landroid/graphics/Path;->native_addRoundRect(ILandroid/graphics/RectF;FFI)V

    .line 575
    return-void
.end method

.method public addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "radii"    # [F
    .param p3, "dir"    # Landroid/graphics/Path$Direction;

    .prologue
    .line 587
    if-nez p1, :cond_0

    .line 588
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need rect parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_0
    array-length v0, p2

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 591
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "radii[] needs 8 values"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 594
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p3, Landroid/graphics/Path$Direction;->nativeInt:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Path;->native_addRoundRect(ILandroid/graphics/RectF;[FI)V

    .line 595
    return-void
.end method

.method public arcTo(Landroid/graphics/RectF;FF)V
    .locals 2
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F

    .prologue
    const/4 v1, 0x0

    .line 448
    iput-boolean v1, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 449
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2, p3, v1}, Landroid/graphics/Path;->native_arcTo(ILandroid/graphics/RectF;FFZ)V

    .line 450
    return-void
.end method

.method public arcTo(Landroid/graphics/RectF;FFZ)V
    .locals 1
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "forceMoveTo"    # Z

    .prologue
    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 433
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->native_arcTo(ILandroid/graphics/RectF;FFZ)V

    .line 434
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 458
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0}, Landroid/graphics/Path;->native_close(I)V

    .line 459
    return-void
.end method

.method public computeBounds(Landroid/graphics/RectF;Z)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "exact"    # Z

    .prologue
    .line 288
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1}, Landroid/graphics/Path;->native_computeBounds(ILandroid/graphics/RectF;)V

    .line 289
    return-void
.end method

.method public cubicTo(FFFFFF)V
    .locals 7
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .prologue
    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 403
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->native_cubicTo(IFFFFFF)V

    .line 404
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 696
    :try_start_0
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0}, Landroid/graphics/Path;->finalizer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 700
    return-void

    .line 698
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 2

    .prologue
    .line 225
    sget-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v1}, Landroid/graphics/Path;->native_getFillType(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public incReserve(I)V
    .locals 1
    .param p1, "extraPtCount"    # I

    .prologue
    .line 299
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1}, Landroid/graphics/Path;->native_incReserve(II)V

    .line 300
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0}, Landroid/graphics/Path;->native_isEmpty(I)Z

    move-result v0

    return v0
.end method

.method public isInverseFillType()Z
    .locals 2

    .prologue
    .line 243
    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v1}, Landroid/graphics/Path;->native_getFillType(I)I

    move-result v0

    .line 244
    .local v0, "ft":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRect(Landroid/graphics/RectF;)Z
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 275
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1}, Landroid/graphics/Path;->native_isRect(ILandroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public lineTo(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 336
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_lineTo(IFF)V

    .line 337
    return-void
.end method

.method public moveTo(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 309
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_moveTo(IFF)V

    .line 310
    return-void
.end method

.method final ni()I
    .locals 1

    .prologue
    .line 703
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    return v0
.end method

.method public offset(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 652
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 653
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_offset(IFF)V

    .line 654
    return-void
.end method

.method public offset(FFLandroid/graphics/Path;)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "dst"    # Landroid/graphics/Path;

    .prologue
    .line 637
    const/4 v0, 0x0

    .line 638
    .local v0, "dstNative":I
    if-eqz p3, :cond_0

    .line 639
    iget v0, p3, Landroid/graphics/Path;->mNativePath:I

    .line 640
    const/4 v1, 0x0

    iput-boolean v1, p3, Landroid/graphics/Path;->isSimplePath:Z

    .line 642
    :cond_0
    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v1, p1, p2, v0}, Landroid/graphics/Path;->native_offset(IFFI)V

    .line 643
    return-void
.end method

.method public op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Landroid/graphics/Path$Op;

    .prologue
    .line 153
    invoke-virtual {p0, p0, p1, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    move-result v0

    return v0
.end method

.method public op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
    .locals 5
    .param p1, "path1"    # Landroid/graphics/Path;
    .param p2, "path2"    # Landroid/graphics/Path;
    .param p3, "op"    # Landroid/graphics/Path$Op;

    .prologue
    const/4 v0, 0x0

    .line 171
    iget v1, p1, Landroid/graphics/Path;->mNativePath:I

    iget v2, p2, Landroid/graphics/Path;->mNativePath:I

    invoke-virtual {p3}, Landroid/graphics/Path$Op;->ordinal()I

    move-result v3

    iget v4, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Path;->native_op(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 174
    const/4 v0, 0x1

    .line 176
    :cond_0
    return v0
.end method

.method public quadTo(FFFF)V
    .locals 1
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 366
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->native_quadTo(IFFFF)V

    .line 367
    return-void
.end method

.method public rCubicTo(FFFFFF)V
    .locals 7
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .prologue
    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 414
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->native_rCubicTo(IFFFFFF)V

    .line 415
    return-void
.end method

.method public rLineTo(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 351
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_rLineTo(IFF)V

    .line 352
    return-void
.end method

.method public rMoveTo(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 323
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_rMoveTo(IFF)V

    .line 324
    return-void
.end method

.method public rQuadTo(FFFF)V
    .locals 1
    .param p1, "dx1"    # F
    .param p2, "dy1"    # F
    .param p3, "dx2"    # F
    .param p4, "dy2"    # F

    .prologue
    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 385
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->native_rQuadTo(IFFFF)V

    .line 386
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 77
    iget-boolean v1, p0, Landroid/graphics/Path;->mDetectSimplePaths:Z

    if-eqz v1, :cond_0

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 79
    iget-object v1, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v0

    .line 84
    .local v0, "fillType":Landroid/graphics/Path$FillType;
    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v1}, Landroid/graphics/Path;->native_reset(I)V

    .line 85
    invoke-virtual {p0, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 86
    return-void
.end method

.method public rewind()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 94
    iget-boolean v0, p0, Landroid/graphics/Path;->mDetectSimplePaths:Z

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 96
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 98
    :cond_0
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0}, Landroid/graphics/Path;->native_rewind(I)V

    .line 99
    return-void
.end method

.method public set(Landroid/graphics/Path;)V
    .locals 2
    .param p1, "src"    # Landroid/graphics/Path;

    .prologue
    .line 104
    if-eq p0, p1, :cond_0

    .line 105
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 106
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p1, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, v1}, Landroid/graphics/Path;->native_set(II)V

    .line 108
    :cond_0
    return-void
.end method

.method public setFillType(Landroid/graphics/Path$FillType;)V
    .locals 2
    .param p1, "ft"    # Landroid/graphics/Path$FillType;

    .prologue
    .line 234
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p1, Landroid/graphics/Path$FillType;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/Path;->native_setFillType(II)V

    .line 235
    return-void
.end method

.method public setLastPoint(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 663
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 664
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_setLastPoint(IFF)V

    .line 665
    return-void
.end method

.method public toggleInverseFillType()V
    .locals 2

    .prologue
    .line 251
    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v1}, Landroid/graphics/Path;->native_getFillType(I)I

    move-result v0

    .line 252
    .local v0, "ft":I
    xor-int/lit8 v0, v0, 0x2

    .line 253
    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v1, v0}, Landroid/graphics/Path;->native_setFillType(II)V

    .line 254
    return-void
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 690
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 691
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Path;->native_transform(II)V

    .line 692
    return-void
.end method

.method public transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "dst"    # Landroid/graphics/Path;

    .prologue
    .line 676
    const/4 v0, 0x0

    .line 677
    .local v0, "dstNative":I
    if-eqz p2, :cond_0

    .line 678
    const/4 v1, 0x0

    iput-boolean v1, p2, Landroid/graphics/Path;->isSimplePath:Z

    .line 679
    iget v0, p2, Landroid/graphics/Path;->mNativePath:I

    .line 681
    :cond_0
    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    iget v2, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v1, v2, v0}, Landroid/graphics/Path;->native_transform(III)V

    .line 682
    return-void
.end method
