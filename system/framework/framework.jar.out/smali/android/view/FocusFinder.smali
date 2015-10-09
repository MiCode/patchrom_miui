.class public Landroid/view/FocusFinder;
.super Ljava/lang/Object;
.source "FocusFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FocusFinder$SequentialFocusComparator;
    }
.end annotation


# static fields
.field private static final tlFocusFinder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/FocusFinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mBestCandidateRect:Landroid/graphics/Rect;

.field final mFocusedRect:Landroid/graphics/Rect;

.field final mOtherRect:Landroid/graphics/Rect;

.field final mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

.field private final mTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Landroid/view/FocusFinder$1;

    invoke-direct {v0}, Landroid/view/FocusFinder$1;-><init>()V

    sput-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Landroid/view/FocusFinder$SequentialFocusComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/FocusFinder$SequentialFocusComparator;-><init>(Landroid/view/FocusFinder$1;)V

    iput-object v0, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/FocusFinder$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/FocusFinder$1;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/view/FocusFinder;-><init>()V

    return-void
.end method

.method private findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 8
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "focusedRect"    # Landroid/graphics/Rect;
    .param p4, "direction"    # I

    .prologue
    .line 82
    const/4 v6, 0x0

    .line 83
    .local v6, "next":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 84
    invoke-direct {p0, p1, p2, p4}, Landroid/view/FocusFinder;->findNextUserSpecifiedFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 86
    :cond_0
    if-eqz v6, :cond_1

    move-object v7, v6

    .line 99
    .end local v6    # "next":Landroid/view/View;
    .local v7, "next":Landroid/view/View;
    :goto_0
    return-object v7

    .line 89
    .end local v7    # "next":Landroid/view/View;
    .restart local v6    # "next":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Landroid/view/FocusFinder;->mTempList:Ljava/util/ArrayList;

    .line 91
    .local v5, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :try_start_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 92
    invoke-virtual {p1, v5, p4}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;I)V

    .line 93
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 94
    invoke-direct/range {v0 .. v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;ILjava/util/ArrayList;)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 97
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move-object v7, v6

    .line 99
    .end local v6    # "next":Landroid/view/View;
    .restart local v7    # "next":Landroid/view/View;
    goto :goto_0

    .line 97
    .end local v7    # "next":Landroid/view/View;
    .restart local v6    # "next":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    throw v0
.end method

.method private findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;ILjava/util/ArrayList;)Landroid/view/View;
    .locals 6
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "focusedRect"    # Landroid/graphics/Rect;
    .param p4, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 115
    .local p5, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p2, :cond_2

    .line 116
    if-nez p3, :cond_0

    .line 117
    iget-object p3, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    .line 120
    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 121
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 154
    :cond_1
    :goto_0
    sparse-switch p4, :sswitch_data_0

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2
    if-nez p3, :cond_1

    .line 124
    iget-object p3, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    .line 126
    sparse-switch p4, :sswitch_data_1

    goto :goto_0

    .line 144
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 129
    :sswitch_1
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 132
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 135
    :cond_3
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 141
    :sswitch_3
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 147
    :cond_4
    invoke-direct {p0, p1, p3}, Landroid/view/FocusFinder;->setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    goto :goto_0

    :sswitch_4
    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 157
    invoke-direct/range {v0 .. v5}, Landroid/view/FocusFinder;->findNextFocusInRelativeDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    .line 163
    :goto_1
    return-object v0

    :sswitch_5
    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/FocusFinder;->findNextFocusInAbsoluteDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 154
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_5
        0x21 -> :sswitch_5
        0x42 -> :sswitch_5
        0x82 -> :sswitch_5
    .end sparse-switch

    .line 126
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x11 -> :sswitch_3
        0x21 -> :sswitch_3
        0x42 -> :sswitch_1
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private findNextFocusInRelativeDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 3
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "focused"    # Landroid/view/View;
    .param p4, "focusedRect"    # Landroid/graphics/Rect;
    .param p5, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :try_start_0
    iget-object v1, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    invoke-virtual {v1, p2}, Landroid/view/FocusFinder$SequentialFocusComparator;->setRoot(Landroid/view/ViewGroup;)V

    .line 175
    iget-object v1, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/FocusFinder$SequentialFocusComparator;->setIsLayoutRtl(Z)V

    .line 176
    iget-object v1, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object v1, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    invoke-virtual {v1}, Landroid/view/FocusFinder$SequentialFocusComparator;->recycle()V

    .line 181
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 182
    .local v0, "count":I
    packed-switch p5, :pswitch_data_0

    .line 188
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :goto_0
    return-object v1

    .line 178
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    invoke-virtual {v2}, Landroid/view/FocusFinder$SequentialFocusComparator;->recycle()V

    throw v1

    .line 184
    .restart local v0    # "count":I
    :pswitch_0
    invoke-static {p3, p1, v0}, Landroid/view/FocusFinder;->getNextFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 186
    :pswitch_1
    invoke-static {p3, p1, v0}, Landroid/view/FocusFinder;->getPreviousFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findNextUserSpecifiedFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "direction"    # I

    .prologue
    .line 104
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "userSetNextFocus":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    .end local v0    # "userSetNextFocus":Landroid/view/View;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "userSetNextFocus":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Landroid/view/FocusFinder;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/FocusFinder;

    return-object v0
.end method

.method private static getNextFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 2
    .param p0, "focused"    # Landroid/view/View;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_0

    .line 245
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 246
    .local v0, "position":I
    if-ltz v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    if-ge v1, p2, :cond_0

    .line 247
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 253
    .end local v0    # "position":I
    :goto_0
    return-object v1

    .line 250
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 251
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    .line 253
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getPreviousFocusable(Landroid/view/View;Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 2
    .param p0, "focused"    # Landroid/view/View;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_0

    .line 258
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 259
    .local v0, "position":I
    if-lez v0, :cond_0

    .line 260
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 266
    .end local v0    # "position":I
    :goto_0
    return-object v1

    .line 263
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    .line 266
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTouchCandidate(IILandroid/graphics/Rect;I)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "destRect"    # Landroid/graphics/Rect;
    .param p4, "direction"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 587
    sparse-switch p4, :sswitch_data_0

    .line 597
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :sswitch_0
    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, p1, :cond_1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_1

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v2, :cond_1

    .line 595
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 589
    goto :goto_0

    .line 591
    :sswitch_1
    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-lt v2, p1, :cond_2

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_2

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-le p2, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 593
    :sswitch_2
    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_3

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, p1, :cond_3

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-le p1, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 595
    :sswitch_3
    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-lt v2, p2, :cond_4

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-gt v2, p1, :cond_4

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-le p1, v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 587
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method static majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .prologue
    .line 432
    const/4 v0, 0x0

    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .prologue
    .line 436
    sparse-switch p0, :sswitch_data_0

    .line 446
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :sswitch_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 444
    :goto_0
    return v0

    .line 440
    :sswitch_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 442
    :sswitch_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 444
    :sswitch_3
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 436
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method static majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .prologue
    .line 457
    const/4 v0, 0x1

    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .prologue
    .line 461
    sparse-switch p0, :sswitch_data_0

    .line 471
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :sswitch_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 469
    :goto_0
    return v0

    .line 465
    :sswitch_1
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 467
    :sswitch_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 469
    :sswitch_3
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 461
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method static minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 3
    .param p0, "direction"    # I
    .param p1, "source"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Rect;

    .prologue
    .line 484
    sparse-switch p0, :sswitch_data_0

    .line 498
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :sswitch_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 494
    :goto_0
    return v0

    :sswitch_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_0

    .line 484
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private setFocusBottomRight(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    add-int v0, v2, v3

    .line 193
    .local v0, "rootBottom":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    add-int v1, v2, v3

    .line 194
    .local v1, "rootRight":I
    invoke-virtual {p2, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 195
    return-void
.end method

.method private setFocusTopLeft(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 199
    .local v1, "rootTop":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 200
    .local v0, "rootLeft":I
    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 201
    return-void
.end method


# virtual methods
.method beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "direction"    # I
    .param p2, "source"    # Landroid/graphics/Rect;
    .param p3, "rect1"    # Landroid/graphics/Rect;
    .param p4, "rect2"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 319
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 320
    .local v0, "rect1InSrcBeam":Z
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .line 323
    .local v1, "rect2InSrcBeam":Z
    if-nez v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    move v2, v3

    .line 346
    :cond_1
    :goto_0
    return v2

    .line 333
    :cond_2
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 338
    const/16 v4, 0x11

    if-eq p1, v4, :cond_1

    const/16 v4, 0x42

    if-eq p1, v4, :cond_1

    .line 346
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v5

    if-lt v4, v5, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "rect1"    # Landroid/graphics/Rect;
    .param p3, "rect2"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 396
    sparse-switch p1, :sswitch_data_0

    .line 404
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :sswitch_0
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 399
    goto :goto_0

    .line 402
    :sswitch_1
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_2

    iget v2, p3, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 396
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public findNearestTouchable(Landroid/view/ViewGroup;III[I)Landroid/view/View;
    .locals 15
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "direction"    # I
    .param p5, "deltas"    # [I

    .prologue
    .line 514
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTouchables()Ljava/util/ArrayList;

    move-result-object v12

    .line 515
    .local v12, "touchables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const v8, 0x7fffffff

    .line 516
    .local v8, "minDistance":I
    const/4 v3, 0x0

    .line 518
    .local v3, "closest":Landroid/view/View;
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 520
    .local v9, "numTouchables":I
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v6

    .line 522
    .local v6, "edgeSlop":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 523
    .local v4, "closestBounds":Landroid/graphics/Rect;
    iget-object v11, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    .line 525
    .local v11, "touchableBounds":Landroid/graphics/Rect;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_3

    .line 526
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 529
    .local v10, "touchable":Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 531
    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v13, v14}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 533
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {p0, v0, v1, v11, v2}, Landroid/view/FocusFinder;->isTouchCandidate(IILandroid/graphics/Rect;I)Z

    move-result v13

    if-nez v13, :cond_1

    .line 525
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 537
    :cond_1
    const v5, 0x7fffffff

    .line 539
    .local v5, "distance":I
    sparse-switch p4, :sswitch_data_0

    .line 554
    :goto_2
    if-ge v5, v6, :cond_0

    .line 556
    if-eqz v3, :cond_2

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v11, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_0

    if-ge v5, v8, :cond_0

    .line 559
    :cond_2
    move v8, v5

    .line 560
    move-object v3, v10

    .line 561
    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 562
    sparse-switch p4, :sswitch_data_1

    goto :goto_1

    .line 564
    :sswitch_0
    const/4 v13, 0x0

    neg-int v14, v5

    aput v14, p5, v13

    goto :goto_1

    .line 541
    :sswitch_1
    iget v13, v11, Landroid/graphics/Rect;->right:I

    sub-int v13, p2, v13

    add-int/lit8 v5, v13, 0x1

    .line 542
    goto :goto_2

    .line 544
    :sswitch_2
    iget v5, v11, Landroid/graphics/Rect;->left:I

    .line 545
    goto :goto_2

    .line 547
    :sswitch_3
    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v13, p3, v13

    add-int/lit8 v5, v13, 0x1

    .line 548
    goto :goto_2

    .line 550
    :sswitch_4
    iget v5, v11, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 567
    :sswitch_5
    const/4 v13, 0x0

    aput v5, p5, v13

    goto :goto_1

    .line 570
    :sswitch_6
    const/4 v13, 0x1

    neg-int v14, v5

    aput v14, p5, v13

    goto :goto_1

    .line 573
    :sswitch_7
    const/4 v13, 0x1

    aput v5, p5, v13

    goto :goto_1

    .line 579
    .end local v5    # "distance":I
    .end local v10    # "touchable":Landroid/view/View;
    :cond_3
    return-object v3

    .line 539
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x21 -> :sswitch_3
        0x42 -> :sswitch_2
        0x82 -> :sswitch_4
    .end sparse-switch

    .line 562
    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_6
        0x42 -> :sswitch_5
        0x82 -> :sswitch_7
    .end sparse-switch
.end method

.method public final findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focused"    # Landroid/view/View;
    .param p3, "direction"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "focusedRect"    # Landroid/graphics/Rect;
    .param p3, "direction"    # I

    .prologue
    .line 77
    iget-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 78
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0, v1, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method findNextFocusInAbsoluteDirection(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .locals 7
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "focused"    # Landroid/view/View;
    .param p4, "focusedRect"    # Landroid/graphics/Rect;
    .param p5, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "focusables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v6, 0x0

    .line 207
    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 208
    sparse-switch p5, :sswitch_data_0

    .line 222
    :goto_0
    const/4 v0, 0x0

    .line 224
    .local v0, "closest":Landroid/view/View;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 225
    .local v3, "numFocusables":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 226
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 229
    .local v1, "focusable":Landroid/view/View;
    if-eq v1, p3, :cond_0

    if-ne v1, p2, :cond_1

    .line 225
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 210
    .end local v0    # "closest":Landroid/view/View;
    .end local v1    # "focusable":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "numFocusables":I
    :sswitch_0
    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 213
    :sswitch_1
    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    neg-int v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 216
    :sswitch_2
    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 219
    :sswitch_3
    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    neg-int v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 232
    .restart local v0    # "closest":Landroid/view/View;
    .restart local v1    # "focusable":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v3    # "numFocusables":I
    :cond_1
    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 233
    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 235
    iget-object v4, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p5, p4, v4, v5}, Landroid/view/FocusFinder;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    iget-object v4, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 237
    move-object v0, v1

    goto :goto_2

    .line 240
    .end local v1    # "focusable":Landroid/view/View;
    :cond_2
    return-object v0

    .line 208
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method getWeightedDistanceFor(II)I
    .locals 2
    .param p1, "majorAxisDistance"    # I
    .param p2, "minorAxisDistance"    # I

    .prologue
    .line 356
    mul-int/lit8 v0, p1, 0xd

    mul-int/2addr v0, p1

    mul-int v1, p2, p2

    add-int/2addr v0, v1

    return v0
.end method

.method isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "direction"    # I
    .param p2, "source"    # Landroid/graphics/Rect;
    .param p3, "rect1"    # Landroid/graphics/Rect;
    .param p4, "rect2"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 283
    invoke-virtual {p0, p2, p3, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 304
    :cond_0
    :goto_0
    return v0

    .line 289
    :cond_1
    invoke-virtual {p0, p2, p4, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 300
    goto :goto_0

    .line 304
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/view/FocusFinder;->getWeightedDistanceFor(II)I

    move-result v2

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/FocusFinder;->getWeightedDistanceFor(II)I

    move-result v3

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 4
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "destRect"    # Landroid/graphics/Rect;
    .param p3, "direction"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 369
    sparse-switch p3, :sswitch_data_0

    .line 383
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :sswitch_0
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_2

    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_2

    .line 380
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 371
    goto :goto_0

    .line 374
    :sswitch_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_3

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_4

    :cond_3
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0

    .line 377
    :sswitch_2
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_5

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_6

    :cond_5
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_1

    :cond_6
    move v0, v1

    goto :goto_0

    .line 380
    :sswitch_3
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_7

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_8

    :cond_7
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_1

    :cond_8
    move v0, v1

    goto :goto_0

    .line 369
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dest"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 412
    sparse-switch p1, :sswitch_data_0

    .line 422
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :sswitch_0
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_1

    .line 420
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 414
    goto :goto_0

    .line 416
    :sswitch_1
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 418
    :sswitch_2
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 420
    :sswitch_3
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 412
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method
