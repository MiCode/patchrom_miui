.class public Lcom/mediatek/widget/ChartBandwidthGridView;
.super Landroid/view/View;
.source "ChartBandwidthGridView.java"


# instance fields
.field private mHoriz:Lcom/android/settings/widget/ChartAxis;

.field private mSecondary:Landroid/graphics/drawable/Drawable;

.field private mVert:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/widget/ChartBandwidthGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/widget/ChartBandwidthGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-virtual {p0, v2}, Lcom/mediatek/widget/ChartBandwidthGridView;->setWillNotDraw(Z)V

    .line 52
    sget-object v1, Lcom/android/settings/R$styleable;->ChartGridView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/widget/ChartBandwidthGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    return-void
.end method


# virtual methods
.method init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V
    .locals 1
    .parameter "horiz"
    .parameter "vert"

    .prologue
    .line 61
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthGridView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    .line 62
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthGridView;->mVert:Lcom/android/settings/widget/ChartAxis;

    .line 63
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .parameter "canvas"

    .prologue
    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/widget/ChartBandwidthGridView;->getWidth()I

    move-result v23

    .line 72
    .local v23, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/widget/ChartBandwidthGridView;->getHeight()I

    move-result v16

    .line 74
    .local v16, height:I
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 75
    .local v7, p:Landroid/graphics/Paint;
    const v2, -0x996700

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/widget/ChartBandwidthGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    .line 87
    .local v20, secondary:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/widget/ChartBandwidthGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    .line 89
    .local v21, secondaryHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/widget/ChartBandwidthGridView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v2}, Lcom/android/settings/widget/ChartAxis;->getTickPoints()[F

    move-result-object v22

    .line 90
    .local v22, vertTicks:[F
    move-object/from16 v14, v22

    .local v14, arr$:[F
    array-length v0, v14

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget v24, v14, v18

    .line 91
    .local v24, y:F
    move/from16 v0, v21

    int-to-float v2, v0

    add-float v2, v2, v24

    move/from16 v0, v16

    int-to-float v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v15, v2

    .line 92
    .local v15, bottom:I
    const/4 v2, 0x0

    move/from16 v0, v24

    float-to-int v4, v0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v2, v4, v1, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 96
    .end local v15           #bottom:I
    .end local v24           #y:F
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/widget/ChartBandwidthGridView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v2}, Lcom/android/settings/widget/ChartAxis;->getTickPoints()[F

    move-result-object v17

    .line 97
    .local v17, horizTicks:[F
    move-object/from16 v14, v17

    array-length v0, v14

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    aget v3, v14, v18

    .line 98
    .local v3, x:F
    const/4 v4, 0x0

    move/from16 v0, v16

    int-to-float v6, v0

    move-object/from16 v2, p1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 97
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 100
    .end local v3           #x:F
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/widget/ChartBandwidthGridView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    const-wide/16 v4, 0x64

    invoke-interface {v2, v4, v5}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/widget/ChartBandwidthGridView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    const-wide/16 v4, 0x64

    invoke-interface {v2, v4, v5}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v11

    move/from16 v0, v16

    int-to-float v12, v0

    move-object/from16 v8, p1

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 102
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 103
    .local v13, grayPaint:Landroid/graphics/Paint;
    const v2, -0x969697

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, v23

    int-to-float v11, v0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 106
    return-void
.end method
