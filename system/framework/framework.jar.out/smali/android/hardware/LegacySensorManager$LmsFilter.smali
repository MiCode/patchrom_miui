.class final Landroid/hardware/LegacySensorManager$LmsFilter;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LmsFilter"
.end annotation


# static fields
.field private static final COUNT:I = 0xc

.field private static final PREDICTION_RATIO:F = 0.33333334f

.field private static final PREDICTION_TIME:F = 0.08f

.field private static final SENSORS_RATE_MS:I = 0x14


# instance fields
.field private mIndex:I

.field private mT:[J

.field private mV:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x18

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    .line 374
    new-array v0, v1, [J

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    .line 378
    const/16 v0, 0xc

    iput v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 379
    return-void
.end method


# virtual methods
.method public filter(JF)F
    .locals 24
    .param p1, "time"    # J
    .param p3, "in"    # F

    .prologue
    .line 382
    move/from16 v16, p3

    .line 383
    .local v16, "v":F
    const v15, 0x3089705f    # 1.0E-9f

    .line 384
    .local v15, "ns":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    move/from16 v19, v0

    aget v17, v18, v19

    .line 385
    .local v17, "v1":F
    sub-float v18, v16, v17

    const/high16 v19, 0x43340000    # 180.0f

    cmpl-float v18, v18, v19

    if-lez v18, :cond_2

    .line 386
    const/high16 v18, 0x43b40000    # 360.0f

    sub-float v16, v16, v18

    .line 394
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 395
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    move/from16 v18, v0

    const/16 v19, 0x18

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    .line 396
    const/16 v18, 0xc

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 397
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    move/from16 v19, v0

    aput v16, v18, v19

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    move/from16 v19, v0

    aput-wide p1, v18, v19

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0xc

    aput v16, v18, v19

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0xc

    aput-wide p1, v18, v19

    .line 406
    const/4 v6, 0x0

    .local v6, "E":F
    move v5, v6

    .local v5, "D":F
    move v4, v6

    .local v4, "C":F
    move v3, v6

    .local v3, "B":F
    move v2, v6

    .line 407
    .local v2, "A":F
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    const/16 v18, 0xb

    move/from16 v0, v18

    if-ge v13, v0, :cond_3

    .line 408
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    sub-int v14, v18, v13

    .line 409
    .local v14, "j":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    move-object/from16 v18, v0

    aget v8, v18, v14

    .line 410
    .local v8, "Z":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, v14

    const-wide/16 v20, 0x2

    div-long v18, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    move-object/from16 v20, v0

    add-int/lit8 v21, v14, 0x1

    aget-wide v20, v20, v21

    const-wide/16 v22, 0x2

    div-long v20, v20, v22

    add-long v18, v18, v20

    sub-long v18, v18, p1

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3089705f    # 1.0E-9f

    mul-float v7, v18, v19

    .line 411
    .local v7, "T":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    move-object/from16 v20, v0

    add-int/lit8 v21, v14, 0x1

    aget-wide v20, v20, v21

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3089705f    # 1.0E-9f

    mul-float v11, v18, v19

    .line 412
    .local v11, "dT":F
    mul-float/2addr v11, v11

    .line 413
    mul-float v18, v8, v11

    add-float v2, v2, v18

    .line 414
    mul-float v18, v7, v11

    mul-float v18, v18, v7

    add-float v3, v3, v18

    .line 415
    mul-float v18, v7, v11

    add-float v4, v4, v18

    .line 416
    mul-float v18, v7, v11

    mul-float v18, v18, v8

    add-float v5, v5, v18

    .line 417
    add-float/2addr v6, v11

    .line 407
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 387
    .end local v2    # "A":F
    .end local v3    # "B":F
    .end local v4    # "C":F
    .end local v5    # "D":F
    .end local v6    # "E":F
    .end local v7    # "T":F
    .end local v8    # "Z":F
    .end local v11    # "dT":F
    .end local v13    # "i":I
    .end local v14    # "j":I
    :cond_2
    sub-float v18, v17, v16

    const/high16 v19, 0x43340000    # 180.0f

    cmpl-float v18, v18, v19

    if-lez v18, :cond_0

    .line 388
    const/high16 v18, 0x43b40000    # 360.0f

    add-float v16, v16, v18

    goto/16 :goto_0

    .line 419
    .restart local v2    # "A":F
    .restart local v3    # "B":F
    .restart local v4    # "C":F
    .restart local v5    # "D":F
    .restart local v6    # "E":F
    .restart local v13    # "i":I
    :cond_3
    mul-float v18, v2, v3

    mul-float v19, v4, v5

    add-float v18, v18, v19

    mul-float v19, v6, v3

    mul-float v20, v4, v4

    add-float v19, v19, v20

    div-float v10, v18, v19

    .line 420
    .local v10, "b":F
    mul-float v18, v6, v10

    sub-float v18, v18, v2

    div-float v9, v18, v4

    .line 421
    .local v9, "a":F
    const v18, 0x3da3d70a    # 0.08f

    mul-float v18, v18, v9

    add-float v12, v10, v18

    .line 424
    .local v12, "f":F
    const v18, 0x3b360b61

    mul-float v12, v12, v18

    .line 425
    const/16 v18, 0x0

    cmpl-float v18, v12, v18

    if-ltz v18, :cond_6

    move/from16 v18, v12

    :goto_2
    const/high16 v19, 0x3f000000    # 0.5f

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_4

    .line 426
    const/high16 v18, 0x3f000000    # 0.5f

    add-float v18, v18, v12

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v12, v18

    const/high16 v19, 0x3f800000    # 1.0f

    add-float v12, v18, v19

    .line 427
    :cond_4
    const/16 v18, 0x0

    cmpg-float v18, v12, v18

    if-gez v18, :cond_5

    .line 428
    const/high16 v18, 0x3f800000    # 1.0f

    add-float v12, v12, v18

    .line 429
    :cond_5
    const/high16 v18, 0x43b40000    # 360.0f

    mul-float v12, v12, v18

    .line 430
    return v12

    .line 425
    :cond_6
    neg-float v0, v12

    move/from16 v18, v0

    goto :goto_2
.end method
