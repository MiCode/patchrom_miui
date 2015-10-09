.class public final Landroid/gesture/GestureUtils;
.super Ljava/lang/Object;
.source "GestureUtils.java"


# static fields
.field private static final NONUNIFORM_SCALE:F

.field private static final SCALING_THRESHOLD:F = 0.26f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/gesture/GestureUtils;->NONUNIFORM_SCALE:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static closeStream(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "stream"    # Ljava/io/Closeable;

    .prologue
    .line 53
    if-eqz p0, :cond_0

    .line 55
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Gestures"

    const-string v2, "Could not close stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static computeCentroid([F)[F
    .locals 9
    .param p0, "points"    # [F

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 331
    const/4 v1, 0x0

    .line 332
    .local v1, "centerX":F
    const/4 v2, 0x0

    .line 333
    .local v2, "centerY":F
    array-length v3, p0

    .line 334
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 335
    aget v5, p0, v4

    add-float/2addr v1, v5

    .line 336
    add-int/lit8 v4, v4, 0x1

    .line 337
    aget v5, p0, v4

    add-float/2addr v2, v5

    .line 334
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 339
    :cond_0
    const/4 v5, 0x2

    new-array v0, v5, [F

    .line 340
    .local v0, "center":[F
    const/4 v5, 0x0

    mul-float v6, v8, v1

    int-to-float v7, v3

    div-float/2addr v6, v7

    aput v6, v0, v5

    .line 341
    const/4 v5, 0x1

    mul-float v6, v8, v2

    int-to-float v7, v3

    div-float/2addr v6, v7

    aput v6, v0, v5

    .line 343
    return-object v0
.end method

.method private static computeCoVariance([F)[[F
    .locals 10
    .param p0, "points"    # [F

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 353
    filled-new-array {v5, v5}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 354
    .local v0, "array":[[F
    aget-object v5, v0, v8

    aput v7, v5, v8

    .line 355
    aget-object v5, v0, v8

    aput v7, v5, v9

    .line 356
    aget-object v5, v0, v9

    aput v7, v5, v8

    .line 357
    aget-object v5, v0, v9

    aput v7, v5, v9

    .line 358
    array-length v1, p0

    .line 359
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 360
    aget v3, p0, v2

    .line 361
    .local v3, "x":F
    add-int/lit8 v2, v2, 0x1

    .line 362
    aget v4, p0, v2

    .line 363
    .local v4, "y":F
    aget-object v5, v0, v8

    aget v6, v5, v8

    mul-float v7, v3, v3

    add-float/2addr v6, v7

    aput v6, v5, v8

    .line 364
    aget-object v5, v0, v8

    aget v6, v5, v9

    mul-float v7, v3, v4

    add-float/2addr v6, v7

    aput v6, v5, v9

    .line 365
    aget-object v5, v0, v9

    aget-object v6, v0, v8

    aget v6, v6, v9

    aput v6, v5, v8

    .line 366
    aget-object v5, v0, v9

    aget v6, v5, v9

    mul-float v7, v4, v4

    add-float/2addr v6, v7

    aput v6, v5, v9

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_0
    aget-object v5, v0, v8

    aget v6, v5, v8

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v5, v8

    .line 369
    aget-object v5, v0, v8

    aget v6, v5, v9

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v5, v9

    .line 370
    aget-object v5, v0, v9

    aget v6, v5, v8

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v5, v8

    .line 371
    aget-object v5, v0, v9

    aget v6, v5, v9

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v5, v9

    .line 373
    return-object v0
.end method

.method private static computeOrientation([[F)[F
    .locals 12
    .param p0, "covarianceMatrix"    # [[F

    .prologue
    .line 538
    const/4 v8, 0x2

    new-array v6, v8, [F

    .line 539
    .local v6, "targetVector":[F
    const/4 v8, 0x0

    aget-object v8, p0, v8

    const/4 v9, 0x1

    aget v8, v8, v9

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    aget-object v8, p0, v8

    const/4 v9, 0x0

    aget v8, v8, v9

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_1

    .line 540
    :cond_0
    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v6, v8

    .line 541
    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v6, v8

    .line 544
    :cond_1
    const/4 v8, 0x0

    aget-object v8, p0, v8

    const/4 v9, 0x0

    aget v8, v8, v9

    neg-float v8, v8

    const/4 v9, 0x1

    aget-object v9, p0, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float v0, v8, v9

    .line 545
    .local v0, "a":F
    const/4 v8, 0x0

    aget-object v8, p0, v8

    const/4 v9, 0x0

    aget v8, v8, v9

    const/4 v9, 0x1

    aget-object v9, p0, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    aget-object v9, p0, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    const/4 v10, 0x1

    aget-object v10, p0, v10

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    sub-float v1, v8, v9

    .line 547
    .local v1, "b":F
    const/high16 v8, 0x40000000    # 2.0f

    div-float v7, v0, v8

    .line 548
    .local v7, "value":F
    float-to-double v8, v7

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v10, v1

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 549
    .local v5, "rightside":F
    neg-float v8, v7

    add-float v3, v8, v5

    .line 550
    .local v3, "lambda1":F
    neg-float v8, v7

    sub-float v4, v8, v5

    .line 551
    .local v4, "lambda2":F
    cmpl-float v8, v3, v4

    if-nez v8, :cond_2

    .line 552
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v6, v8

    .line 553
    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v6, v8

    .line 559
    :goto_0
    return-object v6

    .line 555
    :cond_2
    cmpl-float v8, v3, v4

    if-lez v8, :cond_3

    move v2, v3

    .line 556
    .local v2, "lambda":F
    :goto_1
    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v6, v8

    .line 557
    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-object v9, p0, v9

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float v9, v2, v9

    const/4 v10, 0x0

    aget-object v10, p0, v10

    const/4 v11, 0x1

    aget v10, v10, v11

    div-float/2addr v9, v10

    aput v9, v6, v8

    goto :goto_0

    .end local v2    # "lambda":F
    :cond_3
    move v2, v4

    .line 555
    goto :goto_1
.end method

.method public static computeOrientedBoundingBox(Ljava/util/ArrayList;)Landroid/gesture/OrientedBoundingBox;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;)",
            "Landroid/gesture/OrientedBoundingBox;"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, "originalPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GesturePoint;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 472
    .local v0, "count":I
    mul-int/lit8 v6, v0, 0x2

    new-array v5, v6, [F

    .line 473
    .local v5, "points":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 474
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/gesture/GesturePoint;

    .line 475
    .local v4, "point":Landroid/gesture/GesturePoint;
    mul-int/lit8 v2, v1, 0x2

    .line 476
    .local v2, "index":I
    iget v6, v4, Landroid/gesture/GesturePoint;->x:F

    aput v6, v5, v2

    .line 477
    add-int/lit8 v6, v2, 0x1

    iget v7, v4, Landroid/gesture/GesturePoint;->y:F

    aput v7, v5, v6

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    .end local v2    # "index":I
    .end local v4    # "point":Landroid/gesture/GesturePoint;
    :cond_0
    invoke-static {v5}, Landroid/gesture/GestureUtils;->computeCentroid([F)[F

    move-result-object v3

    .line 480
    .local v3, "meanVector":[F
    invoke-static {v5, v3}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F[F)Landroid/gesture/OrientedBoundingBox;

    move-result-object v6

    return-object v6
.end method

.method public static computeOrientedBoundingBox([F)Landroid/gesture/OrientedBoundingBox;
    .locals 5
    .param p0, "originalPoints"    # [F

    .prologue
    .line 490
    array-length v3, p0

    .line 491
    .local v3, "size":I
    new-array v2, v3, [F

    .line 492
    .local v2, "points":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 493
    aget v4, p0, v0

    aput v4, v2, v0

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    :cond_0
    invoke-static {v2}, Landroid/gesture/GestureUtils;->computeCentroid([F)[F

    move-result-object v1

    .line 496
    .local v1, "meanVector":[F
    invoke-static {v2, v1}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F[F)Landroid/gesture/OrientedBoundingBox;

    move-result-object v4

    return-object v4
.end method

.method private static computeOrientedBoundingBox([F[F)Landroid/gesture/OrientedBoundingBox;
    .locals 15
    .param p0, "points"    # [F
    .param p1, "centroid"    # [F

    .prologue
    .line 500
    const/4 v0, 0x0

    aget v0, p1, v0

    neg-float v0, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    neg-float v1, v1

    invoke-static {p0, v0, v1}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    .line 502
    invoke-static {p0}, Landroid/gesture/GestureUtils;->computeCoVariance([F)[[F

    move-result-object v7

    .line 503
    .local v7, "array":[[F
    invoke-static {v7}, Landroid/gesture/GestureUtils;->computeOrientation([[F)[F

    move-result-object v14

    .line 506
    .local v14, "targetVector":[F
    const/4 v0, 0x0

    aget v0, v14, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    const/4 v0, 0x1

    aget v0, v14, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 507
    const v6, -0x4036f025

    .line 513
    .local v6, "angle":F
    :goto_0
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    .line 514
    .local v12, "minx":F
    const v13, 0x7f7fffff    # Float.MAX_VALUE

    .line 515
    .local v13, "miny":F
    const/4 v10, 0x1

    .line 516
    .local v10, "maxx":F
    const/4 v11, 0x1

    .line 517
    .local v11, "maxy":F
    array-length v8, p0

    .line 518
    .local v8, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v8, :cond_5

    .line 519
    aget v0, p0, v9

    cmpg-float v0, v0, v12

    if-gez v0, :cond_0

    .line 520
    aget v12, p0, v9

    .line 522
    :cond_0
    aget v0, p0, v9

    cmpl-float v0, v0, v10

    if-lez v0, :cond_1

    .line 523
    aget v10, p0, v9

    .line 525
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 526
    aget v0, p0, v9

    cmpg-float v0, v0, v13

    if-gez v0, :cond_2

    .line 527
    aget v13, p0, v9

    .line 529
    :cond_2
    aget v0, p0, v9

    cmpl-float v0, v0, v11

    if-lez v0, :cond_3

    .line 530
    aget v11, p0, v9

    .line 518
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 509
    .end local v6    # "angle":F
    .end local v8    # "count":I
    .end local v9    # "i":I
    .end local v10    # "maxx":F
    .end local v11    # "maxy":F
    .end local v12    # "minx":F
    .end local v13    # "miny":F
    :cond_4
    const/4 v0, 0x1

    aget v0, v14, v0

    float-to-double v0, v0

    const/4 v2, 0x0

    aget v2, v14, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v6, v0

    .line 510
    .restart local v6    # "angle":F
    neg-float v0, v6

    invoke-static {p0, v0}, Landroid/gesture/GestureUtils;->rotate([FF)[F

    goto :goto_0

    .line 534
    .restart local v8    # "count":I
    .restart local v9    # "i":I
    .restart local v10    # "maxx":F
    .restart local v11    # "maxy":F
    .restart local v12    # "minx":F
    .restart local v13    # "miny":F
    :cond_5
    new-instance v0, Landroid/gesture/OrientedBoundingBox;

    const/high16 v1, 0x43340000    # 180.0f

    mul-float/2addr v1, v6

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    double-to-float v1, v1

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    sub-float v4, v10, v12

    sub-float v5, v11, v13

    invoke-direct/range {v0 .. v5}, Landroid/gesture/OrientedBoundingBox;-><init>(FFFFF)V

    return-object v0
.end method

.method static computeStraightness([F)F
    .locals 5
    .param p0, "points"    # [F

    .prologue
    .line 388
    invoke-static {p0}, Landroid/gesture/GestureUtils;->computeTotalLength([F)F

    move-result v2

    .line 389
    .local v2, "totalLen":F
    const/4 v3, 0x2

    aget v3, p0, v3

    const/4 v4, 0x0

    aget v4, p0, v4

    sub-float v0, v3, v4

    .line 390
    .local v0, "dx":F
    const/4 v3, 0x3

    aget v3, p0, v3

    const/4 v4, 0x1

    aget v4, p0, v4

    sub-float v1, v3, v4

    .line 391
    .local v1, "dy":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v3, v2

    return v3
.end method

.method static computeStraightness([FF)F
    .locals 4
    .param p0, "points"    # [F
    .param p1, "totalLen"    # F

    .prologue
    .line 395
    const/4 v2, 0x2

    aget v2, p0, v2

    const/4 v3, 0x0

    aget v3, p0, v3

    sub-float v0, v2, v3

    .line 396
    .local v0, "dx":F
    const/4 v2, 0x3

    aget v2, p0, v2

    const/4 v3, 0x1

    aget v3, p0, v3

    sub-float v1, v2, v3

    .line 397
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v2, p1

    return v2
.end method

.method static computeTotalLength([F)F
    .locals 9
    .param p0, "points"    # [F

    .prologue
    .line 377
    const/4 v4, 0x0

    .line 378
    .local v4, "sum":F
    array-length v5, p0

    add-int/lit8 v0, v5, -0x4

    .line 379
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 380
    add-int/lit8 v5, v3, 0x2

    aget v5, p0, v5

    aget v6, p0, v3

    sub-float v1, v5, v6

    .line 381
    .local v1, "dx":F
    add-int/lit8 v5, v3, 0x3

    aget v5, p0, v5

    add-int/lit8 v6, v3, 0x1

    aget v6, p0, v6

    sub-float v2, v5, v6

    .line 382
    .local v2, "dy":F
    float-to-double v5, v4

    mul-float v7, v1, v1

    mul-float v8, v2, v2

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-float v4, v5

    .line 379
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 384
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :cond_0
    return v4
.end method

.method static cosineDistance([F[F)F
    .locals 5
    .param p0, "vector1"    # [F
    .param p1, "vector2"    # [F

    .prologue
    .line 425
    const/4 v2, 0x0

    .line 426
    .local v2, "sum":F
    array-length v1, p0

    .line 427
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 428
    aget v3, p0, v0

    aget v4, p1, v0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_0
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method static minimumCosineDistance([F[FI)F
    .locals 19
    .param p0, "vector1"    # [F
    .param p1, "vector2"    # [F
    .param p2, "numOrientations"    # I

    .prologue
    .line 442
    move-object/from16 v0, p0

    array-length v9, v0

    .line 443
    .local v9, "len":I
    const/4 v2, 0x0

    .line 444
    .local v2, "a":F
    const/4 v5, 0x0

    .line 445
    .local v5, "b":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 446
    aget v13, p0, v8

    aget v14, p1, v8

    mul-float/2addr v13, v14

    add-int/lit8 v14, v8, 0x1

    aget v14, p0, v14

    add-int/lit8 v15, v8, 0x1

    aget v15, p1, v15

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    add-float/2addr v2, v13

    .line 447
    aget v13, p0, v8

    add-int/lit8 v14, v8, 0x1

    aget v14, p1, v14

    mul-float/2addr v13, v14

    add-int/lit8 v14, v8, 0x1

    aget v14, p0, v14

    aget v15, p1, v8

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    add-float/2addr v5, v13

    .line 445
    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    .line 449
    :cond_0
    const/4 v13, 0x0

    cmpl-float v13, v2, v13

    if-eqz v13, :cond_2

    .line 450
    div-float v12, v5, v2

    .line 451
    .local v12, "tan":F
    float-to-double v13, v12

    invoke-static {v13, v14}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    .line 452
    .local v3, "angle":D
    const/4 v13, 0x2

    move/from16 v0, p2

    if-le v0, v13, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x400921fb54442d18L    # Math.PI

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    cmpl-double v13, v13, v15

    if-ltz v13, :cond_1

    .line 453
    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->acos(D)D

    move-result-wide v13

    double-to-float v13, v13

    .line 460
    .end local v3    # "angle":D
    .end local v12    # "tan":F
    :goto_1
    return v13

    .line 455
    .restart local v3    # "angle":D
    .restart local v12    # "tan":F
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 456
    .local v6, "cosine":D
    float-to-double v13, v12

    mul-double v10, v6, v13

    .line 457
    .local v10, "sine":D
    float-to-double v13, v2

    mul-double/2addr v13, v6

    float-to-double v15, v5

    mul-double/2addr v15, v10

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->acos(D)D

    move-result-wide v13

    double-to-float v13, v13

    goto :goto_1

    .line 460
    .end local v3    # "angle":D
    .end local v6    # "cosine":D
    .end local v10    # "sine":D
    .end local v12    # "tan":F
    :cond_2
    const v13, 0x3fc90fdb

    goto :goto_1
.end method

.method private static plot(FF[FI)V
    .locals 25
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "sample"    # [F
    .param p3, "sampleSize"    # I

    .prologue
    .line 210
    const/16 v21, 0x0

    cmpg-float v21, p0, v21

    if-gez v21, :cond_0

    const/16 p0, 0x0

    .line 211
    :cond_0
    const/16 v21, 0x0

    cmpg-float v21, p1, v21

    if-gez v21, :cond_1

    const/16 p1, 0x0

    .line 212
    :cond_1
    move/from16 v0, p0

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->floor(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-int v12, v0

    .line 213
    .local v12, "xFloor":I
    move/from16 v0, p0

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-int v9, v0

    .line 214
    .local v9, "xCeiling":I
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->floor(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v18, v0

    .line 215
    .local v18, "yFloor":I
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-int v15, v0

    .line 218
    .local v15, "yCeiling":I
    int-to-float v0, v12

    move/from16 v21, v0

    cmpl-float v21, p0, v21

    if-nez v21, :cond_3

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, p1, v21

    if-nez v21, :cond_3

    .line 219
    mul-int v21, v15, p3

    add-int v4, v21, v9

    .line 220
    .local v4, "index":I
    aget v21, p2, v4

    const/high16 v22, 0x3f800000    # 1.0f

    cmpg-float v21, v21, v22

    if-gez v21, :cond_2

    .line 221
    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, p2, v4

    .line 258
    :cond_2
    :goto_0
    return-void

    .line 224
    .end local v4    # "index":I
    :cond_3
    int-to-float v0, v12

    move/from16 v21, v0

    sub-float v21, v21, p0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    .line 225
    .local v13, "xFloorSq":D
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v21, p1

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    .line 226
    .local v19, "yFloorSq":D
    int-to-float v0, v9

    move/from16 v21, v0

    sub-float v21, v21, p0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .line 227
    .local v10, "xCeilingSq":D
    int-to-float v0, v15

    move/from16 v21, v0

    sub-float v21, v21, p1

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    .line 228
    .local v16, "yCeilingSq":D
    add-double v21, v13, v19

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v6, v0

    .line 229
    .local v6, "topLeft":F
    add-double v21, v10, v19

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v7, v0

    .line 230
    .local v7, "topRight":F
    add-double v21, v13, v16

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v2, v0

    .line 231
    .local v2, "btmLeft":F
    add-double v21, v10, v16

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v3, v0

    .line 232
    .local v3, "btmRight":F
    add-float v21, v6, v7

    add-float v21, v21, v2

    add-float v5, v21, v3

    .line 234
    .local v5, "sum":F
    div-float v8, v6, v5

    .line 235
    .local v8, "value":F
    mul-int v21, v18, p3

    add-int v4, v21, v12

    .line 236
    .restart local v4    # "index":I
    aget v21, p2, v4

    cmpl-float v21, v8, v21

    if-lez v21, :cond_4

    .line 237
    aput v8, p2, v4

    .line 240
    :cond_4
    div-float v8, v7, v5

    .line 241
    mul-int v21, v18, p3

    add-int v4, v21, v9

    .line 242
    aget v21, p2, v4

    cmpl-float v21, v8, v21

    if-lez v21, :cond_5

    .line 243
    aput v8, p2, v4

    .line 246
    :cond_5
    div-float v8, v2, v5

    .line 247
    mul-int v21, v15, p3

    add-int v4, v21, v12

    .line 248
    aget v21, p2, v4

    cmpl-float v21, v8, v21

    if-lez v21, :cond_6

    .line 249
    aput v8, p2, v4

    .line 252
    :cond_6
    div-float v8, v3, v5

    .line 253
    mul-int v21, v15, p3

    add-int v4, v21, v9

    .line 254
    aget v21, p2, v4

    cmpl-float v21, v8, v21

    if-lez v21, :cond_2

    .line 255
    aput v8, p2, v4

    goto/16 :goto_0
.end method

.method static rotate([FF)[F
    .locals 8
    .param p0, "points"    # [F
    .param p1, "angle"    # F

    .prologue
    .line 564
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 565
    .local v0, "cos":F
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v2, v6

    .line 566
    .local v2, "sin":F
    array-length v3, p0

    .line 567
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 568
    aget v6, p0, v1

    mul-float/2addr v6, v0

    add-int/lit8 v7, v1, 0x1

    aget v7, p0, v7

    mul-float/2addr v7, v2

    sub-float v4, v6, v7

    .line 569
    .local v4, "x":F
    aget v6, p0, v1

    mul-float/2addr v6, v2

    add-int/lit8 v7, v1, 0x1

    aget v7, p0, v7

    mul-float/2addr v7, v0

    add-float v5, v6, v7

    .line 570
    .local v5, "y":F
    aput v4, p0, v1

    .line 571
    add-int/lit8 v6, v1, 0x1

    aput v5, p0, v6

    .line 567
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 573
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_0
    return-object p0
.end method

.method static scale([FFF)[F
    .locals 4
    .param p0, "points"    # [F
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 586
    array-length v1, p0

    .line 587
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 588
    aget v2, p0, v0

    mul-float/2addr v2, p1

    aput v2, p0, v0

    .line 589
    add-int/lit8 v2, v0, 0x1

    aget v3, p0, v2

    mul-float/2addr v3, p2

    aput v3, p0, v2

    .line 587
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 591
    :cond_0
    return-object p0
.end method

.method public static spatialSampling(Landroid/gesture/Gesture;I)[F
    .locals 1
    .param p0, "gesture"    # Landroid/gesture/Gesture;
    .param p1, "bitmapSize"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/gesture/GestureUtils;->spatialSampling(Landroid/gesture/Gesture;IZ)[F

    move-result-object v0

    return-object v0
.end method

.method public static spatialSampling(Landroid/gesture/Gesture;IZ)[F
    .locals 35
    .param p0, "gesture"    # Landroid/gesture/Gesture;
    .param p1, "bitmapSize"    # I
    .param p2, "keepAspectRatio"    # Z

    .prologue
    .line 92
    add-int/lit8 v33, p1, -0x1

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v30, v0

    .line 93
    .local v30, "targetPatchSize":F
    mul-int v33, p1, p1

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 94
    .local v17, "sample":[F
    const/16 v33, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/gesture/Gesture;->getBoundingBox()Landroid/graphics/RectF;

    move-result-object v16

    .line 97
    .local v16, "rect":Landroid/graphics/RectF;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 98
    .local v7, "gestureWidth":F
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v6

    .line 99
    .local v6, "gestureHeight":F
    div-float v28, v30, v7

    .line 100
    .local v28, "sx":F
    div-float v29, v30, v6

    .line 102
    .local v29, "sy":F
    if-eqz p2, :cond_2

    .line 103
    cmpg-float v33, v28, v29

    if-gez v33, :cond_1

    move/from16 v18, v28

    .line 104
    .local v18, "scale":F
    :goto_0
    move/from16 v28, v18

    .line 105
    move/from16 v29, v18

    .line 130
    :cond_0
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->centerX()F

    move-result v33

    move/from16 v0, v33

    neg-float v13, v0

    .line 131
    .local v13, "preDx":F
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->centerY()F

    move-result v33

    move/from16 v0, v33

    neg-float v14, v0

    .line 132
    .local v14, "preDy":F
    const/high16 v33, 0x40000000    # 2.0f

    div-float v11, v30, v33

    .line 133
    .local v11, "postDx":F
    const/high16 v33, 0x40000000    # 2.0f

    div-float v12, v30, v33

    .line 134
    .local v12, "postDy":F
    invoke-virtual/range {p0 .. p0}, Landroid/gesture/Gesture;->getStrokes()Ljava/util/ArrayList;

    move-result-object v27

    .line 135
    .local v27, "strokes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 139
    .local v5, "count":I
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_2
    if-ge v9, v5, :cond_11

    .line 140
    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/gesture/GestureStroke;

    .line 141
    .local v25, "stroke":Landroid/gesture/GestureStroke;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/gesture/GestureStroke;->points:[F

    move-object/from16 v26, v0

    .line 142
    .local v26, "strokepoints":[F
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v23, v0

    .line 143
    .local v23, "size":I
    move/from16 v0, v23

    new-array v15, v0, [F

    .line 144
    .local v15, "pts":[F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    move/from16 v0, v23

    if-ge v8, v0, :cond_7

    .line 145
    aget v33, v26, v8

    add-float v33, v33, v13

    mul-float v33, v33, v28

    add-float v33, v33, v11

    aput v33, v15, v8

    .line 146
    add-int/lit8 v33, v8, 0x1

    add-int/lit8 v34, v8, 0x1

    aget v34, v26, v34

    add-float v34, v34, v14

    mul-float v34, v34, v29

    add-float v34, v34, v12

    aput v34, v15, v33

    .line 144
    add-int/lit8 v8, v8, 0x2

    goto :goto_3

    .end local v5    # "count":I
    .end local v8    # "i":I
    .end local v9    # "index":I
    .end local v11    # "postDx":F
    .end local v12    # "postDy":F
    .end local v13    # "preDx":F
    .end local v14    # "preDy":F
    .end local v15    # "pts":[F
    .end local v18    # "scale":F
    .end local v23    # "size":I
    .end local v25    # "stroke":Landroid/gesture/GestureStroke;
    .end local v26    # "strokepoints":[F
    .end local v27    # "strokes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    :cond_1
    move/from16 v18, v29

    .line 103
    goto :goto_0

    .line 108
    :cond_2
    div-float v4, v7, v6

    .line 109
    .local v4, "aspectRatio":F
    const/high16 v33, 0x3f800000    # 1.0f

    cmpl-float v33, v4, v33

    if-lez v33, :cond_3

    .line 110
    const/high16 v33, 0x3f800000    # 1.0f

    div-float v4, v33, v4

    .line 112
    :cond_3
    const v33, 0x3e851eb8    # 0.26f

    cmpg-float v33, v4, v33

    if-gez v33, :cond_5

    .line 113
    cmpg-float v33, v28, v29

    if-gez v33, :cond_4

    move/from16 v18, v28

    .line 114
    .restart local v18    # "scale":F
    :goto_4
    move/from16 v28, v18

    .line 115
    move/from16 v29, v18

    .line 116
    goto :goto_1

    .end local v18    # "scale":F
    :cond_4
    move/from16 v18, v29

    .line 113
    goto :goto_4

    .line 117
    :cond_5
    cmpl-float v33, v28, v29

    if-lez v33, :cond_6

    .line 118
    sget v33, Landroid/gesture/GestureUtils;->NONUNIFORM_SCALE:F

    mul-float v18, v29, v33

    .line 119
    .restart local v18    # "scale":F
    cmpg-float v33, v18, v28

    if-gez v33, :cond_0

    .line 120
    move/from16 v28, v18

    goto/16 :goto_1

    .line 123
    .end local v18    # "scale":F
    :cond_6
    sget v33, Landroid/gesture/GestureUtils;->NONUNIFORM_SCALE:F

    mul-float v18, v28, v33

    .line 124
    .restart local v18    # "scale":F
    cmpg-float v33, v18, v29

    if-gez v33, :cond_0

    .line 125
    move/from16 v29, v18

    goto/16 :goto_1

    .line 148
    .end local v4    # "aspectRatio":F
    .restart local v5    # "count":I
    .restart local v8    # "i":I
    .restart local v9    # "index":I
    .restart local v11    # "postDx":F
    .restart local v12    # "postDy":F
    .restart local v13    # "preDx":F
    .restart local v14    # "preDy":F
    .restart local v15    # "pts":[F
    .restart local v23    # "size":I
    .restart local v25    # "stroke":Landroid/gesture/GestureStroke;
    .restart local v26    # "strokepoints":[F
    .restart local v27    # "strokes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    :cond_7
    const/high16 v19, -0x40800000    # -1.0f

    .line 149
    .local v19, "segmentEndX":F
    const/high16 v20, -0x40800000    # -1.0f

    .line 150
    .local v20, "segmentEndY":F
    const/4 v8, 0x0

    :goto_5
    move/from16 v0, v23

    if-ge v8, v0, :cond_10

    .line 151
    aget v33, v15, v8

    const/16 v34, 0x0

    cmpg-float v33, v33, v34

    if-gez v33, :cond_a

    const/16 v21, 0x0

    .line 152
    .local v21, "segmentStartX":F
    :goto_6
    add-int/lit8 v33, v8, 0x1

    aget v33, v15, v33

    const/16 v34, 0x0

    cmpg-float v33, v33, v34

    if-gez v33, :cond_b

    const/16 v22, 0x0

    .line 153
    .local v22, "segmentStartY":F
    :goto_7
    cmpl-float v33, v21, v30

    if-lez v33, :cond_8

    .line 154
    move/from16 v21, v30

    .line 156
    :cond_8
    cmpl-float v33, v22, v30

    if-lez v33, :cond_9

    .line 157
    move/from16 v22, v30

    .line 159
    :cond_9
    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v17

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    .line 160
    const/high16 v33, -0x40800000    # -1.0f

    cmpl-float v33, v19, v33

    if-eqz v33, :cond_f

    .line 162
    cmpl-float v33, v19, v21

    if-lez v33, :cond_c

    .line 163
    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v31, v0

    .line 164
    .local v31, "xpos":F
    sub-float v33, v20, v22

    sub-float v34, v19, v21

    div-float v24, v33, v34

    .line 166
    .local v24, "slope":F
    :goto_8
    cmpg-float v33, v31, v19

    if-gez v33, :cond_d

    .line 167
    sub-float v33, v31, v21

    mul-float v33, v33, v24

    add-float v32, v33, v22

    .line 168
    .local v32, "ypos":F
    move/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v17

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    .line 169
    const/high16 v33, 0x3f800000    # 1.0f

    add-float v31, v31, v33

    goto :goto_8

    .line 151
    .end local v21    # "segmentStartX":F
    .end local v22    # "segmentStartY":F
    .end local v24    # "slope":F
    .end local v31    # "xpos":F
    .end local v32    # "ypos":F
    :cond_a
    aget v21, v15, v8

    goto :goto_6

    .line 152
    .restart local v21    # "segmentStartX":F
    :cond_b
    add-int/lit8 v33, v8, 0x1

    aget v22, v15, v33

    goto :goto_7

    .line 171
    .restart local v22    # "segmentStartY":F
    :cond_c
    cmpg-float v33, v19, v21

    if-gez v33, :cond_d

    .line 172
    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v31, v0

    .line 173
    .restart local v31    # "xpos":F
    sub-float v33, v20, v22

    sub-float v34, v19, v21

    div-float v24, v33, v34

    .line 175
    .restart local v24    # "slope":F
    :goto_9
    cmpg-float v33, v31, v21

    if-gez v33, :cond_d

    .line 176
    sub-float v33, v31, v21

    mul-float v33, v33, v24

    add-float v32, v33, v22

    .line 177
    .restart local v32    # "ypos":F
    move/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v17

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    .line 178
    const/high16 v33, 0x3f800000    # 1.0f

    add-float v31, v31, v33

    goto :goto_9

    .line 182
    .end local v24    # "slope":F
    .end local v31    # "xpos":F
    .end local v32    # "ypos":F
    :cond_d
    cmpl-float v33, v20, v22

    if-lez v33, :cond_e

    .line 183
    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v32, v0

    .line 184
    .restart local v32    # "ypos":F
    sub-float v33, v19, v21

    sub-float v34, v20, v22

    div-float v10, v33, v34

    .line 186
    .local v10, "invertSlope":F
    :goto_a
    cmpg-float v33, v32, v20

    if-gez v33, :cond_f

    .line 187
    sub-float v33, v32, v22

    mul-float v33, v33, v10

    add-float v31, v33, v21

    .line 188
    .restart local v31    # "xpos":F
    move/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v17

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    .line 189
    const/high16 v33, 0x3f800000    # 1.0f

    add-float v32, v32, v33

    goto :goto_a

    .line 191
    .end local v10    # "invertSlope":F
    .end local v31    # "xpos":F
    .end local v32    # "ypos":F
    :cond_e
    cmpg-float v33, v20, v22

    if-gez v33, :cond_f

    .line 192
    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v32, v0

    .line 193
    .restart local v32    # "ypos":F
    sub-float v33, v19, v21

    sub-float v34, v20, v22

    div-float v10, v33, v34

    .line 195
    .restart local v10    # "invertSlope":F
    :goto_b
    cmpg-float v33, v32, v22

    if-gez v33, :cond_f

    .line 196
    sub-float v33, v32, v22

    mul-float v33, v33, v10

    add-float v31, v33, v21

    .line 197
    .restart local v31    # "xpos":F
    move/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v17

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    .line 198
    const/high16 v33, 0x3f800000    # 1.0f

    add-float v32, v32, v33

    goto :goto_b

    .line 202
    .end local v10    # "invertSlope":F
    .end local v31    # "xpos":F
    .end local v32    # "ypos":F
    :cond_f
    move/from16 v19, v21

    .line 203
    move/from16 v20, v22

    .line 150
    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_5

    .line 139
    .end local v21    # "segmentStartX":F
    .end local v22    # "segmentStartY":F
    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 206
    .end local v8    # "i":I
    .end local v15    # "pts":[F
    .end local v19    # "segmentEndX":F
    .end local v20    # "segmentEndY":F
    .end local v23    # "size":I
    .end local v25    # "stroke":Landroid/gesture/GestureStroke;
    .end local v26    # "strokepoints":[F
    :cond_11
    return-object v17
.end method

.method static squaredEuclideanDistance([F[F)F
    .locals 6
    .param p0, "vector1"    # [F
    .param p1, "vector2"    # [F

    .prologue
    .line 408
    const/4 v3, 0x0

    .line 409
    .local v3, "squaredDistance":F
    array-length v2, p0

    .line 410
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 411
    aget v4, p0, v1

    aget v5, p1, v1

    sub-float v0, v4, v5

    .line 412
    .local v0, "difference":F
    mul-float v4, v0, v0

    add-float/2addr v3, v4

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    .end local v0    # "difference":F
    :cond_0
    int-to-float v4, v2

    div-float v4, v3, v4

    return v4
.end method

.method public static temporalSampling(Landroid/gesture/GestureStroke;I)[F
    .locals 22
    .param p0, "stroke"    # Landroid/gesture/GestureStroke;
    .param p1, "numPoints"    # I

    .prologue
    .line 269
    move-object/from16 v0, p0

    iget v0, v0, Landroid/gesture/GestureStroke;->length:F

    move/from16 v20, v0

    add-int/lit8 v21, p1, -0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v10, v20, v21

    .line 270
    .local v10, "increment":F
    mul-int/lit8 v19, p1, 0x2

    .line 271
    .local v19, "vectorLength":I
    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 272
    .local v18, "vector":[F
    const/4 v8, 0x0

    .line 273
    .local v8, "distanceSoFar":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/gesture/GestureStroke;->points:[F

    move-object/from16 v16, v0

    .line 274
    .local v16, "pts":[F
    const/16 v20, 0x0

    aget v12, v16, v20

    .line 275
    .local v12, "lstPointX":F
    const/16 v20, 0x1

    aget v13, v16, v20

    .line 276
    .local v13, "lstPointY":F
    const/4 v11, 0x0

    .line 277
    .local v11, "index":I
    const/4 v3, 0x1

    .line 278
    .local v3, "currentPointX":F
    const/4 v4, 0x1

    .line 279
    .local v4, "currentPointY":F
    aput v12, v18, v11

    .line 280
    add-int/lit8 v11, v11, 0x1

    .line 281
    aput v13, v18, v11

    .line 282
    add-int/lit8 v11, v11, 0x1

    .line 283
    const/4 v9, 0x0

    .line 284
    .local v9, "i":I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    div-int/lit8 v2, v20, 0x2

    .line 285
    .local v2, "count":I
    :goto_0
    if-ge v9, v2, :cond_0

    .line 286
    const/16 v20, 0x1

    cmpl-float v20, v3, v20

    if-nez v20, :cond_2

    .line 287
    add-int/lit8 v9, v9, 0x1

    .line 288
    if-lt v9, v2, :cond_1

    .line 317
    :cond_0
    move v9, v11

    :goto_1
    move/from16 v0, v19

    if-ge v9, v0, :cond_4

    .line 318
    aput v12, v18, v9

    .line 319
    add-int/lit8 v20, v9, 0x1

    aput v13, v18, v20

    .line 317
    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    .line 291
    :cond_1
    mul-int/lit8 v20, v9, 0x2

    aget v3, v16, v20

    .line 292
    mul-int/lit8 v20, v9, 0x2

    add-int/lit8 v20, v20, 0x1

    aget v4, v16, v20

    .line 294
    :cond_2
    sub-float v5, v3, v12

    .line 295
    .local v5, "deltaX":F
    sub-float v6, v4, v13

    .line 296
    .local v6, "deltaY":F
    mul-float v20, v5, v5

    mul-float v21, v6, v6

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v7, v0

    .line 297
    .local v7, "distance":F
    add-float v20, v8, v7

    cmpl-float v20, v20, v10

    if-ltz v20, :cond_3

    .line 298
    sub-float v20, v10, v8

    div-float v17, v20, v7

    .line 299
    .local v17, "ratio":F
    mul-float v20, v17, v5

    add-float v14, v12, v20

    .line 300
    .local v14, "nx":F
    mul-float v20, v17, v6

    add-float v15, v13, v20

    .line 301
    .local v15, "ny":F
    aput v14, v18, v11

    .line 302
    add-int/lit8 v11, v11, 0x1

    .line 303
    aput v15, v18, v11

    .line 304
    add-int/lit8 v11, v11, 0x1

    .line 305
    move v12, v14

    .line 306
    move v13, v15

    .line 307
    const/4 v8, 0x0

    .line 308
    goto :goto_0

    .line 309
    .end local v14    # "nx":F
    .end local v15    # "ny":F
    .end local v17    # "ratio":F
    :cond_3
    move v12, v3

    .line 310
    move v13, v4

    .line 311
    const/4 v3, 0x1

    .line 312
    const/4 v4, 0x1

    .line 313
    add-float/2addr v8, v7

    goto :goto_0

    .line 321
    .end local v5    # "deltaX":F
    .end local v6    # "deltaY":F
    .end local v7    # "distance":F
    :cond_4
    return-object v18
.end method

.method static translate([FFF)[F
    .locals 4
    .param p0, "points"    # [F
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 577
    array-length v1, p0

    .line 578
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 579
    aget v2, p0, v0

    add-float/2addr v2, p1

    aput v2, p0, v0

    .line 580
    add-int/lit8 v2, v0, 0x1

    aget v3, p0, v2

    add-float/2addr v3, p2

    aput v3, p0, v2

    .line 578
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 582
    :cond_0
    return-object p0
.end method
