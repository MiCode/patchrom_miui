.class Landroid/inputmethodservice/KeyboardView$SwipeTracker;
.super Ljava/lang/Object;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwipeTracker"
.end annotation


# static fields
.field static final LONGEST_PAST_TIME:I = 0xc8

.field static final NUM_PAST:I = 0x4


# instance fields
.field final mPastTime:[J

.field final mPastX:[F

.field final mPastY:[F

.field mXVelocity:F

.field mYVelocity:F


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1457
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    .line 1458
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    .line 1459
    new-array v0, v1, [J

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    return-void
.end method

.method synthetic constructor <init>(Landroid/inputmethodservice/KeyboardView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/inputmethodservice/KeyboardView$1;

    .prologue
    .line 1452
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;-><init>()V

    return-void
.end method

.method private addPoint(FFJ)V
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "time"    # J

    .prologue
    .line 1479
    const/4 v1, -0x1

    .line 1481
    .local v1, "drop":I
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    .line 1482
    .local v3, "pastTime":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v7, 0x4

    if-ge v2, v7, :cond_0

    .line 1483
    aget-wide v7, v3, v2

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    .line 1489
    :cond_0
    const/4 v7, 0x4

    if-ne v2, v7, :cond_1

    if-gez v1, :cond_1

    .line 1490
    const/4 v1, 0x0

    .line 1492
    :cond_1
    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    .line 1493
    :cond_2
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    .line 1494
    .local v4, "pastX":[F
    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    .line 1495
    .local v5, "pastY":[F
    if-ltz v1, :cond_3

    .line 1496
    add-int/lit8 v6, v1, 0x1

    .line 1497
    .local v6, "start":I
    rsub-int/lit8 v7, v1, 0x4

    add-int/lit8 v0, v7, -0x1

    .line 1498
    .local v0, "count":I
    const/4 v7, 0x0

    invoke-static {v4, v6, v4, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1499
    const/4 v7, 0x0

    invoke-static {v5, v6, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1500
    const/4 v7, 0x0

    invoke-static {v3, v6, v3, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1501
    add-int/lit8 v7, v1, 0x1

    sub-int/2addr v2, v7

    .line 1503
    .end local v0    # "count":I
    .end local v6    # "start":I
    :cond_3
    aput p1, v4, v2

    .line 1504
    aput p2, v5, v2

    .line 1505
    aput-wide p3, v3, v2

    .line 1506
    add-int/lit8 v2, v2, 0x1

    .line 1507
    const/4 v7, 0x4

    if-ge v2, v7, :cond_4

    .line 1508
    const-wide/16 v7, 0x0

    aput-wide v7, v3, v2

    .line 1510
    :cond_4
    return-void

    .line 1485
    .end local v4    # "pastX":[F
    .end local v5    # "pastY":[F
    :cond_5
    aget-wide v7, v3, v2

    const-wide/16 v9, 0xc8

    sub-long v9, p3, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_6

    .line 1486
    move v1, v2

    .line 1482
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1469
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 1470
    .local v2, "time":J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 1471
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1472
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addPoint(FFJ)V

    .line 1471
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1475
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5, v2, v3}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addPoint(FFJ)V

    .line 1476
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 1465
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 1466
    return-void
.end method

.method public computeCurrentVelocity(I)V
    .locals 1
    .param p1, "units"    # I

    .prologue
    .line 1513
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->computeCurrentVelocity(IF)V

    .line 1514
    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .locals 19
    .param p1, "units"    # I
    .param p2, "maxVelocity"    # F

    .prologue
    .line 1517
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    .line 1518
    .local v12, "pastX":[F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    .line 1519
    .local v13, "pastY":[F
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    .line 1521
    .local v11, "pastTime":[J
    const/4 v15, 0x0

    aget v9, v12, v15

    .line 1522
    .local v9, "oldestX":F
    const/4 v15, 0x0

    aget v10, v13, v15

    .line 1523
    .local v10, "oldestY":F
    const/4 v15, 0x0

    aget-wide v7, v11, v15

    .line 1524
    .local v7, "oldestTime":J
    const/4 v2, 0x0

    .line 1525
    .local v2, "accumX":F
    const/4 v3, 0x0

    .line 1526
    .local v3, "accumY":F
    const/4 v1, 0x0

    .line 1527
    .local v1, "N":I
    :goto_0
    const/4 v15, 0x4

    if-ge v1, v15, :cond_0

    .line 1528
    aget-wide v15, v11, v1

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-nez v15, :cond_1

    .line 1534
    :cond_0
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_5

    .line 1535
    aget-wide v15, v11, v6

    sub-long/2addr v15, v7

    long-to-int v5, v15

    .line 1536
    .local v5, "dur":I
    if-nez v5, :cond_2

    .line 1534
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1531
    .end local v5    # "dur":I
    .end local v6    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1537
    .restart local v5    # "dur":I
    .restart local v6    # "i":I
    :cond_2
    aget v15, v12, v6

    sub-float v4, v15, v9

    .line 1538
    .local v4, "dist":F
    int-to-float v15, v5

    div-float v15, v4, v15

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v14, v15, v16

    .line 1539
    .local v14, "vel":F
    const/4 v15, 0x0

    cmpl-float v15, v2, v15

    if-nez v15, :cond_3

    move v2, v14

    .line 1542
    :goto_3
    aget v15, v13, v6

    sub-float v4, v15, v10

    .line 1543
    int-to-float v15, v5

    div-float v15, v4, v15

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v14, v15, v16

    .line 1544
    const/4 v15, 0x0

    cmpl-float v15, v3, v15

    if-nez v15, :cond_4

    move v3, v14

    goto :goto_2

    .line 1540
    :cond_3
    add-float v15, v2, v14

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v2, v15, v16

    goto :goto_3

    .line 1545
    :cond_4
    add-float v15, v3, v14

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v3, v15, v16

    goto :goto_2

    .line 1547
    .end local v4    # "dist":F
    .end local v5    # "dur":I
    .end local v14    # "vel":F
    :cond_5
    const/4 v15, 0x0

    cmpg-float v15, v2, v15

    if-gez v15, :cond_6

    move/from16 v0, p2

    neg-float v15, v0

    invoke-static {v2, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    :goto_4
    move-object/from16 v0, p0

    iput v15, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mXVelocity:F

    .line 1549
    const/4 v15, 0x0

    cmpg-float v15, v3, v15

    if-gez v15, :cond_7

    move/from16 v0, p2

    neg-float v15, v0

    invoke-static {v3, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    :goto_5
    move-object/from16 v0, p0

    iput v15, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mYVelocity:F

    .line 1551
    return-void

    .line 1547
    :cond_6
    move/from16 v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v15

    goto :goto_4

    .line 1549
    :cond_7
    move/from16 v0, p2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v15

    goto :goto_5
.end method

.method public getXVelocity()F
    .locals 1

    .prologue
    .line 1554
    iget v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mXVelocity:F

    return v0
.end method

.method public getYVelocity()F
    .locals 1

    .prologue
    .line 1558
    iget v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mYVelocity:F

    return v0
.end method
