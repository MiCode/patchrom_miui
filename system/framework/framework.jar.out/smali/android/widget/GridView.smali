.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "GridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 110
    sget v0, Lcom/android/internal/R$attr;->gridViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    iput v8, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 90
    iput v7, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 92
    iput v7, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 93
    iput v9, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 98
    iput-object v6, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 99
    iput-object v6, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 101
    const v6, 0x800003

    iput v6, p0, Landroid/widget/GridView;->mGravity:I

    .line 103
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 116
    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 119
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 121
    .local v2, "hSpacing":I
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 123
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 125
    .local v5, "vSpacing":I
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 127
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 128
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 129
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 132
    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 133
    .local v1, "columnWidth":I
    if-lez v1, :cond_1

    .line 134
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 137
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 138
    .local v4, "numColumns":I
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 140
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 141
    if-ltz v3, :cond_2

    .line 142
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setGravity(I)V

    .line 145
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .prologue
    .line 782
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_0

    .line 786
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    .line 790
    .local v1, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    .line 791
    .local v2, "spaceBelow":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 794
    .local v0, "offset":I
    neg-int v3, v0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 796
    .end local v0    # "offset":I
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 4
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .prologue
    .line 810
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_0

    .line 813
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    .line 817
    .local v1, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    .line 818
    .local v2, "spaceBelow":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 821
    .local v0, "offset":I
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 823
    .end local v0    # "offset":I
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 2149
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 2151
    .local v1, "childCount":I
    if-lez v1, :cond_2

    .line 2155
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 2158
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2159
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 2160
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 2163
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 2165
    :cond_0
    if-gez v2, :cond_1

    .line 2167
    const/4 v2, 0x0

    .line 2186
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 2187
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 2190
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    .line 2171
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2172
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 2174
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 2177
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 2180
    :cond_4
    if-lez v2, :cond_1

    .line 2182
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1540
    iget-object v4, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_0

    .line 1667
    :goto_0
    return v2

    .line 1544
    :cond_0
    iget-boolean v4, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 1545
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1548
    :cond_1
    const/4 v1, 0x0

    .line 1549
    .local v1, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1551
    .local v0, "action":I
    if-eq v0, v3, :cond_2

    .line 1552
    sparse-switch p1, :sswitch_data_0

    .line 1651
    :cond_2
    :goto_1
    if-eqz v1, :cond_25

    move v2, v3

    .line 1652
    goto :goto_0

    .line 1554
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1555
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v3

    :goto_2
    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 1560
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1561
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x42

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v1, v3

    :goto_3
    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_3

    .line 1566
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1567
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move v1, v3

    :goto_4
    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_4

    .line 1568
    :cond_9
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1569
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    move v1, v3

    :goto_5
    goto :goto_1

    :cond_b
    move v1, v2

    goto :goto_5

    .line 1574
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1575
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    move v1, v3

    :goto_6
    goto :goto_1

    :cond_d
    move v1, v2

    goto :goto_6

    .line 1576
    :cond_e
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1577
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    move v1, v3

    :goto_7
    goto/16 :goto_1

    :cond_10
    move v1, v2

    goto :goto_7

    .line 1583
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1584
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v1

    .line 1585
    if-nez v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 1587
    invoke-virtual {p0}, Landroid/widget/GridView;->keyPressed()V

    .line 1588
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1594
    :sswitch_5
    iget-object v4, p0, Landroid/widget/GridView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_11

    iget-object v4, p0, Landroid/widget/GridView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1595
    :cond_11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1596
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    move v1, v3

    :goto_8
    goto/16 :goto_1

    :cond_13
    move v1, v2

    goto :goto_8

    .line 1597
    :cond_14
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1598
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_15
    move v1, v3

    :goto_9
    goto/16 :goto_1

    :cond_16
    move v1, v2

    goto :goto_9

    .line 1604
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1605
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_17
    move v1, v3

    :goto_a
    goto/16 :goto_1

    :cond_18
    move v1, v2

    goto :goto_a

    .line 1606
    :cond_19
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1607
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    :cond_1a
    move v1, v3

    :goto_b
    goto/16 :goto_1

    :cond_1b
    move v1, v2

    goto :goto_b

    .line 1612
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1613
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_1c
    move v1, v3

    :goto_c
    goto/16 :goto_1

    :cond_1d
    move v1, v2

    goto :goto_c

    .line 1614
    :cond_1e
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1615
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_1f
    move v1, v3

    :goto_d
    goto/16 :goto_1

    :cond_20
    move v1, v2

    goto :goto_d

    .line 1620
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1621
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_21
    move v1, v3

    :goto_e
    goto/16 :goto_1

    :cond_22
    move v1, v2

    goto :goto_e

    .line 1626
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1627
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_23
    move v1, v3

    :goto_f
    goto/16 :goto_1

    :cond_24
    move v1, v2

    goto :goto_f

    .line 1655
    :cond_25
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_26

    move v2, v3

    .line 1656
    goto/16 :goto_0

    .line 1659
    :cond_26
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1661
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1663
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1665
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1552
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 1659
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .locals 9
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .prologue
    .line 594
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v6, v7, -0x1

    .line 595
    .local v6, "lastPosition":I
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_3

    if-lez p3, :cond_3

    .line 597
    add-int/lit8 v7, p3, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 600
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 602
    .local v4, "lastBottom":I
    iget v7, p0, Landroid/widget/GridView;->mBottom:I

    iget v8, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 606
    .local v1, "end":I
    sub-int v0, v1, v4

    .line 608
    .local v0, "bottomOffset":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 609
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 613
    .local v3, "firstTop":I
    if-lez v0, :cond_3

    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_3

    .line 614
    :cond_0
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 616
    iget-object v7, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 620
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 621
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-lez v7, :cond_3

    .line 624
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v8, :cond_2

    const/4 p1, 0x1

    .end local p1    # "numColumns":I
    :cond_2
    sub-int/2addr v7, p1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 627
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 631
    .end local v0    # "bottomOffset":I
    .end local v1    # "end":I
    .end local v2    # "firstChild":Landroid/view/View;
    .end local v3    # "firstTop":I
    .end local v4    # "lastBottom":I
    .end local v5    # "lastChild":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private correctTooLow(III)V
    .locals 10
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .prologue
    .line 634
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v8, :cond_3

    if-lez p3, :cond_3

    .line 636
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 639
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 642
    .local v2, "firstTop":I
    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 645
    .local v6, "start":I
    iget v8, p0, Landroid/widget/GridView;->mBottom:I

    iget v9, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 649
    .local v0, "end":I
    sub-int v7, v2, v6

    .line 650
    .local v7, "topOffset":I
    add-int/lit8 v8, p3, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 651
    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 652
    .local v3, "lastBottom":I
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v5, v8, -0x1

    .line 656
    .local v5, "lastPosition":I
    if-lez v7, :cond_3

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 657
    :cond_0
    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 659
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 663
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 664
    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_3

    .line 667
    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v8, :cond_2

    const/4 p1, 0x1

    .end local p1    # "numColumns":I
    :cond_2
    add-int v8, v5, p1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 670
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 674
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstTop":I
    .end local v3    # "lastBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastPosition":I
    .end local v6    # "start":I
    .end local v7    # "topOffset":I
    :cond_3
    return-void
.end method

.method private determineColumns(I)Z
    .locals 8
    .param p1, "availableSpace"    # I

    .prologue
    const/4 v7, 0x1

    .line 943
    iget v2, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 944
    .local v2, "requestedHorizontalSpacing":I
    iget v4, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 945
    .local v4, "stretchMode":I
    iget v1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 946
    .local v1, "requestedColumnWidth":I
    const/4 v0, 0x0

    .line 948
    .local v0, "didNotInitiallyFit":Z
    iget v5, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 949
    if-lez v1, :cond_2

    .line 951
    add-int v5, p1, v2

    add-int v6, v1, v2

    div-int/2addr v5, v6

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 962
    :goto_0
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    if-gtz v5, :cond_0

    .line 963
    iput v7, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 966
    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 974
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    mul-int/2addr v5, v1

    sub-int v5, p1, v5

    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v2

    sub-int v3, v5, v6

    .line 977
    .local v3, "spaceLeftOver":I
    if-gez v3, :cond_1

    .line 978
    const/4 v0, 0x1

    .line 981
    :cond_1
    packed-switch v4, :pswitch_data_1

    .line 1013
    .end local v3    # "spaceLeftOver":I
    :goto_1
    return v0

    .line 955
    :cond_2
    const/4 v5, 0x2

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    .line 959
    :cond_3
    iget v5, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    .line 969
    :pswitch_0
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 970
    iput v2, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 984
    .restart local v3    # "spaceLeftOver":I
    :pswitch_1
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v5, v3, v5

    add-int/2addr v5, v1

    iput v5, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 985
    iput v2, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 990
    :pswitch_2
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 991
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v5, v7, :cond_4

    .line 992
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v5, v5, -0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 995
    :cond_4
    add-int v5, v2, v3

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1001
    :pswitch_3
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1002
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v5, v7, :cond_5

    .line 1003
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v5, v5, 0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1006
    :cond_5
    add-int v5, v2, v3

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 966
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 981
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .prologue
    .line 279
    const/4 v1, 0x0

    .line 281
    .local v1, "selectedView":Landroid/view/View;
    iget v3, p0, Landroid/widget/GridView;->mBottom:I

    iget v4, p0, Landroid/widget/GridView;->mTop:I

    sub-int v0, v3, v4

    .line 282
    .local v0, "end":I
    iget v3, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    .line 283
    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    .line 286
    :cond_0
    :goto_0
    if-ge p2, v0, :cond_2

    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge p1, v3, :cond_2

    .line 287
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 288
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 289
    move-object v1, v2

    .line 294
    :cond_1
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    .line 296
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr p1, v3

    .line 297
    goto :goto_0

    .line 299
    .end local v2    # "temp":Landroid/view/View;
    :cond_2
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    .line 300
    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3
    .param p1, "lastPosition"    # I
    .param p2, "nextBottom"    # I

    .prologue
    .line 425
    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 426
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 428
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 429
    .local v0, "invertedPosition":I
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    .line 431
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 687
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 688
    .local v2, "fadingEdgeLength":I
    iget v9, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 689
    .local v9, "selectedPosition":I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 690
    .local v4, "numColumns":I
    iget v11, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 693
    .local v11, "verticalSpacing":I
    const/4 v6, -0x1

    .line 695
    .local v6, "rowEnd":I
    iget-boolean v12, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v12, :cond_0

    .line 696
    rem-int v12, v9, v4

    sub-int v7, v9, v12

    .line 707
    .local v7, "rowStart":I
    :goto_0
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v7}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v10

    .line 708
    .local v10, "topSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v2, v4, v7}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 711
    .local v1, "bottomSelectionPixel":I
    iget-boolean v12, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v12, :cond_1

    move v12, v6

    :goto_1
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v13}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 713
    .local v8, "sel":Landroid/view/View;
    iput v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 715
    iget-object v5, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 716
    .local v5, "referenceView":Landroid/view/View;
    invoke-direct {p0, v5, v10, v1}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 717
    invoke-direct {p0, v5, v10, v1}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 719
    iget-boolean v12, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v12, :cond_2

    .line 720
    sub-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 721
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 722
    add-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 730
    :goto_2
    return-object v8

    .line 698
    .end local v1    # "bottomSelectionPixel":I
    .end local v5    # "referenceView":Landroid/view/View;
    .end local v7    # "rowStart":I
    .end local v8    # "sel":Landroid/view/View;
    .end local v10    # "topSelectionPixel":I
    :cond_0
    iget v12, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v3, v12, v9

    .line 700
    .local v3, "invertedSelection":I
    iget v12, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v3, v4

    sub-int v13, v3, v13

    sub-int v6, v12, v13

    .line 701
    const/4 v12, 0x0

    sub-int v13, v6, v4

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7    # "rowStart":I
    goto :goto_0

    .end local v3    # "invertedSelection":I
    .restart local v1    # "bottomSelectionPixel":I
    .restart local v10    # "topSelectionPixel":I
    :cond_1
    move v12, v7

    .line 711
    goto :goto_1

    .line 724
    .restart local v5    # "referenceView":Landroid/view/View;
    .restart local v8    # "sel":Landroid/view/View;
    :cond_2
    add-int v12, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 725
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 726
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    goto :goto_2
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .param p1, "nextTop"    # I

    .prologue
    .line 415
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 416
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 417
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 418
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 420
    :cond_0
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 421
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 15
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .prologue
    .line 435
    invoke-virtual {p0}, Landroid/widget/GridView;->reconcileSelectedPosition()I

    move-result v10

    .line 436
    .local v10, "selectedPosition":I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 437
    .local v4, "numColumns":I
    iget v12, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 440
    .local v12, "verticalSpacing":I
    const/4 v7, -0x1

    .line 442
    .local v7, "rowEnd":I
    iget-boolean v13, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v13, :cond_0

    .line 443
    rem-int v13, v10, v4

    sub-int v8, v10, v13

    .line 451
    .local v8, "rowStart":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 452
    .local v2, "fadingEdgeLength":I
    move/from16 v0, p1

    invoke-direct {p0, v0, v2, v8}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v11

    .line 454
    .local v11, "topSelectionPixel":I
    iget-boolean v13, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v13, :cond_1

    move v13, v7

    :goto_1
    const/4 v14, 0x1

    invoke-direct {p0, v13, v11, v14}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v9

    .line 455
    .local v9, "sel":Landroid/view/View;
    iput v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 457
    iget-object v6, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 459
    .local v6, "referenceView":Landroid/view/View;
    iget-boolean v13, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v13, :cond_2

    .line 460
    add-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 461
    move/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/widget/GridView;->pinToBottom(I)V

    .line 462
    sub-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 463
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 475
    :goto_2
    return-object v9

    .line 445
    .end local v2    # "fadingEdgeLength":I
    .end local v6    # "referenceView":Landroid/view/View;
    .end local v8    # "rowStart":I
    .end local v9    # "sel":Landroid/view/View;
    .end local v11    # "topSelectionPixel":I
    :cond_0
    iget v13, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v3, v13, v10

    .line 447
    .local v3, "invertedSelection":I
    iget v13, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v3, v4

    sub-int v14, v3, v14

    sub-int v7, v13, v14

    .line 448
    const/4 v13, 0x0

    sub-int v14, v7, v4

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .restart local v8    # "rowStart":I
    goto :goto_0

    .end local v3    # "invertedSelection":I
    .restart local v2    # "fadingEdgeLength":I
    .restart local v11    # "topSelectionPixel":I
    :cond_1
    move v13, v8

    .line 454
    goto :goto_1

    .line 465
    .restart local v6    # "referenceView":Landroid/view/View;
    .restart local v9    # "sel":Landroid/view/View;
    :cond_2
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v4, v8}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 467
    .local v1, "bottomSelectionPixel":I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int v5, v1, v13

    .line 468
    .local v5, "offset":I
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 469
    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 470
    invoke-direct/range {p0 .. p1}, Landroid/widget/GridView;->pinToTop(I)V

    .line 471
    add-int v13, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 472
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto :goto_2
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 533
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 536
    .local v6, "numColumns":I
    const/4 v4, -0x1

    .line 538
    .local v4, "motionRowEnd":I
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_1

    .line 539
    rem-int v10, p1, v6

    sub-int v5, p1, v10

    .line 547
    .local v5, "motionRowStart":I
    :goto_0
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v10, :cond_2

    move v10, v4

    :goto_1
    const/4 v11, 0x1

    invoke-direct {p0, v10, p2, v11}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 550
    .local v8, "temp":Landroid/view/View;
    iput v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 552
    iget-object v7, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 554
    .local v7, "referenceView":Landroid/view/View;
    if-nez v7, :cond_3

    .line 555
    const/4 v8, 0x0

    .line 588
    .end local v8    # "temp":Landroid/view/View;
    :cond_0
    :goto_2
    return-object v8

    .line 541
    .end local v5    # "motionRowStart":I
    .end local v7    # "referenceView":Landroid/view/View;
    :cond_1
    iget v10, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v3, v10, p1

    .line 543
    .local v3, "invertedSelection":I
    iget v10, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    .line 544
    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5    # "motionRowStart":I
    goto :goto_0

    .end local v3    # "invertedSelection":I
    :cond_2
    move v10, v5

    .line 547
    goto :goto_1

    .line 558
    .restart local v7    # "referenceView":Landroid/view/View;
    .restart local v8    # "temp":Landroid/view/View;
    :cond_3
    iget v9, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 563
    .local v9, "verticalSpacing":I
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_5

    .line 564
    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 565
    .local v0, "above":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 566
    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 568
    .local v1, "below":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 569
    .local v2, "childCount":I
    if-lez v2, :cond_4

    .line 570
    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 583
    :cond_4
    :goto_3
    if-nez v8, :cond_0

    .line 585
    if-eqz v0, :cond_6

    move-object v8, v0

    .line 586
    goto :goto_2

    .line 573
    .end local v0    # "above":Landroid/view/View;
    .end local v1    # "below":Landroid/view/View;
    .end local v2    # "childCount":I
    :cond_5
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 574
    .restart local v1    # "below":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 575
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 577
    .restart local v0    # "above":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 578
    .restart local v2    # "childCount":I
    if-lez v2, :cond_4

    .line 579
    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooLow(III)V

    goto :goto_3

    :cond_6
    move-object v8, v1

    .line 588
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .prologue
    const/4 v5, 0x0

    .line 377
    const/4 v1, 0x0

    .line 379
    .local v1, "selectedView":Landroid/view/View;
    const/4 v0, 0x0

    .line 380
    .local v0, "end":I
    iget v3, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    .line 381
    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 384
    :cond_0
    :goto_0
    if-le p2, v0, :cond_2

    if-ltz p1, :cond_2

    .line 386
    invoke-direct {p0, p1, p2, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 387
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 388
    move-object v1, v2

    .line 391
    :cond_1
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    .line 393
    iput p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 395
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr p1, v3

    .line 396
    goto :goto_0

    .line 398
    .end local v2    # "temp":Landroid/view/View;
    :cond_2
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v3, :cond_3

    .line 399
    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 402
    :cond_3
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    .line 403
    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 3
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "numColumns"    # I
    .param p4, "rowStart"    # I

    .prologue
    .line 745
    move v0, p1

    .line 746
    .local v0, "bottomSelectionPixel":I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 747
    sub-int/2addr v0, p2

    .line 749
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "rowStart"    # I

    .prologue
    .line 762
    move v0, p1

    .line 763
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_0

    .line 764
    add-int/2addr v0, p2

    .line 766
    :cond_0
    return v0
.end method

.method private isCandidateSelection(II)Z
    .locals 8
    .param p1, "childIndex"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1898
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 1899
    .local v0, "count":I
    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    .line 1904
    .local v1, "invertedIndex":I
    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v6, :cond_0

    .line 1905
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    .line 1906
    .local v3, "rowStart":I
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1912
    .local v2, "rowEnd":I
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 1933
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1908
    .end local v2    # "rowEnd":I
    .end local v3    # "rowStart":I
    :cond_0
    add-int/lit8 v6, v0, -0x1

    iget v7, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    .line 1909
    .restart local v2    # "rowEnd":I
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3    # "rowStart":I
    goto :goto_0

    .line 1916
    :sswitch_0
    if-ne p1, v3, :cond_2

    .line 1931
    :cond_1
    :goto_1
    return v4

    :cond_2
    move v4, v5

    .line 1916
    goto :goto_1

    .line 1919
    :sswitch_1
    if-eqz v3, :cond_1

    move v4, v5

    goto :goto_1

    .line 1922
    :sswitch_2
    if-eq p1, v2, :cond_1

    move v4, v5

    goto :goto_1

    .line 1925
    :sswitch_3
    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    move v4, v5

    goto :goto_1

    .line 1928
    :sswitch_4
    if-ne p1, v3, :cond_3

    if-eqz v3, :cond_1

    :cond_3
    move v4, v5

    goto :goto_1

    .line 1931
    :sswitch_5
    if-ne p1, v2, :cond_4

    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    :cond_4
    move v4, v5

    goto :goto_1

    .line 1912
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z
    .param p6, "where"    # I

    .prologue
    .line 1332
    iget-boolean v0, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1334
    iget-object v0, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1335
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1338
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1350
    .end local v1    # "child":Landroid/view/View;
    .local v9, "child":Landroid/view/View;
    :goto_0
    return-object v9

    .line 1345
    .end local v9    # "child":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1348
    .restart local v1    # "child":Landroid/view/View;
    iget-object v0, p0, Landroid/widget/GridView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1350
    .end local v1    # "child":Landroid/view/View;
    .restart local v9    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 18
    .param p1, "startPos"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z

    .prologue
    .line 304
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/GridView;->mColumnWidth:I

    .line 305
    .local v9, "columnWidth":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 307
    .local v12, "horizontalSpacing":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v14

    .line 312
    .local v14, "isLayoutRtl":Z
    if-eqz v14, :cond_5

    .line 313
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    sub-int v3, v1, v9

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    move v1, v12

    :goto_0
    sub-int v5, v3, v1

    .line 320
    .local v5, "nextLeft":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v1, :cond_7

    .line 321
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mNumColumns:I

    add-int v1, v1, p1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/GridView;->mItemCount:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 332
    .local v15, "last":I
    :cond_0
    :goto_2
    const/16 v17, 0x0

    .line 334
    .local v17, "selectedView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v11

    .line 335
    .local v11, "hasFocus":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->touchModeDrawsInPressedState()Z

    move-result v13

    .line 336
    .local v13, "inClick":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v16, v0

    .line 338
    .local v16, "selectedPosition":I
    const/4 v8, 0x0

    .line 339
    .local v8, "child":Landroid/view/View;
    move/from16 v2, p1

    .local v2, "pos":I
    :goto_3
    if-ge v2, v15, :cond_c

    .line 341
    move/from16 v0, v16

    if-ne v2, v0, :cond_9

    const/4 v6, 0x1

    .line 344
    .local v6, "selected":Z
    :goto_4
    if-eqz p3, :cond_a

    const/4 v7, -0x1

    .local v7, "where":I
    :goto_5
    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    .line 345
    invoke-direct/range {v1 .. v7}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v8

    .line 347
    if-eqz v14, :cond_b

    const/4 v1, -0x1

    :goto_6
    mul-int/2addr v1, v9

    add-int/2addr v5, v1

    .line 348
    add-int/lit8 v1, v15, -0x1

    if-ge v2, v1, :cond_1

    .line 349
    add-int/2addr v5, v12

    .line 352
    :cond_1
    if-eqz v6, :cond_3

    if-nez v11, :cond_2

    if-eqz v13, :cond_3

    .line 353
    :cond_2
    move-object/from16 v17, v8

    .line 339
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 313
    .end local v2    # "pos":I
    .end local v5    # "nextLeft":I
    .end local v6    # "selected":Z
    .end local v7    # "where":I
    .end local v8    # "child":Landroid/view/View;
    .end local v11    # "hasFocus":Z
    .end local v13    # "inClick":Z
    .end local v15    # "last":I
    .end local v16    # "selectedPosition":I
    .end local v17    # "selectedView":Landroid/view/View;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 316
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_6

    move v1, v12

    :goto_7
    add-int v5, v3, v1

    .restart local v5    # "nextLeft":I
    goto :goto_1

    .end local v5    # "nextLeft":I
    :cond_6
    const/4 v1, 0x0

    goto :goto_7

    .line 323
    .restart local v5    # "nextLeft":I
    :cond_7
    add-int/lit8 v15, p1, 0x1

    .line 324
    .restart local v15    # "last":I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 326
    sub-int v1, v15, p1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/GridView;->mNumColumns:I

    if-ge v1, v3, :cond_0

    .line 327
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v3, v15, p1

    sub-int/2addr v1, v3

    add-int v3, v9, v12

    mul-int v10, v1, v3

    .line 328
    .local v10, "deltaLeft":I
    if-eqz v14, :cond_8

    const/4 v1, -0x1

    :goto_8
    mul-int/2addr v1, v10

    add-int/2addr v5, v1

    goto :goto_2

    :cond_8
    const/4 v1, 0x1

    goto :goto_8

    .line 341
    .end local v10    # "deltaLeft":I
    .restart local v2    # "pos":I
    .restart local v8    # "child":Landroid/view/View;
    .restart local v11    # "hasFocus":Z
    .restart local v13    # "inClick":Z
    .restart local v16    # "selectedPosition":I
    .restart local v17    # "selectedView":Landroid/view/View;
    :cond_9
    const/4 v6, 0x0

    goto :goto_4

    .line 344
    .restart local v6    # "selected":Z
    :cond_a
    sub-int v7, v2, p1

    goto :goto_5

    .line 347
    .restart local v7    # "where":I
    :cond_b
    const/4 v1, 0x1

    goto :goto_6

    .line 357
    .end local v6    # "selected":Z
    .end local v7    # "where":I
    :cond_c
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 359
    if-eqz v17, :cond_d

    .line 360
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 363
    :cond_d
    return-object v17
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 22
    .param p1, "delta"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 859
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 860
    .local v5, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v16, v0

    .line 861
    .local v16, "selectedPosition":I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/GridView;->mNumColumns:I

    .line 862
    .local v7, "numColumns":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v18, v0

    .line 866
    .local v18, "verticalSpacing":I
    const/4 v13, -0x1

    .line 868
    .local v13, "rowEnd":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 869
    sub-int v19, v16, p1

    sub-int v20, v16, p1

    rem-int v20, v20, v7

    sub-int v9, v19, v20

    .line 871
    .local v9, "oldRowStart":I
    rem-int v19, v16, v7

    sub-int v14, v16, v19

    .line 883
    .local v14, "rowStart":I
    :goto_0
    sub-int v12, v14, v9

    .line 885
    .local v12, "rowDelta":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v14}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v17

    .line 886
    .local v17, "topSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v7, v14}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v4

    .line 890
    .local v4, "bottomSelectionPixel":I
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/GridView;->mFirstPosition:I

    .line 895
    if-lez v12, :cond_3

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    const/4 v8, 0x0

    .line 903
    .local v8, "oldBottom":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move/from16 v19, v13

    :goto_2
    add-int v20, v8, v18

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 904
    .local v15, "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 906
    .local v11, "referenceView":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 929
    .end local v8    # "oldBottom":I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 930
    sub-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 931
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 932
    add-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 939
    :goto_4
    return-object v15

    .line 873
    .end local v4    # "bottomSelectionPixel":I
    .end local v9    # "oldRowStart":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v12    # "rowDelta":I
    .end local v14    # "rowStart":I
    .end local v15    # "sel":Landroid/view/View;
    .end local v17    # "topSelectionPixel":I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v6, v19, v16

    .line 875
    .local v6, "invertedSelection":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v13, v19, v20

    .line 876
    const/16 v19, 0x0

    sub-int v20, v13, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 878
    .restart local v14    # "rowStart":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v20, v16, p1

    sub-int v6, v19, v20

    .line 879
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v9, v19, v20

    .line 880
    .restart local v9    # "oldRowStart":I
    const/16 v19, 0x0

    sub-int v20, v9, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_0

    .line 900
    .end local v6    # "invertedSelection":I
    .restart local v4    # "bottomSelectionPixel":I
    .restart local v12    # "rowDelta":I
    .restart local v17    # "topSelectionPixel":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v8

    goto/16 :goto_1

    .restart local v8    # "oldBottom":I
    :cond_2
    move/from16 v19, v14

    .line 903
    goto/16 :goto_2

    .line 907
    .end local v8    # "oldBottom":I
    :cond_3
    if-gez v12, :cond_6

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    const/4 v10, 0x0

    .line 914
    .local v10, "oldTop":I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move/from16 v19, v13

    :goto_6
    sub-int v20, v10, v18

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 915
    .restart local v15    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 917
    .restart local v11    # "referenceView":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_3

    .line 911
    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v15    # "sel":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_5

    .restart local v10    # "oldTop":I
    :cond_5
    move/from16 v19, v14

    .line 914
    goto :goto_6

    .line 922
    .end local v10    # "oldTop":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    const/4 v10, 0x0

    .line 925
    .restart local v10    # "oldTop":I
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move/from16 v19, v13

    :goto_8
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v10, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 926
    .restart local v15    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .restart local v11    # "referenceView":Landroid/view/View;
    goto/16 :goto_3

    .line 922
    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v15    # "sel":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_7

    .restart local v10    # "oldTop":I
    :cond_8
    move/from16 v19, v14

    .line 925
    goto :goto_8

    .line 934
    .end local v10    # "oldTop":I
    .restart local v11    # "referenceView":Landroid/view/View;
    .restart local v15    # "sel":Landroid/view/View;
    :cond_9
    add-int v19, v13, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 935
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 936
    add-int/lit8 v19, v14, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_4
.end method

.method private pinToBottom(I)V
    .locals 5
    .param p1, "childrenBottom"    # I

    .prologue
    .line 489
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 490
    .local v1, "count":I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    if-ne v3, v4, :cond_0

    .line 491
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 492
    .local v0, "bottom":I
    sub-int v2, p1, v0

    .line 493
    .local v2, "offset":I
    if-lez v2, :cond_0

    .line 494
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 497
    .end local v0    # "bottom":I
    .end local v2    # "offset":I
    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 3
    .param p1, "childrenTop"    # I

    .prologue
    .line 479
    iget v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v2, :cond_0

    .line 480
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 481
    .local v1, "top":I
    sub-int v0, p1, v1

    .line 482
    .local v0, "offset":I
    if-gez v0, :cond_0

    .line 483
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 486
    .end local v0    # "offset":I
    .end local v1    # "top":I
    :cond_0
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 25
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flow"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z
    .param p8, "where"    # I

    .prologue
    .line 1371
    const-wide/16 v22, 0x8

    const-string/jumbo v24, "setupGridItem"

    invoke-static/range {v22 .. v24}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1373
    if-eqz p6, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v22

    if-eqz v22, :cond_7

    const/4 v14, 0x1

    .line 1374
    .local v14, "isSelected":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v22

    move/from16 v0, v22

    if-eq v14, v0, :cond_8

    const/16 v20, 0x1

    .line 1375
    .local v20, "updateChildSelected":Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTouchMode:I

    move/from16 v16, v0

    .line 1376
    .local v16, "mode":I
    if-lez v16, :cond_9

    const/16 v22, 0x3

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-ne v0, v1, :cond_9

    const/4 v13, 0x1

    .line 1378
    .local v13, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v22

    move/from16 v0, v22

    if-eq v13, v0, :cond_a

    const/16 v19, 0x1

    .line 1380
    .local v19, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v20, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v22

    if-eqz v22, :cond_b

    :cond_0
    const/16 v17, 0x1

    .line 1384
    .local v17, "needToMeasure":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/AbsListView$LayoutParams;

    .line 1385
    .local v18, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v18, :cond_1

    .line 1386
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    .end local v18    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v18, Landroid/widget/AbsListView$LayoutParams;

    .line 1388
    .restart local v18    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1390
    if-eqz p7, :cond_c

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    .line 1391
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/GridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1397
    :goto_5
    if-eqz v20, :cond_2

    .line 1398
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setSelected(Z)V

    .line 1399
    if-eqz v14, :cond_2

    .line 1400
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->requestFocus()Z

    .line 1404
    :cond_2
    if-eqz v19, :cond_3

    .line 1405
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPressed(Z)V

    .line 1408
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mChoiceMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 1409
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    move-object/from16 v22, p1

    .line 1410
    check-cast v22, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    invoke-interface/range {v22 .. v23}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1417
    :cond_4
    :goto_6
    if-eqz v17, :cond_e

    .line 1418
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 1421
    .local v7, "childHeightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 1423
    .local v11, "childWidthSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    .line 1428
    .end local v7    # "childHeightSpec":I
    .end local v11    # "childWidthSpec":I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 1429
    .local v21, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1432
    .local v12, "h":I
    if-eqz p4, :cond_f

    move/from16 v10, p3

    .line 1434
    .local v10, "childTop":I
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getLayoutDirection()I

    move-result v15

    .line 1435
    .local v15, "layoutDirection":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mGravity:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v0, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    .line 1436
    .local v5, "absoluteGravity":I
    and-int/lit8 v22, v5, 0x7

    packed-switch v22, :pswitch_data_0

    .line 1447
    :pswitch_0
    move/from16 v8, p5

    .line 1451
    .local v8, "childLeft":I
    :goto_9
    if-eqz v17, :cond_10

    .line 1452
    add-int v9, v8, v21

    .line 1453
    .local v9, "childRight":I
    add-int v6, v10, v12

    .line 1454
    .local v6, "childBottom":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10, v9, v6}, Landroid/view/View;->layout(IIII)V

    .line 1460
    .end local v6    # "childBottom":I
    .end local v9    # "childRight":I
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mCachingStarted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1461
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1464
    :cond_5
    if-eqz p7, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-eq v0, v1, :cond_6

    .line 1466
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1469
    :cond_6
    const-wide/16 v22, 0x8

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 1470
    return-void

    .line 1373
    .end local v5    # "absoluteGravity":I
    .end local v8    # "childLeft":I
    .end local v10    # "childTop":I
    .end local v12    # "h":I
    .end local v13    # "isPressed":Z
    .end local v14    # "isSelected":Z
    .end local v15    # "layoutDirection":I
    .end local v16    # "mode":I
    .end local v17    # "needToMeasure":Z
    .end local v18    # "p":Landroid/widget/AbsListView$LayoutParams;
    .end local v19    # "updateChildPressed":Z
    .end local v20    # "updateChildSelected":Z
    .end local v21    # "w":I
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1374
    .restart local v14    # "isSelected":Z
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 1376
    .restart local v16    # "mode":I
    .restart local v20    # "updateChildSelected":Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1378
    .restart local v13    # "isPressed":Z
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1380
    .restart local v19    # "updateChildPressed":Z
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 1393
    .restart local v17    # "needToMeasure":Z
    .restart local v18    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_c
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1394
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    .line 1411
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v22, v0

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_6

    .line 1425
    :cond_e
    invoke-virtual/range {p0 .. p1}, Landroid/widget/GridView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_7

    .line 1432
    .restart local v12    # "h":I
    .restart local v21    # "w":I
    :cond_f
    sub-int v10, p3, v12

    goto/16 :goto_8

    .line 1438
    .restart local v5    # "absoluteGravity":I
    .restart local v10    # "childTop":I
    .restart local v15    # "layoutDirection":I
    :pswitch_1
    move/from16 v8, p5

    .line 1439
    .restart local v8    # "childLeft":I
    goto/16 :goto_9

    .line 1441
    .end local v8    # "childLeft":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v22, v0

    sub-int v22, v22, v21

    div-int/lit8 v22, v22, 0x2

    add-int v8, p5, v22

    .line 1442
    .restart local v8    # "childLeft":I
    goto/16 :goto_9

    .line 1444
    .end local v8    # "childLeft":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v22, v0

    add-int v22, v22, p5

    sub-int v8, v22, v21

    .line 1445
    .restart local v8    # "childLeft":I
    goto/16 :goto_9

    .line 1456
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    sub-int v22, v8, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1457
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v22, v10, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_a

    .line 1436
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method arrowScroll(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x6

    .line 1733
    iget v4, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 1734
    .local v4, "selectedPosition":I
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1739
    .local v3, "numColumns":I
    const/4 v2, 0x0

    .line 1741
    .local v2, "moved":Z
    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v6, :cond_3

    .line 1742
    div-int v6, v4, v3

    mul-int v5, v6, v3

    .line 1743
    .local v5, "startOfRowPos":I
    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1750
    .local v0, "endOfRowPos":I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 1781
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 1782
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 1783
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1786
    :cond_1
    if-eqz v2, :cond_2

    .line 1787
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1790
    :cond_2
    return v2

    .line 1745
    .end local v0    # "endOfRowPos":I
    .end local v5    # "startOfRowPos":I
    :cond_3
    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v1, v6, v4

    .line 1746
    .local v1, "invertedSelection":I
    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    .line 1747
    .restart local v0    # "endOfRowPos":I
    sub-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5    # "startOfRowPos":I
    goto :goto_0

    .line 1752
    .end local v1    # "invertedSelection":I
    :sswitch_0
    if-lez v5, :cond_0

    .line 1753
    iput v8, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1754
    sub-int v6, v4, v3

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1755
    const/4 v2, 0x1

    goto :goto_1

    .line 1759
    :sswitch_1
    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 1760
    iput v8, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1761
    add-int v6, v4, v3

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1762
    const/4 v2, 0x1

    goto :goto_1

    .line 1766
    :sswitch_2
    if-le v4, v5, :cond_0

    .line 1767
    iput v8, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1768
    add-int/lit8 v6, v4, -0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1769
    const/4 v2, 0x1

    goto :goto_1

    .line 1773
    :sswitch_3
    if-ge v4, v0, :cond_0

    .line 1774
    iput v8, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1775
    add-int/lit8 v6, v4, 0x1

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1776
    const/4 v2, 0x1

    goto :goto_1

    .line 1750
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    .prologue
    .line 1107
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 1110
    .local v0, "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 1111
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0    # "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 1112
    .restart local v0    # "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 1115
    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 1116
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 1117
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1118
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1120
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1121
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1122
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1129
    :goto_0
    return-void

    .line 1124
    :cond_1
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    .line 1126
    .local v1, "invertedIndex":I
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1127
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 2194
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 2195
    .local v1, "count":I
    if-lez v1, :cond_2

    .line 2196
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2197
    .local v4, "numColumns":I
    add-int v9, v1, v4

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v4

    .line 2199
    .local v5, "rowCount":I
    mul-int/lit8 v2, v5, 0x64

    .line 2201
    .local v2, "extent":I
    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2202
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 2203
    .local v6, "top":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2204
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 2205
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 2208
    :cond_0
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2209
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2210
    .local v0, "bottom":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2211
    if-lez v3, :cond_1

    .line 2212
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 2217
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "numColumns":I
    .end local v5    # "rowCount":I
    .end local v6    # "top":I
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v8

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2222
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-ltz v8, :cond_0

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 2223
    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2224
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2225
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2226
    .local v0, "height":I
    if-lez v0, :cond_0

    .line 2227
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2228
    .local v1, "numColumns":I
    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    div-int v3, v8, v1

    .line 2232
    .local v3, "rowCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->isStackFromBottom()Z

    move-result v8

    if-eqz v8, :cond_1

    mul-int v8, v3, v1

    iget v9, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int v2, v8, v9

    .line 2234
    .local v2, "oddItemsOnFirstRow":I
    :goto_0
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v8, v2

    div-int v6, v8, v1

    .line 2235
    .local v6, "whichRow":I
    mul-int/lit8 v8, v6, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v0

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v3

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2239
    .end local v0    # "height":I
    .end local v1    # "numColumns":I
    .end local v2    # "oddItemsOnFirstRow":I
    .end local v3    # "rowCount":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "whichRow":I
    :cond_0
    return v7

    .restart local v0    # "height":I
    .restart local v1    # "numColumns":I
    .restart local v3    # "rowCount":I
    .restart local v4    # "top":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_1
    move v2, v7

    .line 2232
    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 5

    .prologue
    .line 2245
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2246
    .local v0, "numColumns":I
    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    div-int v2, v3, v0

    .line 2247
    .local v2, "rowCount":I
    mul-int/lit8 v3, v2, 0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2248
    .local v1, "result":I
    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    if-eqz v3, :cond_0

    .line 2250
    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 2252
    :cond_0
    return v1
.end method

.method fillGap(Z)V
    .locals 9
    .param p1, "down"    # Z

    .prologue
    const/16 v8, 0x22

    .line 231
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 232
    .local v1, "numColumns":I
    iget v6, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 234
    .local v6, "verticalSpacing":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 236
    .local v0, "count":I
    if-eqz p1, :cond_3

    .line 237
    const/4 v3, 0x0

    .line 238
    .local v3, "paddingTop":I
    iget v7, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_0

    .line 239
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingTop()I

    move-result v3

    .line 241
    :cond_0
    if-lez v0, :cond_2

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v5, v7, v6

    .line 243
    .local v5, "startOffset":I
    :goto_0
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int v4, v7, v0

    .line 244
    .local v4, "position":I
    iget-boolean v7, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v7, :cond_1

    .line 245
    add-int/lit8 v7, v1, -0x1

    add-int/2addr v4, v7

    .line 247
    :cond_1
    invoke-direct {p0, v4, v5}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 248
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 265
    .end local v3    # "paddingTop":I
    :goto_1
    return-void

    .end local v4    # "position":I
    .end local v5    # "startOffset":I
    .restart local v3    # "paddingTop":I
    :cond_2
    move v5, v3

    .line 241
    goto :goto_0

    .line 250
    .end local v3    # "paddingTop":I
    :cond_3
    const/4 v2, 0x0

    .line 251
    .local v2, "paddingBottom":I
    iget v7, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_4

    .line 252
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingBottom()I

    move-result v2

    .line 254
    :cond_4
    if-lez v0, :cond_5

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v5, v7, v6

    .line 256
    .restart local v5    # "startOffset":I
    :goto_2
    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 257
    .restart local v4    # "position":I
    iget-boolean v7, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v7, :cond_6

    .line 258
    sub-int/2addr v4, v1

    .line 262
    :goto_3
    invoke-direct {p0, v4, v5}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 263
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Landroid/widget/GridView;->correctTooLow(III)V

    goto :goto_1

    .line 254
    .end local v4    # "position":I
    .end local v5    # "startOffset":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v7

    sub-int v5, v7, v2

    goto :goto_2

    .line 260
    .restart local v4    # "position":I
    .restart local v5    # "startOffset":I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_3
.end method

.method findMotionRow(I)I
    .locals 4
    .param p1, "y"    # I

    .prologue
    .line 501
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 502
    .local v0, "childCount":I
    if-lez v0, :cond_3

    .line 504
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 505
    .local v2, "numColumns":I
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 506
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 507
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 508
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 519
    .end local v1    # "i":I
    .end local v2    # "numColumns":I
    :goto_1
    return v3

    .line 506
    .restart local v1    # "i":I
    .restart local v2    # "numColumns":I
    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    .line 512
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_3

    .line 513
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 514
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 512
    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    .line 519
    .end local v1    # "i":I
    .end local v2    # "numColumns":I
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x2

    .line 1704
    const/4 v0, 0x0

    .line 1705
    .local v0, "moved":Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_2

    .line 1706
    iput v2, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1707
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1708
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1709
    const/4 v0, 0x1

    .line 1717
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1718
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1721
    :cond_1
    return v0

    .line 1710
    :cond_2
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    .line 1711
    iput v2, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1712
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1713
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1714
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getColumnWidth()I
    .locals 1

    .prologue
    .line 2097
    iget v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 1962
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    .prologue
    .line 1997
    iget v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return v0
.end method

.method public getNumColumns()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2141
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    return v0
.end method

.method public getRequestedColumnWidth()I
    .locals 1

    .prologue
    .line 2114
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    return v0
.end method

.method public getRequestedHorizontalSpacing()I
    .locals 1

    .prologue
    .line 2017
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method public getStretchMode()I
    .locals 1

    .prologue
    .line 2067
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    .prologue
    .line 2048
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    return v0
.end method

.method protected layoutChildren()V
    .locals 21

    .prologue
    .line 1133
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1134
    .local v3, "blockLayoutRequests":Z
    if-nez v3, :cond_0

    .line 1135
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1139
    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1141
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invalidate()V

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 1144
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    .line 1145
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    if-nez v3, :cond_1

    .line 1308
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1311
    :cond_1
    :goto_0
    return-void

    .line 1149
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 1150
    .local v7, "childrenTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mBottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 1152
    .local v6, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    .line 1154
    .local v5, "childCount":I
    const/4 v9, 0x0

    .line 1157
    .local v9, "delta":I
    const/16 v16, 0x0

    .line 1158
    .local v16, "oldSel":Landroid/view/View;
    const/4 v15, 0x0

    .line 1159
    .local v15, "oldFirst":Landroid/view/View;
    const/4 v14, 0x0

    .line 1162
    .local v14, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 1181
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1182
    .local v12, "index":I
    if-ltz v12, :cond_3

    if-ge v12, v5, :cond_3

    .line 1183
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1187
    :cond_3
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1190
    .end local v12    # "index":I
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/widget/GridView;->mDataChanged:Z

    .line 1191
    .local v8, "dataChanged":Z
    if-eqz v8, :cond_5

    .line 1192
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->handleDataChanged()V

    .line 1197
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 1198
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    .line 1199
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1307
    if-nez v3, :cond_1

    .line 1308
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 1164
    .end local v8    # "dataChanged":Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1165
    .restart local v12    # "index":I
    if-ltz v12, :cond_4

    if-ge v12, v5, :cond_4

    .line 1166
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    goto :goto_1

    .line 1175
    .end local v12    # "index":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_4

    .line 1176
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    goto :goto_1

    .line 1203
    .restart local v8    # "dataChanged":Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1207
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/GridView;->mFirstPosition:I

    .line 1208
    .local v10, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v17, v0

    .line 1210
    .local v17, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-eqz v8, :cond_7

    .line 1211
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v5, :cond_8

    .line 1212
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    add-int v20, v10, v11

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1211
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1215
    .end local v11    # "i":I
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v10}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1220
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->detachAllViewsFromParent()V

    .line 1221
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1223
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_1

    .line 1251
    if-nez v5, :cond_13

    .line 1252
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_10

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_f

    :cond_9
    const/16 v19, -0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1255
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1277
    .end local v7    # "childrenTop":I
    .local v18, "sel":Landroid/view/View;
    :goto_4
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1279
    if-eqz v18, :cond_18

    .line 1280
    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    .line 1281
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mSelectedTop:I

    .line 1290
    :cond_a
    :goto_5
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mLayoutMode:I

    .line 1291
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mDataChanged:Z

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    .line 1294
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1296
    :cond_b
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mNeedSync:Z

    .line 1297
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1299
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->updateScrollIndicators()V

    .line 1301
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    if-lez v19, :cond_c

    .line 1302
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 1305
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1307
    if-nez v3, :cond_1

    .line 1308
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1225
    .end local v18    # "sel":Landroid/view/View;
    .restart local v7    # "childrenTop":I
    :pswitch_3
    if-eqz v14, :cond_d

    .line 1226
    :try_start_3
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7, v6}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v18

    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1228
    .end local v18    # "sel":Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    move-result-object v18

    .line 1230
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1232
    .end local v18    # "sel":Landroid/view/View;
    :pswitch_4
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    .line 1233
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1234
    .restart local v18    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 1307
    .end local v5    # "childCount":I
    .end local v6    # "childrenBottom":I
    .end local v7    # "childrenTop":I
    .end local v8    # "dataChanged":Z
    .end local v9    # "delta":I
    .end local v10    # "firstPosition":I
    .end local v14    # "newSel":Landroid/view/View;
    .end local v15    # "oldFirst":Landroid/view/View;
    .end local v16    # "oldSel":Landroid/view/View;
    .end local v17    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v18    # "sel":Landroid/view/View;
    :catchall_0
    move-exception v19

    if-nez v3, :cond_e

    .line 1308
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_e
    throw v19

    .line 1237
    .restart local v5    # "childCount":I
    .restart local v6    # "childrenBottom":I
    .restart local v7    # "childrenTop":I
    .restart local v8    # "dataChanged":Z
    .restart local v9    # "delta":I
    .restart local v10    # "firstPosition":I
    .restart local v14    # "newSel":Landroid/view/View;
    .restart local v15    # "oldFirst":Landroid/view/View;
    .restart local v16    # "oldSel":Landroid/view/View;
    .restart local v17    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :pswitch_5
    :try_start_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v6}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v18

    .line 1238
    .restart local v18    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1241
    .end local v18    # "sel":Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1242
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1244
    .end local v18    # "sel":Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSyncPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1245
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1248
    .end local v18    # "sel":Landroid/view/View;
    :pswitch_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v6}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    move-result-object v18

    .line 1249
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1253
    .end local v18    # "sel":Landroid/view/View;
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1257
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    .line 1258
    .local v13, "last":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_12

    :cond_11
    const/16 v19, -0x1

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1260
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v18

    .line 1261
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v18    # "sel":Landroid/view/View;
    :cond_12
    move/from16 v19, v13

    .line 1258
    goto :goto_6

    .line 1263
    .end local v13    # "last":I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_15

    .line 1264
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v19, v0

    if-nez v16, :cond_14

    .end local v7    # "childrenTop":I
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v18    # "sel":Landroid/view/View;
    .restart local v7    # "childrenTop":I
    :cond_14
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_7

    .line 1266
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_17

    .line 1267
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v19, v0

    if-nez v15, :cond_16

    .end local v7    # "childrenTop":I
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v18    # "sel":Landroid/view/View;
    .restart local v7    # "childrenTop":I
    :cond_16
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_8

    .line 1270
    :cond_17
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1282
    .end local v7    # "childrenTop":I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTouchMode:I

    move/from16 v19, v0

    if-lez v19, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_19

    .line 1283
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1284
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    .line 1286
    .end local v4    # "child":Landroid/view/View;
    :cond_19
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mSelectedTop:I

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 1162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1223
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 3
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v1, -0x1

    .line 215
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 216
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p1, v1

    .line 223
    .end local p1    # "position":I
    :cond_1
    :goto_0
    return p1

    .line 220
    .restart local p1    # "position":I
    :cond_2
    if-ltz p1, :cond_3

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    if-lt p1, v2, :cond_1

    :cond_3
    move p1, v1

    .line 221
    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1853
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1855
    const/4 v1, -0x1

    .line 1856
    .local v1, "closestChildIndex":I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 1857
    iget v7, p0, Landroid/widget/GridView;->mScrollX:I

    iget v8, p0, Landroid/widget/GridView;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1861
    iget-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 1862
    .local v6, "otherRect":Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 1863
    .local v4, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 1864
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1866
    invoke-direct {p0, v3, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1864
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1870
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1871
    .local v5, "other":Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1872
    invoke-virtual {p0, v5, v6}, Landroid/widget/GridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1873
    invoke-static {p3, v6, p2}, Landroid/widget/GridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 1875
    .local v2, "distance":I
    if-ge v2, v4, :cond_0

    .line 1876
    move v4, v2

    .line 1877
    move v1, v3

    goto :goto_1

    .line 1882
    .end local v0    # "childCount":I
    .end local v2    # "distance":I
    .end local v3    # "i":I
    .end local v4    # "minDistance":I
    .end local v5    # "other":Landroid/view/View;
    .end local v6    # "otherRect":Landroid/graphics/Rect;
    :cond_2
    if-ltz v1, :cond_3

    .line 1883
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelection(I)V

    .line 1887
    :goto_2
    return-void

    .line 1885
    :cond_3
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2257
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2258
    const-class v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2259
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2263
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2264
    const-class v3, Landroid/widget/GridView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2266
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    .line 2267
    .local v1, "columnsCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v3

    div-int v2, v3, v1

    .line 2268
    .local v2, "rowsCount":I
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 2269
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 2270
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v9, 0x1

    .line 2275
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2277
    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v2

    .line 2278
    .local v2, "count":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    .line 2279
    .local v1, "columnsCount":I
    div-int v8, v2, v1

    .line 2283
    .local v8, "rowsCount":I
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_0

    .line 2284
    rem-int v0, p2, v1

    .line 2285
    .local v0, "column":I
    div-int v7, p2, v1

    .line 2293
    .local v7, "row":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsListView$LayoutParams;

    .line 2294
    .local v6, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v6, :cond_1

    iget v10, v6, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v11, -0x2

    if-eq v10, v11, :cond_1

    move v4, v9

    .line 2295
    .local v4, "isHeading":Z
    :goto_1
    invoke-static {v0, v9, v7, v9, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v5

    .line 2296
    .local v5, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 2297
    return-void

    .line 2287
    .end local v0    # "column":I
    .end local v4    # "isHeading":Z
    .end local v5    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .end local v6    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v7    # "row":I
    :cond_0
    add-int/lit8 v10, v2, -0x1

    sub-int v3, v10, p2

    .line 2289
    .local v3, "invertedIndex":I
    add-int/lit8 v10, v1, -0x1

    rem-int v11, v3, v1

    sub-int v0, v10, v11

    .line 2290
    .restart local v0    # "column":I
    add-int/lit8 v10, v8, -0x1

    div-int v11, v3, v1

    sub-int v7, v10, v11

    .restart local v7    # "row":I
    goto :goto_0

    .line 2294
    .end local v3    # "invertedIndex":I
    .restart local v6    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1526
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1531
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1536
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1019
    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1021
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 1022
    .local v17, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1023
    .local v11, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 1024
    .local v18, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1026
    .local v12, "heightSize":I
    if-nez v17, :cond_0

    .line 1027
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v19, v0

    if-lez v19, :cond_9

    .line 1028
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v18, v19, v20

    .line 1032
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalScrollbarWidth()I

    move-result v19

    add-int v18, v18, v19

    .line 1035
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v7, v19, v20

    .line 1036
    .local v7, "childWidth":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/GridView;->determineColumns(I)Z

    move-result v10

    .line 1038
    .local v10, "didNotInitiallyFit":Z
    const/4 v4, 0x0

    .line 1039
    .local v4, "childHeight":I
    const/4 v6, 0x0

    .line 1041
    .local v6, "childState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_a

    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mItemCount:I

    .line 1042
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/GridView;->mItemCount:I

    .line 1043
    .local v9, "count":I
    if-lez v9, :cond_2

    .line 1044
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mIsScrap:[Z

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 1046
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    .line 1047
    .local v16, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v16, :cond_1

    .line 1048
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .end local v16    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    .line 1049
    .restart local v16    # "p":Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1051
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1052
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1054
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v5

    .line 1056
    .local v5, "childHeightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v8

    .line 1058
    .local v8, "childWidthSpec":I
    invoke-virtual {v3, v8, v5}, Landroid/view/View;->measure(II)V

    .line 1060
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 1061
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Landroid/widget/GridView;->combineMeasuredStates(II)I

    move-result v6

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1068
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v16    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    if-nez v11, :cond_3

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v19, v19, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v20

    mul-int/lit8 v20, v20, 0x2

    add-int v12, v19, v20

    .line 1073
    :cond_3
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    if-ne v11, v0, :cond_6

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v15, v19, v20

    .line 1076
    .local v15, "ourSize":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/GridView;->mNumColumns:I

    .line 1077
    .local v14, "numColumns":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v9, :cond_5

    .line 1078
    add-int/2addr v15, v4

    .line 1079
    add-int v19, v13, v14

    move/from16 v0, v19

    if-ge v0, v9, :cond_4

    .line 1080
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v19, v0

    add-int v15, v15, v19

    .line 1082
    :cond_4
    if-lt v15, v12, :cond_b

    .line 1083
    move v15, v12

    .line 1087
    :cond_5
    move v12, v15

    .line 1090
    .end local v13    # "i":I
    .end local v14    # "numColumns":I
    .end local v15    # "ourSize":I
    :cond_6
    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    .line 1091
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v15, v19, v20

    .line 1094
    .restart local v15    # "ourSize":I
    move/from16 v0, v18

    if-gt v15, v0, :cond_7

    if-eqz v10, :cond_8

    .line 1095
    :cond_7
    const/high16 v19, 0x1000000

    or-int v18, v18, v19

    .line 1099
    .end local v15    # "ourSize":I
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    .line 1100
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mWidthMeasureSpec:I

    .line 1101
    return-void

    .line 1030
    .end local v4    # "childHeight":I
    .end local v6    # "childState":I
    .end local v7    # "childWidth":I
    .end local v9    # "count":I
    .end local v10    # "didNotInitiallyFit":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v18, v19, v20

    goto/16 :goto_0

    .line 1041
    .restart local v4    # "childHeight":I
    .restart local v6    # "childState":I
    .restart local v7    # "childWidth":I
    .restart local v10    # "didNotInitiallyFit":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/widget/ListAdapter;->getCount()I

    move-result v19

    goto/16 :goto_1

    .line 1077
    .restart local v9    # "count":I
    .restart local v13    # "i":I
    .restart local v14    # "numColumns":I
    .restart local v15    # "ourSize":I
    :cond_b
    add-int/2addr v13, v14

    goto/16 :goto_2
.end method

.method pageScroll(I)Z
    .locals 5
    .param p1, "direction"    # I

    .prologue
    const/4 v1, 0x0

    .line 1678
    const/4 v0, -0x1

    .line 1680
    .local v0, "nextPage":I
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2

    .line 1681
    iget v2, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1686
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    .line 1687
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1688
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1689
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1690
    const/4 v1, 0x1

    .line 1693
    :cond_1
    return v1

    .line 1682
    :cond_2
    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    .line 1683
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method sequenceScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    const/4 v12, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1798
    iget v5, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 1799
    .local v5, "selectedPosition":I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1800
    .local v4, "numColumns":I
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    .line 1804
    .local v0, "count":I
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_3

    .line 1805
    div-int v10, v5, v4

    mul-int v7, v10, v4

    .line 1806
    .local v7, "startOfRow":I
    add-int v10, v7, v4

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1813
    .local v1, "endOfRow":I
    :goto_0
    const/4 v3, 0x0

    .line 1814
    .local v3, "moved":Z
    const/4 v6, 0x0

    .line 1815
    .local v6, "showScroll":Z
    packed-switch p1, :pswitch_data_0

    .line 1839
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 1840
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 1841
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1844
    :cond_1
    if-eqz v6, :cond_2

    .line 1845
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1848
    :cond_2
    return v3

    .line 1808
    .end local v1    # "endOfRow":I
    .end local v3    # "moved":Z
    .end local v6    # "showScroll":Z
    .end local v7    # "startOfRow":I
    :cond_3
    add-int/lit8 v10, v0, -0x1

    sub-int v2, v10, v5

    .line 1809
    .local v2, "invertedSelection":I
    add-int/lit8 v10, v0, -0x1

    div-int v11, v2, v4

    mul-int/2addr v11, v4

    sub-int v1, v10, v11

    .line 1810
    .restart local v1    # "endOfRow":I
    sub-int v10, v1, v4

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7    # "startOfRow":I
    goto :goto_0

    .line 1817
    .end local v2    # "invertedSelection":I
    .restart local v3    # "moved":Z
    .restart local v6    # "showScroll":Z
    :pswitch_0
    add-int/lit8 v10, v0, -0x1

    if-ge v5, v10, :cond_0

    .line 1819
    iput v12, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1820
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1821
    const/4 v3, 0x1

    .line 1823
    if-ne v5, v1, :cond_4

    move v6, v8

    :goto_2
    goto :goto_1

    :cond_4
    move v6, v9

    goto :goto_2

    .line 1828
    :pswitch_1
    if-lez v5, :cond_0

    .line 1830
    iput v12, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1831
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1832
    const/4 v3, 0x1

    .line 1834
    if-ne v5, v7, :cond_5

    move v6, v8

    :goto_3
    goto :goto_1

    :cond_5
    move v6, v9

    goto :goto_3

    .line 1815
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 54
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 170
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->resetList()V

    .line 175
    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 176
    iput-object p1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 178
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/GridView;->mOldSelectedPosition:I

    .line 179
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroid/widget/GridView;->mOldSelectedRowId:J

    .line 182
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 184
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 185
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    iput v1, p0, Landroid/widget/GridView;->mOldItemCount:I

    .line 186
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/GridView;->mItemCount:I

    .line 187
    iput-boolean v4, p0, Landroid/widget/GridView;->mDataChanged:Z

    .line 188
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 190
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 191
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 193
    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 196
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    .line 197
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v3}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 201
    .local v0, "position":I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 202
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 203
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 210
    .end local v0    # "position":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 211
    return-void

    .line 199
    :cond_1
    invoke-virtual {p0, v3, v4}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_0

    .line 205
    .end local v0    # "position":I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 207
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setColumnWidth(I)V
    .locals 1
    .param p1, "columnWidth"    # I

    .prologue
    .line 2078
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    .line 2079
    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 2080
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2082
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 1948
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1949
    iput p1, p0, Landroid/widget/GridView;->mGravity:I

    .line 1950
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1952
    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 1975
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    .line 1976
    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 1977
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1979
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    .line 2125
    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    .line 2126
    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    .line 2127
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2129
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 161
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1482
    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1483
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1487
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1488
    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v0, :cond_0

    .line 1489
    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 1491
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 1492
    return-void

    .line 1485
    :cond_1
    iput p1, p0, Landroid/widget/GridView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 1501
    iget v4, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    .line 1503
    .local v4, "previousSelectedPosition":I
    iget-object v5, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v5, :cond_0

    .line 1504
    iget-object v5, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 1507
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1508
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1510
    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    sub-int v0, v5, v6

    .line 1512
    .local v0, "next":I
    :goto_0
    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v5, :cond_3

    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int v2, v5, v4

    .line 1515
    .local v2, "previous":I
    :goto_1
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, v0, v5

    .line 1516
    .local v1, "nextRow":I
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v2, v5

    .line 1518
    .local v3, "previousRow":I
    if-eq v1, v3, :cond_1

    .line 1519
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1522
    :cond_1
    return-void

    .line 1510
    .end local v0    # "next":I
    .end local v1    # "nextRow":I
    .end local v2    # "previous":I
    .end local v3    # "previousRow":I
    :cond_2
    iget v0, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    goto :goto_0

    .restart local v0    # "next":I
    :cond_3
    move v2, v4

    .line 1512
    goto :goto_1
.end method

.method public setStretchMode(I)V
    .locals 1
    .param p1, "stretchMode"    # I

    .prologue
    .line 2060
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    .line 2061
    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 2062
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2064
    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .param p1, "verticalSpacing"    # I

    .prologue
    .line 2032
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    .line 2033
    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 2034
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2036
    :cond_0
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 842
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 843
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 832
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 833
    return-void
.end method
