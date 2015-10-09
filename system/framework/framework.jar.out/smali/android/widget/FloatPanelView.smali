.class public Landroid/widget/FloatPanelView;
.super Landroid/widget/FrameLayout;
.source "FloatPanelView.java"


# static fields
.field public static final DOWN_ARROW:I = -0x1

.field public static final NO_ARROW:I = 0x0

.field public static final UP_ARROW:I = 0x1


# instance fields
.field private mContent:Landroid/view/ViewGroup;

.field private mDirection:I

.field private mDownArrow:Landroid/widget/ImageView;

.field private mLeftRoundCorner:I

.field private mOffset:I

.field private mRightRoundCorner:I

.field private mUpArrow:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0}, Landroid/widget/FloatPanelView;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Landroid/widget/FloatPanelView;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0}, Landroid/widget/FloatPanelView;->init()V

    .line 30
    return-void
.end method

.method private getImageView(I)Landroid/widget/ImageView;
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 48
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "i":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 43
    const v0, 0x11020076

    invoke-direct {p0, v0}, Landroid/widget/FloatPanelView;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    .line 44
    const v0, 0x11020075

    invoke-direct {p0, v0}, Landroid/widget/FloatPanelView;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    .line 45
    return-void
.end method


# virtual methods
.method public getContent()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 132
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 133
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    .line 134
    :cond_0
    const-string v5, "FloatPanelView"

    const-string v6, "couldn\'t find view"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "arrow":Landroid/widget/ImageView;
    iget v5, p0, Landroid/widget/FloatPanelView;->mDirection:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 142
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    .line 146
    :cond_2
    :goto_1
    if-eqz v0, :cond_8

    .line 147
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 148
    .local v2, "arrowWidth":I
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 149
    .local v1, "arrowHeight":I
    iget v5, p0, Landroid/widget/FloatPanelView;->mDirection:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    move v4, p3

    .line 150
    .local v4, "t":I
    :goto_2
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    sub-int v5, p4, p2

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    iget v6, p0, Landroid/widget/FloatPanelView;->mOffset:I

    add-int v3, v5, v6

    .line 152
    .local v3, "l":I
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    iget v6, p0, Landroid/widget/FloatPanelView;->mLeftRoundCorner:I

    add-int/2addr v5, v6

    if-ge v3, v5, :cond_6

    .line 153
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    iget v6, p0, Landroid/widget/FloatPanelView;->mLeftRoundCorner:I

    add-int v3, v5, v6

    .line 157
    :cond_3
    :goto_3
    add-int v5, v3, v2

    add-int v6, v4, v1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 158
    if-ne v4, p3, :cond_7

    move v4, v1

    .line 159
    :goto_4
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    iget-object v7, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v7

    iget-object v8, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_0

    .line 143
    .end local v1    # "arrowHeight":I
    .end local v2    # "arrowWidth":I
    .end local v3    # "l":I
    .end local v4    # "t":I
    :cond_4
    iget v5, p0, Landroid/widget/FloatPanelView;->mDirection:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 144
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    goto :goto_1

    .line 149
    .restart local v1    # "arrowHeight":I
    .restart local v2    # "arrowWidth":I
    :cond_5
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    add-int v4, p3, v5

    goto :goto_2

    .line 154
    .restart local v3    # "l":I
    .restart local v4    # "t":I
    :cond_6
    sub-int v5, p4, v2

    iget v6, p0, Landroid/widget/FloatPanelView;->mRightRoundCorner:I

    sub-int/2addr v5, v6

    if-le v3, v5, :cond_3

    .line 155
    sub-int v5, p4, v2

    iget v6, p0, Landroid/widget/FloatPanelView;->mRightRoundCorner:I

    sub-int v3, v5, v6

    goto :goto_3

    :cond_7
    move v4, p3

    .line 158
    goto :goto_4

    .line 163
    .end local v1    # "arrowHeight":I
    .end local v2    # "arrowWidth":I
    .end local v3    # "l":I
    .end local v4    # "t":I
    :cond_8
    iget-object v5, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    iget-object v7, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    iget-object v8, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLeft()I

    move-result v8

    iget-object v9, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getTop()I

    move-result v9

    iget-object v10, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/ViewGroup;->layout(IIII)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "arrow":Landroid/widget/ImageView;
    iget v2, p0, Landroid/widget/FloatPanelView;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 121
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    .line 125
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    const/4 v1, 0x0

    .line 126
    .local v1, "arrowHeight":I
    :goto_1
    iget-object v2, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 127
    iget-object v2, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/widget/FloatPanelView;->setMeasuredDimension(II)V

    .line 129
    return-void

    .line 122
    .end local v1    # "arrowHeight":I
    :cond_1
    iget v2, p0, Landroid/widget/FloatPanelView;->mDirection:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 123
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_1
.end method

.method public setArrow(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 75
    iget v0, p0, Landroid/widget/FloatPanelView;->mDirection:I

    if-eq p1, v0, :cond_0

    .line 76
    iput p1, p0, Landroid/widget/FloatPanelView;->mDirection:I

    .line 77
    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    .line 79
    :cond_0
    return-void
.end method

.method public setContent(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "v"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    if-eq p1, v0, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->removeAllViews()V

    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Landroid/widget/FloatPanelView;->addView(Landroid/view/View;)V

    .line 58
    iput-object p1, p0, Landroid/widget/FloatPanelView;->mContent:Landroid/view/ViewGroup;

    .line 59
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mUpArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FloatPanelView;->addView(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Landroid/widget/FloatPanelView;->mDownArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FloatPanelView;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    return-void
.end method

.method public setLeftCorner(I)V
    .locals 1
    .param p1, "corner"    # I

    .prologue
    .line 99
    iget v0, p0, Landroid/widget/FloatPanelView;->mLeftRoundCorner:I

    if-eq p1, v0, :cond_0

    .line 100
    iput p1, p0, Landroid/widget/FloatPanelView;->mLeftRoundCorner:I

    .line 101
    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    .line 103
    :cond_0
    return-void
.end method

.method public setOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 87
    iget v0, p0, Landroid/widget/FloatPanelView;->mOffset:I

    if-eq v0, p1, :cond_0

    .line 88
    iput p1, p0, Landroid/widget/FloatPanelView;->mOffset:I

    .line 89
    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    .line 91
    :cond_0
    return-void
.end method

.method public setRightCorner(I)V
    .locals 1
    .param p1, "corner"    # I

    .prologue
    .line 111
    iget v0, p0, Landroid/widget/FloatPanelView;->mRightRoundCorner:I

    if-eq p1, v0, :cond_0

    .line 112
    iput p1, p0, Landroid/widget/FloatPanelView;->mRightRoundCorner:I

    .line 113
    invoke-virtual {p0}, Landroid/widget/FloatPanelView;->requestLayout()V

    .line 115
    :cond_0
    return-void
.end method
