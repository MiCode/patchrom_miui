.class Landroid/widget/ListPopupWindow$DropDownListView;
.super Landroid/widget/ListView;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation


# static fields
.field private static final CLICK_ANIM_ALPHA:I = 0x80

.field private static final CLICK_ANIM_DURATION:J = 0x96L

.field private static final DRAWABLE_ALPHA:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClickAnimation:Landroid/animation/Animator;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mListSelectionHidden:Z

.field private mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1383
    new-instance v0, Landroid/widget/ListPopupWindow$DropDownListView$1;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow$DropDownListView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/ListPopupWindow$DropDownListView;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    .line 1446
    const/4 v0, 0x0

    sget v1, Lcom/android/internal/R$attr;->dropDownListViewStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1447
    iput-boolean p2, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    .line 1449
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow$DropDownListView;->setCacheColorHint(I)V

    .line 1450
    return-void
.end method

.method static synthetic access$502(Landroid/widget/ListPopupWindow$DropDownListView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/ListPopupWindow$DropDownListView;
    .param p1, "x1"    # Z

    .prologue
    .line 1375
    iput-boolean p1, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method

.method private clearPressedItem()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1539
    iput-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    .line 1540
    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow$DropDownListView;->setPressed(Z)V

    .line 1541
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->updateSelectorState()V

    .line 1543
    iget-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1544
    iget-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1545
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    .line 1547
    :cond_0
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1519
    invoke-virtual {p0, p2}, Landroid/widget/ListPopupWindow$DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 1520
    .local v4, "id":J
    iget-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/widget/ListPopupWindow$DropDownListView;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1522
    .local v6, "anim":Landroid/animation/Animator;
    const-wide/16 v0, 0x96

    invoke-virtual {v6, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1523
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1524
    new-instance v0, Landroid/widget/ListPopupWindow$DropDownListView$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListPopupWindow$DropDownListView$2;-><init>(Landroid/widget/ListPopupWindow$DropDownListView;Landroid/view/View;IJ)V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1530
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    .line 1532
    iget-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1533
    iget-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1535
    :cond_0
    iput-object v6, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    .line 1536
    return-void

    .line 1520
    nop

    :array_0
    .array-data 4
        0xff
        0x80
        0xff
    .end array-data
.end method

.method private setPressedItem(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 1550
    iput-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    .line 1554
    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow$DropDownListView;->setPressed(Z)V

    .line 1555
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->layoutChildren()V

    .line 1558
    invoke-virtual {p0, p2}, Landroid/widget/ListPopupWindow$DropDownListView;->setSelectedPositionInt(I)V

    .line 1559
    invoke-virtual {p0, p2, p1}, Landroid/widget/ListPopupWindow$DropDownListView;->positionSelector(ILandroid/view/View;)V

    .line 1563
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->refreshDrawableState()V

    .line 1565
    iget-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1566
    iget-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1567
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    .line 1569
    :cond_0
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .prologue
    .line 1627
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 1607
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 1617
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 1597
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    .line 1585
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    .line 1587
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1588
    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 1591
    :cond_0
    return-object v0
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .prologue
    const/4 v9, 0x1

    .line 1459
    const/4 v4, 0x1

    .line 1460
    .local v4, "handledEvent":Z
    const/4 v3, 0x0

    .line 1462
    .local v3, "clearPressedItem":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1463
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 1496
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    if-eqz v3, :cond_2

    .line 1497
    :cond_1
    invoke-direct {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->clearPressedItem()V

    .line 1501
    :cond_2
    if-eqz v4, :cond_7

    .line 1502
    iget-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-nez v8, :cond_3

    .line 1503
    new-instance v8, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-direct {v8, p0}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    .line 1505
    :cond_3
    iget-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    .line 1506
    iget-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v8, p0, p1}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1511
    :cond_4
    :goto_1
    return v4

    .line 1465
    :pswitch_0
    const/4 v4, 0x0

    .line 1466
    goto :goto_0

    .line 1468
    :pswitch_1
    const/4 v4, 0x0

    .line 1471
    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1472
    .local v1, "activeIndex":I
    if-gez v1, :cond_5

    .line 1473
    const/4 v4, 0x0

    .line 1474
    goto :goto_0

    .line 1477
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v6, v8

    .line 1478
    .local v6, "x":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 1479
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Landroid/widget/ListPopupWindow$DropDownListView;->pointToPosition(II)I

    move-result v5

    .line 1480
    .local v5, "position":I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_6

    .line 1481
    const/4 v3, 0x1

    .line 1482
    goto :goto_0

    .line 1485
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Landroid/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1486
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2, v5}, Landroid/widget/ListPopupWindow$DropDownListView;->setPressedItem(Landroid/view/View;I)V

    .line 1487
    const/4 v4, 0x1

    .line 1489
    if-ne v0, v9, :cond_0

    .line 1490
    invoke-direct {p0, v2, v5}, Landroid/widget/ListPopupWindow$DropDownListView;->clickPressedItem(Landroid/view/View;I)V

    goto :goto_0

    .line 1507
    .end local v1    # "activeIndex":I
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "position":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_7
    iget-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-eqz v8, :cond_4

    .line 1508
    iget-object v8, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    goto :goto_1

    .line 1463
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 1573
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
