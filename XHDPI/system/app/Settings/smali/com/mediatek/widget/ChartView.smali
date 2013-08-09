.class public Lcom/mediatek/widget/ChartView;
.super Landroid/widget/FrameLayout;
.source "ChartView.java"


# instance fields
.field private mContent:Landroid/graphics/Rect;

.field mHoriz:Lcom/android/settings/widget/ChartAxis;

.field private mOptimalWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mOptimalWidthWeight:F

.field mVert:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput v2, p0, Lcom/mediatek/widget/ChartView;->mOptimalWidth:I

    .line 52
    iput v4, p0, Lcom/mediatek/widget/ChartView;->mOptimalWidthWeight:F

    .line 54
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/mediatek/widget/ChartView;->mContent:Landroid/graphics/Rect;

    .line 67
    sget-object v1, Lcom/android/settings/R$styleable;->ChartView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/widget/ChartView;->setOptimalWidth(IF)V

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    invoke-virtual {p0, v3}, Lcom/mediatek/widget/ChartView;->setClipToPadding(Z)V

    .line 74
    invoke-virtual {p0, v3}, Lcom/mediatek/widget/ChartView;->setClipChildren(Z)V

    .line 75
    return-void
.end method


# virtual methods
.method init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V
    .locals 1
    .parameter "horiz"
    .parameter "vert"

    .prologue
    .line 78
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/mediatek/widget/ChartView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    .line 79
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/mediatek/widget/ChartView;->mVert:Lcom/android/settings/widget/ChartAxis;

    .line 80
    return-void
.end method

.method protected layoutSweep(Lcom/mediatek/widget/ChartSweepView;)V
    .locals 6
    .parameter "sweep"

    .prologue
    .line 134
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/mediatek/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 135
    .local v1, parentRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 137
    .local v0, childRect:Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v1, v0}, Lcom/mediatek/widget/ChartView;->layoutSweep(Lcom/mediatek/widget/ChartSweepView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 138
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/mediatek/widget/ChartSweepView;->layout(IIII)V

    .line 139
    return-void
.end method

.method protected layoutSweep(Lcom/mediatek/widget/ChartSweepView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "sweep"
    .parameter "parentRect"
    .parameter "childRect"

    .prologue
    const/16 v4, 0x33

    .line 142
    invoke-virtual {p1}, Lcom/mediatek/widget/ChartSweepView;->getMargins()Landroid/graphics/Rect;

    move-result-object v0

    .line 145
    .local v0, sweepMargins:Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/mediatek/widget/ChartSweepView;->getFollowAxis()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 146
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/mediatek/widget/ChartSweepView;->getPoint()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 147
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 148
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 149
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 150
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Lcom/mediatek/widget/ChartSweepView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v4, v1, v2, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 161
    :goto_0
    return-void

    .line 154
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/mediatek/widget/ChartSweepView;->getPoint()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 155
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 156
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 157
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 158
    invoke-virtual {p1}, Lcom/mediatek/widget/ChartSweepView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v4, v1, v2, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 102
    iget-object v7, p0, Lcom/mediatek/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/mediatek/widget/ChartView;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/mediatek/widget/ChartView;->getPaddingTop()I

    move-result v9

    sub-int v10, p4, p2

    invoke-virtual {p0}, Lcom/mediatek/widget/ChartView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    sub-int v11, p5, p3

    invoke-virtual {p0}, Lcom/mediatek/widget/ChartView;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 104
    iget-object v7, p0, Lcom/mediatek/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 105
    .local v6, width:I
    iget-object v7, p0, Lcom/mediatek/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 108
    .local v2, height:I
    iget-object v7, p0, Lcom/mediatek/widget/ChartView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    int-to-float v8, v6

    invoke-interface {v7, v8}, Lcom/android/settings/widget/ChartAxis;->setSize(F)Z

    .line 109
    iget-object v7, p0, Lcom/mediatek/widget/ChartView;->mVert:Lcom/android/settings/widget/ChartAxis;

    int-to-float v8, v2

    invoke-interface {v7, v8}, Lcom/android/settings/widget/ChartAxis;->setSize(F)Z

    .line 111
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 112
    .local v5, parentRect:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 114
    .local v1, childRect:Landroid/graphics/Rect;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 115
    invoke-virtual {p0, v3}, Lcom/mediatek/widget/ChartView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 118
    .local v4, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/mediatek/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 120
    instance-of v7, v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;

    if-nez v7, :cond_0

    instance-of v7, v0, Lcom/mediatek/widget/ChartBandwidthGridView;

    if-eqz v7, :cond_2

    .line 123
    :cond_0
    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {v7, v6, v2, v5, v1}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 124
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 114
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_2
    instance-of v7, v0, Lcom/mediatek/widget/ChartSweepView;

    if-eqz v7, :cond_1

    move-object v7, v0

    .line 127
    check-cast v7, Lcom/mediatek/widget/ChartSweepView;

    invoke-virtual {p0, v7, v5, v1}, Lcom/mediatek/widget/ChartView;->layoutSweep(Lcom/mediatek/widget/ChartSweepView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 128
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 131
    .end local v0           #child:Landroid/view/View;
    .end local v4           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 92
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartView;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/mediatek/widget/ChartView;->mOptimalWidth:I

    sub-int v0, v2, v3

    .line 93
    .local v0, slack:I
    iget v2, p0, Lcom/mediatek/widget/ChartView;->mOptimalWidth:I

    if-lez v2, :cond_0

    if-lez v0, :cond_0

    .line 94
    iget v2, p0, Lcom/mediatek/widget/ChartView;->mOptimalWidth:I

    int-to-float v2, v2

    int-to-float v3, v0

    iget v4, p0, Lcom/mediatek/widget/ChartView;->mOptimalWidthWeight:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 95
    .local v1, targetWidth:I
    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 96
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 98
    .end local v1           #targetWidth:I
    :cond_0
    return-void
.end method

.method public setOptimalWidth(IF)V
    .locals 0
    .parameter "optimalWidth"
    .parameter "optimalWidthWeight"

    .prologue
    .line 83
    iput p1, p0, Lcom/mediatek/widget/ChartView;->mOptimalWidth:I

    .line 84
    iput p2, p0, Lcom/mediatek/widget/ChartView;->mOptimalWidthWeight:F

    .line 85
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartView;->requestLayout()V

    .line 86
    return-void
.end method
