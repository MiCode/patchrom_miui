.class public Lcom/android/settings/EqualizerView;
.super Landroid/view/View;
.source "EqualizerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/EqualizerView$Complex;,
        Lcom/android/settings/EqualizerView$Biquad;
    }
.end annotation


# static fields
.field public static MAX_FREQ:I

.field public static MIN_FREQ:I

.field public static SAMPLING_RATE:I

.field public static SCALE:I


# instance fields
.field private final mCurveColor:I

.field private final mCurvePaint:Landroid/graphics/Paint;

.field private final mCurveShadowColor:I

.field private final mCurveShadowRadius:F

.field private mHeight:I

.field private final mLevels:[F

.field private mMaxRank:I

.field private mMinRank:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x14

    sput v0, Lcom/android/settings/EqualizerView;->MIN_FREQ:I

    .line 17
    const/16 v0, 0x4e20

    sput v0, Lcom/android/settings/EqualizerView;->MAX_FREQ:I

    .line 18
    const v0, 0xac44

    sput v0, Lcom/android/settings/EqualizerView;->SAMPLING_RATE:I

    .line 19
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/EqualizerView;->SCALE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    const v5, 0xffae00

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v1, 0x7

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/settings/EqualizerView;->mLevels:[F

    .line 34
    iput v2, p0, Lcom/android/settings/EqualizerView;->mMinRank:I

    .line 35
    iput v2, p0, Lcom/android/settings/EqualizerView;->mMaxRank:I

    .line 41
    invoke-virtual {p0, v2}, Lcom/android/settings/EqualizerView;->setWillNotDraw(Z)V

    .line 43
    if-eqz p2, :cond_0

    .line 44
    sget-object v1, Lcom/android/settings/R$styleable;->EqualizerView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/EqualizerView;->mCurveColor:I

    .line 46
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/EqualizerView;->mCurveShadowColor:I

    .line 47
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/settings/EqualizerView;->mCurveShadowRadius:F

    .line 54
    .end local v0           #a:Landroid/content/res/TypedArray;
    :goto_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/settings/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    .line 55
    iget-object v1, p0, Lcom/android/settings/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/EqualizerView;->mCurveColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v1, p0, Lcom/android/settings/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v1, p0, Lcom/android/settings/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v1, p0, Lcom/android/settings/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    return-void

    .line 49
    :cond_0
    iput v5, p0, Lcom/android/settings/EqualizerView;->mCurveColor:I

    .line 50
    iput v2, p0, Lcom/android/settings/EqualizerView;->mCurveShadowColor:I

    .line 51
    iput v3, p0, Lcom/android/settings/EqualizerView;->mCurveShadowRadius:F

    goto :goto_0
.end method

.method private lin2dB(F)F
    .locals 4
    .parameter "rho"

    .prologue
    .line 203
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4034

    mul-double/2addr v0, v2

    double-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x3d3a

    goto :goto_0
.end method

.method private projectX(F)F
    .locals 10
    .parameter "freq"

    .prologue
    .line 184
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    .line 185
    .local v4, pos:D
    sget v6, Lcom/android/settings/EqualizerView;->MIN_FREQ:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    .line 186
    .local v2, minPos:D
    sget v6, Lcom/android/settings/EqualizerView;->MAX_FREQ:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 187
    .local v0, maxPos:D
    sub-double v6, v4, v2

    sub-double v8, v0, v2

    div-double v4, v6, v8

    .line 188
    double-to-float v6, v4

    return v6
.end method

.method private projectY(F)F
    .locals 5
    .parameter "dB"

    .prologue
    .line 192
    iget v2, p0, Lcom/android/settings/EqualizerView;->mMaxRank:I

    iget v3, p0, Lcom/android/settings/EqualizerView;->mMinRank:I

    sub-int v0, v2, v3

    .line 193
    .local v0, diff:I
    if-gtz v0, :cond_0

    .line 194
    const-string v2, "EqualizerView"

    const-string v3, "rank is unint"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v2, 0x0

    .line 199
    :goto_0
    return v2

    .line 198
    :cond_0
    iget v2, p0, Lcom/android/settings/EqualizerView;->mMinRank:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget v3, p0, Lcom/android/settings/EqualizerView;->mMaxRank:I

    iget v4, p0, Lcom/android/settings/EqualizerView;->mMinRank:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 199
    .local v1, pos:F
    const/high16 v2, 0x3f80

    sub-float/2addr v2, v1

    goto :goto_0
.end method

.method private setPanitAlpha(F)V
    .locals 4
    .parameter "percent"

    .prologue
    const/4 v3, 0x0

    .line 172
    const v0, 0x3c23d70a

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 173
    const p1, 0x3c23d70a

    .line 177
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 178
    iget v0, p0, Lcom/android/settings/EqualizerView;->mCurveShadowColor:I

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/settings/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/EqualizerView;->mCurveShadowRadius:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/settings/EqualizerView;->mCurveShadowColor:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 181
    :cond_1
    return-void

    .line 174
    :cond_2
    const v0, 0x3d4ccccd

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 175
    const p1, 0x3d4ccccd

    goto :goto_0
.end method


# virtual methods
.method public getMaxLevel()I
    .locals 2

    .prologue
    .line 325
    iget v0, p0, Lcom/android/settings/EqualizerView;->mMaxRank:I

    sget v1, Lcom/android/settings/EqualizerView;->SCALE:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getMinLevel()I
    .locals 2

    .prologue
    .line 329
    iget v0, p0, Lcom/android/settings/EqualizerView;->mMinRank:I

    sget v1, Lcom/android/settings/EqualizerView;->SCALE:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public init(II)V
    .locals 0
    .parameter "minRank"
    .parameter "maxRank"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/settings/EqualizerView;->mMinRank:I

    .line 63
    iput p2, p0, Lcom/android/settings/EqualizerView;->mMaxRank:I

    .line 64
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .parameter "canvas"

    .prologue
    .line 102
    const/4 v1, 0x6

    new-array v7, v1, [Lcom/android/settings/EqualizerView$Biquad;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/settings/EqualizerView$Biquad;

    invoke-direct {v2}, Lcom/android/settings/EqualizerView$Biquad;-><init>()V

    aput-object v2, v7, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/settings/EqualizerView$Biquad;

    invoke-direct {v2}, Lcom/android/settings/EqualizerView$Biquad;-><init>()V

    aput-object v2, v7, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/settings/EqualizerView$Biquad;

    invoke-direct {v2}, Lcom/android/settings/EqualizerView$Biquad;-><init>()V

    aput-object v2, v7, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/settings/EqualizerView$Biquad;

    invoke-direct {v2}, Lcom/android/settings/EqualizerView$Biquad;-><init>()V

    aput-object v2, v7, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/settings/EqualizerView$Biquad;

    invoke-direct {v2}, Lcom/android/settings/EqualizerView$Biquad;-><init>()V

    aput-object v2, v7, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/android/settings/EqualizerView$Biquad;

    invoke-direct {v2}, Lcom/android/settings/EqualizerView$Biquad;-><init>()V

    aput-object v2, v7, v1

    .line 115
    .local v7, biquads:[Lcom/android/settings/EqualizerView$Biquad;
    const-wide/high16 v1, 0x4024

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/EqualizerView;->mLevels:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    const/high16 v4, 0x41a0

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v12, v1

    .line 116
    .local v12, gain:F
    const/4 v1, 0x0

    aget-object v1, v7, v1

    const/high16 v2, 0x4296

    sget v3, Lcom/android/settings/EqualizerView;->SAMPLING_RATE:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/EqualizerView;->mLevels:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/EqualizerView;->mLevels:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f80

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/EqualizerView$Biquad;->setHighShelf(FFFF)V

    .line 117
    const/4 v1, 0x1

    aget-object v1, v7, v1

    const/high16 v2, 0x432f

    sget v3, Lcom/android/settings/EqualizerView;->SAMPLING_RATE:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/EqualizerView;->mLevels:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/EqualizerView;->mLevels:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f80

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/EqualizerView$Biquad;->setHighShelf(FFFF)V

    .line 118
    const/4 v1, 0x2

    aget-object v1, v7, v1

    const/high16 v2, 0x43af

    sget v3, Lcom/android/settings/EqualizerView;->SAMPLING_RATE:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/EqualizerView;->mLevels:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/EqualizerView;->mLevels:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f80

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/EqualizerView$Biquad;->setHighShelf(FFFF)V

    .line 119
    const/4 v1, 0x3

    aget-object v1, v7, v1

    const/high16 v2, 0x4461

    sget v3, Lcom/android/settings/EqualizerView;->SAMPLING_RATE:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/EqualizerView;->mLevels:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/EqualizerView;->mLevels:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f80

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/EqualizerView$Biquad;->setHighShelf(FFFF)V

    .line 120
    const/4 v1, 0x4

    aget-object v1, v7, v1

    const v2, 0x44dac000

    sget v3, Lcom/android/settings/EqualizerView;->SAMPLING_RATE:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/EqualizerView;->mLevels:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/EqualizerView;->mLevels:[F

    const/4 v6, 0x4

    aget v5, v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f80

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/EqualizerView$Biquad;->setHighShelf(FFFF)V

    .line 121
    const/4 v1, 0x5

    aget-object v1, v7, v1

    const v2, 0x455ac000

    sget v3, Lcom/android/settings/EqualizerView;->SAMPLING_RATE:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/EqualizerView;->mLevels:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/EqualizerView;->mLevels:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f80

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/EqualizerView$Biquad;->setHighShelf(FFFF)V

    .line 125
    const/high16 v16, -0x4080

    .line 126
    .local v16, oldx:F
    const/4 v15, 0x0

    .line 127
    .local v15, olddB:F
    sget v1, Lcom/android/settings/EqualizerView;->MIN_FREQ:I

    int-to-float v1, v1

    const v2, 0x3f933333

    div-float v11, v1, v2

    .local v11, freq:F
    :goto_0
    sget v1, Lcom/android/settings/EqualizerView;->MAX_FREQ:I

    int-to-float v1, v1

    const v2, 0x3f933333

    mul-float/2addr v1, v2

    cmpg-float v1, v11, v1

    if-gez v1, :cond_4

    .line 128
    sget v1, Lcom/android/settings/EqualizerView;->SAMPLING_RATE:I

    int-to-float v1, v1

    div-float v1, v11, v1

    const v2, 0x40490fdb

    mul-float/2addr v1, v2

    const/high16 v2, 0x4000

    mul-float v17, v1, v2

    .line 129
    .local v17, omega:F
    new-instance v18, Lcom/android/settings/EqualizerView$Complex;

    move/from16 v0, v17

    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v0, v17

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    .line 132
    .local v18, z:Lcom/android/settings/EqualizerView$Complex;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/settings/EqualizerView$Complex;->mul(F)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v19

    .line 133
    .local v19, z1:Lcom/android/settings/EqualizerView$Complex;
    const/4 v1, 0x0

    aget-object v1, v7, v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/android/settings/EqualizerView$Biquad;->evaluateTransfer(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v20

    .line 134
    .local v20, z2:Lcom/android/settings/EqualizerView$Complex;
    const/4 v1, 0x1

    aget-object v1, v7, v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/android/settings/EqualizerView$Biquad;->evaluateTransfer(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v21

    .line 135
    .local v21, z3:Lcom/android/settings/EqualizerView$Complex;
    const/4 v1, 0x2

    aget-object v1, v7, v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/android/settings/EqualizerView$Biquad;->evaluateTransfer(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v22

    .line 136
    .local v22, z4:Lcom/android/settings/EqualizerView$Complex;
    const/4 v1, 0x3

    aget-object v1, v7, v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/android/settings/EqualizerView$Biquad;->evaluateTransfer(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v23

    .line 137
    .local v23, z5:Lcom/android/settings/EqualizerView$Complex;
    const/4 v1, 0x4

    aget-object v1, v7, v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/android/settings/EqualizerView$Biquad;->evaluateTransfer(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v24

    .line 138
    .local v24, z6:Lcom/android/settings/EqualizerView$Complex;
    const/4 v1, 0x5

    aget-object v1, v7, v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/android/settings/EqualizerView$Biquad;->evaluateTransfer(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v25

    .line 141
    .local v25, z7:Lcom/android/settings/EqualizerView$Complex;
    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/EqualizerView$Complex;->rho()F

    move-result v1

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/EqualizerView$Complex;->rho()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/EqualizerView$Complex;->rho()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/EqualizerView$Complex;->rho()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/EqualizerView$Complex;->rho()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual/range {v24 .. v24}, Lcom/android/settings/EqualizerView$Complex;->rho()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual/range {v25 .. v25}, Lcom/android/settings/EqualizerView$Complex;->rho()F

    move-result v2

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/settings/EqualizerView;->lin2dB(F)F

    move-result v8

    .line 142
    .local v8, dB:F
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/settings/EqualizerView;->projectY(F)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/EqualizerView;->mHeight:I

    int-to-float v2, v2

    mul-float v13, v1, v2

    .line 143
    .local v13, newBb:F
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/EqualizerView;->projectX(F)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/EqualizerView;->mWidth:I

    int-to-float v2, v2

    mul-float v14, v1, v2

    .line 144
    .local v14, newx:F
    const/high16 v1, -0x4080

    cmpl-float v1, v16, v1

    if-eqz v1, :cond_1

    .line 145
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/EqualizerView;->mWidth:I

    div-int/lit8 v1, v1, 0x5

    int-to-float v9, v1

    .line 146
    .local v9, edge:F
    cmpg-float v1, v16, v9

    if-gez v1, :cond_2

    .line 147
    div-float v1, v16, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/settings/EqualizerView;->setPanitAlpha(F)V

    .line 160
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/EqualizerView;->mPaddingLeft:I

    int-to-float v1, v1

    add-float v2, v1, v16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/EqualizerView;->mPaddingTop:I

    int-to-float v1, v1

    add-float v3, v1, v15

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/EqualizerView;->mPaddingLeft:I

    int-to-float v1, v1

    add-float v4, v1, v14

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/EqualizerView;->mPaddingTop:I

    int-to-float v1, v1

    add-float v5, v1, v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 166
    .end local v9           #edge:F
    :cond_1
    move/from16 v16, v14

    .line 167
    move v15, v13

    .line 127
    const v1, 0x3f933333

    mul-float/2addr v11, v1

    goto/16 :goto_0

    .line 149
    .restart local v9       #edge:F
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/EqualizerView;->mWidth:I

    int-to-float v1, v1

    sub-float v10, v1, v16

    .line 150
    .local v10, f:F
    cmpl-float v1, v9, v10

    if-lez v1, :cond_3

    .line 151
    div-float v1, v10, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/settings/EqualizerView;->setPanitAlpha(F)V

    goto :goto_1

    .line 153
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 154
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/EqualizerView;->mCurveShadowColor:I

    if-eqz v1, :cond_0

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/EqualizerView;->mCurveShadowRadius:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/EqualizerView;->mCurveShadowColor:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_1

    .line 169
    .end local v8           #dB:F
    .end local v9           #edge:F
    .end local v10           #f:F
    .end local v13           #newBb:F
    .end local v14           #newx:F
    .end local v17           #omega:F
    .end local v18           #z:Lcom/android/settings/EqualizerView$Complex;
    .end local v19           #z1:Lcom/android/settings/EqualizerView$Complex;
    .end local v20           #z2:Lcom/android/settings/EqualizerView$Complex;
    .end local v21           #z3:Lcom/android/settings/EqualizerView$Complex;
    .end local v22           #z4:Lcom/android/settings/EqualizerView$Complex;
    .end local v23           #z5:Lcom/android/settings/EqualizerView$Complex;
    .end local v24           #z6:Lcom/android/settings/EqualizerView$Complex;
    .end local v25           #z7:Lcom/android/settings/EqualizerView$Complex;
    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 78
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 79
    sub-int v0, p4, p2

    iget v1, p0, Lcom/android/settings/EqualizerView;->mPaddingLeft:I

    iget v2, p0, Lcom/android/settings/EqualizerView;->mPaddingRight:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/EqualizerView;->mWidth:I

    .line 80
    sub-int v0, p5, p3

    iget v1, p0, Lcom/android/settings/EqualizerView;->mPaddingTop:I

    iget v2, p0, Lcom/android/settings/EqualizerView;->mPaddingBottom:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/EqualizerView;->mHeight:I

    .line 81
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/EqualizerView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 73
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 74
    return-void
.end method

.method public setBands([FI)V
    .locals 4
    .parameter "values"
    .parameter "start"

    .prologue
    .line 93
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/EqualizerView;->mLevels:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/settings/EqualizerView;->mLevels:[F

    add-int v2, p2, v0

    aget v2, p1, v2

    sget v3, Lcom/android/settings/EqualizerView;->SCALE:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/EqualizerView;->postInvalidate()V

    .line 97
    return-void
.end method
