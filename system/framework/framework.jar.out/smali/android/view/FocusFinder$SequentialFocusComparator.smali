.class final Landroid/view/FocusFinder$SequentialFocusComparator;
.super Ljava/lang/Object;
.source "FocusFinder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/FocusFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SequentialFocusComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFirstRect:Landroid/graphics/Rect;

.field private mIsLayoutRtl:Z

.field private mRoot:Landroid/view/ViewGroup;

.field private final mSecondRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    .line 607
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/FocusFinder$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/FocusFinder$1;

    .prologue
    .line 605
    invoke-direct {p0}, Landroid/view/FocusFinder$SequentialFocusComparator;-><init>()V

    return-void
.end method

.method private getRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 656
    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 657
    iget-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 658
    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 5
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 624
    if-ne p1, p2, :cond_1

    move v1, v2

    .line 651
    :cond_0
    :goto_0
    return v1

    .line 628
    :cond_1
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v3}, Landroid/view/FocusFinder$SequentialFocusComparator;->getRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 629
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v3}, Landroid/view/FocusFinder$SequentialFocusComparator;->getRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 631
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_0

    .line 633
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-le v3, v4, :cond_2

    move v1, v0

    .line 634
    goto :goto_0

    .line 635
    :cond_2
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_4

    .line 636
    iget-boolean v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsLayoutRtl:Z

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 637
    :cond_4
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-le v3, v4, :cond_5

    .line 638
    iget-boolean v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsLayoutRtl:Z

    if-nez v2, :cond_0

    move v1, v0

    goto :goto_0

    .line 639
    :cond_5
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-lt v3, v4, :cond_0

    .line 641
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_6

    move v1, v0

    .line 642
    goto :goto_0

    .line 643
    :cond_6
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-ge v3, v4, :cond_8

    .line 644
    iget-boolean v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsLayoutRtl:Z

    if-eqz v2, :cond_7

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    .line 645
    :cond_8
    iget-object v3, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-le v3, v4, :cond_9

    .line 646
    iget-boolean v2, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsLayoutRtl:Z

    if-nez v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_9
    move v1, v2

    .line 651
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 605
    check-cast p1, Landroid/view/View;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/view/View;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/view/FocusFinder$SequentialFocusComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mRoot:Landroid/view/ViewGroup;

    .line 613
    return-void
.end method

.method public setIsLayoutRtl(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 620
    iput-boolean p1, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mIsLayoutRtl:Z

    .line 621
    return-void
.end method

.method public setRoot(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 616
    iput-object p1, p0, Landroid/view/FocusFinder$SequentialFocusComparator;->mRoot:Landroid/view/ViewGroup;

    .line 617
    return-void
.end method
