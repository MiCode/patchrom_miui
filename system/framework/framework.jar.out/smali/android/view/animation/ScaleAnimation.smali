.class public Landroid/view/animation/ScaleAnimation;
.super Landroid/view/animation/Animation;
.source "ScaleAnimation.java"


# instance fields
.field private mFromX:F

.field private mFromXData:I

.field private mFromXType:I

.field private mFromY:F

.field private mFromYData:I

.field private mFromYType:I

.field private mPivotX:F

.field private mPivotXType:I

.field private mPivotXValue:F

.field private mPivotY:F

.field private mPivotYType:I

.field private mPivotYValue:F

.field private final mResources:Landroid/content/res/Resources;

.field private mToX:F

.field private mToXData:I

.field private mToXType:I

.field private mToY:F

.field private mToYData:I

.field private mToYType:I


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 38
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 39
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 40
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 41
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 43
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 44
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 45
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 46
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 48
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 49
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 50
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 51
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 147
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 148
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 149
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 150
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 151
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    .line 152
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    .line 153
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 2
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F
    .param p5, "pivotX"    # F
    .param p6, "pivotY"    # F

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 38
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 39
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 40
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 41
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 43
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 44
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 45
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 46
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 48
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 49
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 50
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 51
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 174
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 175
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 176
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 177
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 179
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 180
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 181
    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 182
    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 183
    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    .line 184
    return-void
.end method

.method public constructor <init>(FFFFIFIF)V
    .locals 2
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F
    .param p5, "pivotXType"    # I
    .param p6, "pivotXValue"    # F
    .param p7, "pivotYType"    # I
    .param p8, "pivotYValue"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 213
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 38
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 39
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 40
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 41
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 43
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 44
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 45
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 46
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 48
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 49
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 50
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 51
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 215
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 216
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 217
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 218
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 220
    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 221
    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 222
    iput p8, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 223
    iput p7, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 224
    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 39
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 40
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 41
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 43
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    .line 44
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    .line 45
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    .line 46
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    .line 48
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 49
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 50
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 51
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    .line 67
    sget-object v3, Lcom/android/internal/R$styleable;->ScaleAnimation:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 72
    .local v2, "tv":Landroid/util/TypedValue;
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 73
    if-eqz v2, :cond_0

    .line 74
    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v6, :cond_4

    .line 76
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 82
    :cond_0
    :goto_0
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 84
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 85
    if-eqz v2, :cond_1

    .line 86
    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v6, :cond_5

    .line 88
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 95
    :cond_1
    :goto_1
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 97
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 98
    if-eqz v2, :cond_2

    .line 99
    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v6, :cond_6

    .line 101
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 107
    :cond_2
    :goto_2
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 109
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 110
    if-eqz v2, :cond_3

    .line 111
    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v6, :cond_7

    .line 113
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 120
    :cond_3
    :goto_3
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    invoke-static {v3}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 122
    .local v1, "d":Landroid/view/animation/Animation$Description;
    iget v3, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    .line 123
    iget v3, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    .line 125
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    invoke-static {v3}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 127
    iget v3, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    .line 128
    iget v3, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    .line 133
    return-void

    .line 78
    .end local v1    # "d":Landroid/view/animation/Animation$Description;
    :cond_4
    iget v3, v2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    .line 79
    iget v3, v2, Landroid/util/TypedValue;->data:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    goto :goto_0

    .line 90
    :cond_5
    iget v3, v2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    .line 91
    iget v3, v2, Landroid/util/TypedValue;->data:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    goto :goto_1

    .line 103
    :cond_6
    iget v3, v2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    .line 104
    iget v3, v2, Landroid/util/TypedValue;->data:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    goto :goto_2

    .line 115
    :cond_7
    iget v3, v2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    .line 116
    iget v3, v2, Landroid/util/TypedValue;->data:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    goto :goto_3
.end method

.method private initializePivotPoint()V
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    if-nez v0, :cond_0

    .line 233
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    .line 235
    :cond_0
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    if-nez v0, :cond_1

    .line 236
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    .line 238
    :cond_1
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 242
    const/high16 v1, 0x3f800000    # 1.0f

    .line 243
    .local v1, "sx":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 244
    .local v2, "sy":F
    invoke-virtual {p0}, Landroid/view/animation/ScaleAnimation;->getScaleFactor()F

    move-result v0

    .line 246
    .local v0, "scale":F
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_0

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_1

    .line 247
    :cond_0
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iget v5, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v1, v3, v4

    .line 249
    :cond_1
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_3

    .line 250
    :cond_2
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iget v5, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v2, v3, v4

    .line 253
    :cond_3
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_4

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_4

    .line 254
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_4
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    mul-float/2addr v4, v0

    iget v5, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    mul-float/2addr v5, v0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 279
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 281
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    move-object v0, p0

    move v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    .line 282
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    move-object v0, p0

    move v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    .line 283
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    move-object v0, p0

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    .line 284
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    move-object v0, p0

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    .line 286
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/ScaleAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    .line 287
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/ScaleAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    .line 288
    return-void
.end method

.method resolveScale(FIIII)F
    .locals 3
    .param p1, "scale"    # F
    .param p2, "type"    # I
    .param p3, "data"    # I
    .param p4, "size"    # I
    .param p5, "psize"    # I

    .prologue
    .line 262
    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    .line 263
    int-to-float v1, p4

    int-to-float v2, p5

    invoke-static {p3, v1, v2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v0

    .line 270
    .local v0, "targetSize":F
    :goto_0
    if-nez p4, :cond_2

    .line 271
    const/high16 p1, 0x3f800000    # 1.0f

    .line 274
    .end local v0    # "targetSize":F
    .end local p1    # "scale":F
    :cond_0
    :goto_1
    return p1

    .line 264
    .restart local p1    # "scale":F
    :cond_1
    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    .line 265
    iget-object v1, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v0

    .restart local v0    # "targetSize":F
    goto :goto_0

    .line 274
    :cond_2
    int-to-float v1, p4

    div-float p1, v0, v1

    goto :goto_1
.end method
