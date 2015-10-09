.class public Landroid/widget/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# static fields
.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final END_TENSION:F = 1.0f

.field private static final FLING_MODE:I = 0x1

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SCROLL_MODE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private mCurrVelocity:F

.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDistance:I

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mPhysicalCoeff:F

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    .line 97
    const-wide v11, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    const-wide v13, 0x3feccccccccccccdL    # 0.9

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    div-double/2addr v11, v13

    double-to-float v11, v11

    sput v11, Landroid/widget/Scroller;->DECELERATION_RATE:F

    .line 105
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    .line 106
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Landroid/widget/Scroller;->SPLINE_TIME:[F

    .line 115
    const/4 v7, 0x0

    .line 116
    .local v7, "x_min":F
    const/4 v10, 0x0

    .line 117
    .local v10, "y_min":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v11, 0x64

    if-ge v3, v11, :cond_4

    .line 118
    int-to-float v11, v3

    const/high16 v12, 0x42c80000    # 100.0f

    div-float v0, v11, v12

    .line 120
    .local v0, "alpha":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 123
    .local v6, "x_max":F
    :goto_1
    sub-float v11, v6, v7

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v5, v7, v11

    .line 124
    .local v5, "x":F
    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v5

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v5

    mul-float v1, v11, v12

    .line 125
    .local v1, "coef":F
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v5

    const v12, 0x3e333333    # 0.175f

    mul-float/2addr v11, v12

    const v12, 0x3eb33334    # 0.35000002f

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    mul-float/2addr v11, v1

    mul-float v12, v5, v5

    mul-float/2addr v12, v5

    add-float v4, v11, v12

    .line 126
    .local v4, "tx":F
    sub-float v11, v4, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v11, v13

    if-gez v11, :cond_0

    .line 130
    sget-object v11, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v5

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    add-float/2addr v12, v5

    mul-float/2addr v12, v1

    mul-float v13, v5, v5

    mul-float/2addr v13, v5

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 132
    const/high16 v9, 0x3f800000    # 1.0f

    .line 135
    .local v9, "y_max":F
    :goto_2
    sub-float v11, v9, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v8, v10, v11

    .line 136
    .local v8, "y":F
    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    mul-float v1, v11, v12

    .line 137
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    add-float/2addr v11, v8

    mul-float/2addr v11, v1

    mul-float v12, v8, v8

    mul-float/2addr v12, v8

    add-float v2, v11, v12

    .line 138
    .local v2, "dy":F
    sub-float v11, v2, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v11, v13

    if-gez v11, :cond_2

    .line 142
    sget-object v11, Landroid/widget/Scroller;->SPLINE_TIME:[F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    const v13, 0x3e333333    # 0.175f

    mul-float/2addr v12, v13

    const v13, 0x3eb33334    # 0.35000002f

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    mul-float/2addr v12, v1

    mul-float v13, v8, v8

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 117
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 127
    .end local v2    # "dy":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_0
    cmpl-float v11, v4, v0

    if-lez v11, :cond_1

    move v6, v5

    goto/16 :goto_1

    .line 128
    :cond_1
    move v7, v5

    goto/16 :goto_1

    .line 139
    .restart local v2    # "dy":F
    .restart local v8    # "y":F
    .restart local v9    # "y_max":F
    :cond_2
    cmpl-float v11, v2, v0

    if-lez v11, :cond_3

    move v9, v8

    goto :goto_2

    .line 140
    :cond_3
    move v10, v8

    goto :goto_2

    .line 144
    .end local v0    # "alpha":F
    .end local v1    # "coef":F
    .end local v2    # "dy":F
    .end local v4    # "tx":F
    .end local v5    # "x":F
    .end local v6    # "x_max":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_4
    sget-object v11, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    const/16 v12, 0x64

    sget-object v13, Landroid/widget/Scroller;->SPLINE_TIME:[F

    const/16 v14, 0x64

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v13, v14

    aput v15, v11, v12

    .line 147
    const/high16 v11, 0x41000000    # 8.0f

    sput v11, Landroid/widget/Scroller;->sViscousFluidScale:F

    .line 149
    const/high16 v11, 0x3f800000    # 1.0f

    sput v11, Landroid/widget/Scroller;->sViscousFluidNormalize:F

    .line 150
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v12

    div-float/2addr v11, v12

    sput v11, Landroid/widget/Scroller;->sViscousFluidNormalize:F

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 172
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mFlingFriction:F

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 181
    iput-object p2, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Scroller;->mPpi:F

    .line 183
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mDeceleration:F

    .line 184
    iput-boolean p3, p0, Landroid/widget/Scroller;->mFlywheel:Z

    .line 186
    const v0, 0x3f570a3d    # 0.84f

    invoke-direct {p0, v0}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    .line 187
    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2
    .param p1, "friction"    # F

    .prologue
    .line 202
    const v0, 0x43c10b3d

    iget v1, p0, Landroid/widget/Scroller;->mPpi:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private getSplineDeceleration(F)D
    .locals 3
    .param p1, "velocity"    # F

    .prologue
    .line 487
    const v0, 0x3eb33333    # 0.35f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/Scroller;->mFlingFriction:F

    iget v2, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(F)D
    .locals 8
    .param p1, "velocity"    # F

    .prologue
    .line 497
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->getSplineDeceleration(F)D

    move-result-wide v2

    .line 498
    .local v2, "l":D
    sget v4, Landroid/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v6

    .line 499
    .local v0, "decelMinusOne":D
    iget v4, p0, Landroid/widget/Scroller;->mFlingFriction:F

    iget v5, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Landroid/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(F)I
    .locals 8
    .param p1, "velocity"    # F

    .prologue
    .line 491
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->getSplineDeceleration(F)D

    move-result-wide v2

    .line 492
    .local v2, "l":D
    sget v4, Landroid/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v6

    .line 493
    .local v0, "decelMinusOne":D
    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method

.method static viscousFluid(F)F
    .locals 4
    .param p0, "x"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 504
    sget v1, Landroid/widget/Scroller;->sViscousFluidScale:F

    mul-float/2addr p0, v1

    .line 505
    cmpg-float v1, p0, v3

    if-gez v1, :cond_0

    .line 506
    neg-float v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p0, v1

    .line 512
    :goto_0
    sget v1, Landroid/widget/Scroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    .line 513
    return p0

    .line 508
    :cond_0
    const v0, 0x3ebc5ab2

    .line 509
    .local v0, "start":F
    sub-float v1, v3, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p0, v3, v1

    .line 510
    sub-float v1, v3, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 525
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 527
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 14

    .prologue
    .line 306
    iget-boolean v10, p0, Landroid/widget/Scroller;->mFinished:Z

    if-eqz v10, :cond_0

    .line 307
    const/4 v10, 0x0

    .line 363
    :goto_0
    return v10

    .line 310
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v10, v12

    long-to-int v7, v10

    .line 312
    .local v7, "timePassed":I
    iget v10, p0, Landroid/widget/Scroller;->mDuration:I

    if-ge v7, v10, :cond_4

    .line 313
    iget v10, p0, Landroid/widget/Scroller;->mMode:I

    packed-switch v10, :pswitch_data_0

    .line 363
    :cond_1
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 315
    :pswitch_0
    int-to-float v10, v7

    iget v11, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    mul-float v9, v10, v11

    .line 317
    .local v9, "x":F
    iget-object v10, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v10, :cond_2

    .line 318
    invoke-static {v9}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v9

    .line 322
    :goto_2
    iget v10, p0, Landroid/widget/Scroller;->mStartX:I

    iget v11, p0, Landroid/widget/Scroller;->mDeltaX:F

    mul-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 323
    iget v10, p0, Landroid/widget/Scroller;->mStartY:I

    iget v11, p0, Landroid/widget/Scroller;->mDeltaY:F

    mul-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Landroid/widget/Scroller;->mCurrY:I

    goto :goto_1

    .line 320
    :cond_2
    iget-object v10, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    goto :goto_2

    .line 326
    .end local v9    # "x":F
    :pswitch_1
    int-to-float v10, v7

    iget v11, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v11, v11

    div-float v4, v10, v11

    .line 327
    .local v4, "t":F
    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v10, v4

    float-to-int v3, v10

    .line 328
    .local v3, "index":I
    const/high16 v2, 0x3f800000    # 1.0f

    .line 329
    .local v2, "distanceCoef":F
    const/4 v8, 0x0

    .line 330
    .local v8, "velocityCoef":F
    const/16 v10, 0x64

    if-ge v3, v10, :cond_3

    .line 331
    int-to-float v10, v3

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v5, v10, v11

    .line 332
    .local v5, "t_inf":F
    add-int/lit8 v10, v3, 0x1

    int-to-float v10, v10

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v6, v10, v11

    .line 333
    .local v6, "t_sup":F
    sget-object v10, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    aget v0, v10, v3

    .line 334
    .local v0, "d_inf":F
    sget-object v10, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    add-int/lit8 v11, v3, 0x1

    aget v1, v10, v11

    .line 335
    .local v1, "d_sup":F
    sub-float v10, v1, v0

    sub-float v11, v6, v5

    div-float v8, v10, v11

    .line 336
    sub-float v10, v4, v5

    mul-float/2addr v10, v8

    add-float v2, v0, v10

    .line 339
    .end local v0    # "d_inf":F
    .end local v1    # "d_sup":F
    .end local v5    # "t_inf":F
    .end local v6    # "t_sup":F
    :cond_3
    iget v10, p0, Landroid/widget/Scroller;->mDistance:I

    int-to-float v10, v10

    mul-float/2addr v10, v8

    iget v11, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x447a0000    # 1000.0f

    mul-float/2addr v10, v11

    iput v10, p0, Landroid/widget/Scroller;->mCurrVelocity:F

    .line 341
    iget v10, p0, Landroid/widget/Scroller;->mStartX:I

    iget v11, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v12, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 343
    iget v10, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v11, p0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 344
    iget v10, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v11, p0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 346
    iget v10, p0, Landroid/widget/Scroller;->mStartY:I

    iget v11, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v12, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 348
    iget v10, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v11, p0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 349
    iget v10, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v11, p0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 351
    iget v10, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v11, p0, Landroid/widget/Scroller;->mFinalX:I

    if-ne v10, v11, :cond_1

    iget v10, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v11, p0, Landroid/widget/Scroller;->mFinalY:I

    if-ne v10, v11, :cond_1

    .line 352
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/Scroller;->mFinished:Z

    goto/16 :goto_1

    .line 359
    .end local v2    # "distanceCoef":F
    .end local v3    # "index":I
    .end local v4    # "t":F
    .end local v8    # "velocityCoef":F
    :cond_4
    iget v10, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v10, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 360
    iget v10, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v10, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 361
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/Scroller;->mFinished:Z

    goto/16 :goto_1

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3
    .param p1, "extend"    # I

    .prologue
    .line 538
    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v0

    .line 539
    .local v0, "passed":I
    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/Scroller;->mDuration:I

    .line 540
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 541
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 542
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 17
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 434
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/Scroller;->mFlywheel:Z

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/Scroller;->mFinished:Z

    if-nez v15, :cond_0

    .line 435
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v9

    .line 437
    .local v9, "oldVel":F
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Scroller;->mFinalX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mStartX:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-float v4, v15

    .line 438
    .local v4, "dx":F
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Scroller;->mFinalY:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mStartY:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-float v5, v15

    .line 439
    .local v5, "dy":F
    mul-float v15, v4, v4

    mul-float v16, v5, v5

    add-float v15, v15, v16

    invoke-static {v15}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v6

    .line 441
    .local v6, "hyp":F
    div-float v7, v4, v6

    .line 442
    .local v7, "ndx":F
    div-float v8, v5, v6

    .line 444
    .local v8, "ndy":F
    mul-float v10, v7, v9

    .line 445
    .local v10, "oldVelocityX":F
    mul-float v11, v8, v9

    .line 446
    .local v11, "oldVelocityY":F
    move/from16 v0, p3

    int-to-float v15, v0

    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    move-result v15

    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v16

    cmpl-float v15, v15, v16

    if-nez v15, :cond_0

    move/from16 v0, p4

    int-to-float v15, v0

    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    move-result v15

    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    move-result v16

    cmpl-float v15, v15, v16

    if-nez v15, :cond_0

    .line 448
    move/from16 v0, p3

    int-to-float v15, v0

    add-float/2addr v15, v10

    float-to-int v0, v15

    move/from16 p3, v0

    .line 449
    move/from16 v0, p4

    int-to-float v15, v0

    add-float/2addr v15, v11

    float-to-int v0, v15

    move/from16 p4, v0

    .line 453
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v6    # "hyp":F
    .end local v7    # "ndx":F
    .end local v8    # "ndy":F
    .end local v9    # "oldVel":F
    .end local v10    # "oldVelocityX":F
    .end local v11    # "oldVelocityY":F
    :cond_0
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Scroller;->mMode:I

    .line 454
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/Scroller;->mFinished:Z

    .line 456
    mul-int v15, p3, p3

    mul-int v16, p4, p4

    add-int v15, v15, v16

    int-to-float v15, v15

    invoke-static {v15}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v14

    .line 458
    .local v14, "velocity":F
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/Scroller;->mVelocity:F

    .line 459
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/Scroller;->getSplineFlingDuration(F)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Scroller;->mDuration:I

    .line 460
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Landroid/widget/Scroller;->mStartTime:J

    .line 461
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mStartX:I

    .line 462
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mStartY:I

    .line 464
    const/4 v15, 0x0

    cmpl-float v15, v14, v15

    if-nez v15, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 465
    .local v2, "coeffX":F
    :goto_0
    const/4 v15, 0x0

    cmpl-float v15, v14, v15

    if-nez v15, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 467
    .local v3, "coeffY":F
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/Scroller;->getSplineFlingDistance(F)D

    move-result-wide v12

    .line 468
    .local v12, "totalDistance":D
    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    move-result v15

    float-to-double v15, v15

    mul-double/2addr v15, v12

    double-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Scroller;->mDistance:I

    .line 470
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMinX:I

    .line 471
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMaxX:I

    .line 472
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMinY:I

    .line 473
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMaxY:I

    .line 475
    float-to-double v15, v2

    mul-double/2addr v15, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v15

    long-to-int v15, v15

    add-int v15, v15, p1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Scroller;->mFinalX:I

    .line 477
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Scroller;->mFinalX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mMaxX:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Scroller;->mFinalX:I

    .line 478
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Scroller;->mFinalX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mMinX:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Scroller;->mFinalX:I

    .line 480
    float-to-double v15, v3

    mul-double/2addr v15, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v15

    long-to-int v15, v15

    add-int v15, v15, p2

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Scroller;->mFinalY:I

    .line 482
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Scroller;->mFinalY:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mMaxY:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Scroller;->mFinalY:I

    .line 483
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Scroller;->mFinalY:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mMinY:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Scroller;->mFinalY:I

    .line 484
    return-void

    .line 464
    .end local v2    # "coeffX":F
    .end local v3    # "coeffY":F
    .end local v12    # "totalDistance":D
    :cond_1
    move/from16 v0, p3

    int-to-float v15, v0

    div-float v2, v15, v14

    goto/16 :goto_0

    .line 465
    .restart local v2    # "coeffX":F
    :cond_2
    move/from16 v0, p4

    int-to-float v15, v0

    div-float v3, v15, v14

    goto/16 :goto_1
.end method

.method public final forceFinished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 225
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 261
    iget v0, p0, Landroid/widget/Scroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/Scroller;->mCurrVelocity:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/Scroller;->mVelocity:F

    iget v1, p0, Landroid/widget/Scroller;->mDeceleration:F

    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Landroid/widget/Scroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Landroid/widget/Scroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Landroid/widget/Scroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Landroid/widget/Scroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 3
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    .line 583
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v2, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v2, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFinalX(I)V
    .locals 2
    .param p1, "newX"    # I

    .prologue
    .line 561
    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 562
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v1, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 564
    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .param p1, "newY"    # I

    .prologue
    .line 574
    iput p1, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 575
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v1, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 577
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 197
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mDeceleration:F

    .line 198
    iput p1, p0, Landroid/widget/Scroller;->mFlingFriction:F

    .line 199
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 381
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 382
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    const/4 v0, 0x0

    .line 399
    iput v0, p0, Landroid/widget/Scroller;->mMode:I

    .line 400
    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 401
    iput p5, p0, Landroid/widget/Scroller;->mDuration:I

    .line 402
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Scroller;->mStartTime:J

    .line 403
    iput p1, p0, Landroid/widget/Scroller;->mStartX:I

    .line 404
    iput p2, p0, Landroid/widget/Scroller;->mStartY:I

    .line 405
    add-int v0, p1, p3

    iput v0, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 406
    add-int v0, p2, p4

    iput v0, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 407
    int-to-float v0, p3

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 408
    int-to-float v0, p4

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 409
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 410
    return-void
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 550
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
