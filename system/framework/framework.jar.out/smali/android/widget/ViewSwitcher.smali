.class public Landroid/widget/ViewSwitcher;
.super Landroid/widget/ViewAnimator;
.source "ViewSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ViewSwitcher$ViewFactory;
    }
.end annotation


# instance fields
.field mFactory:Landroid/widget/ViewSwitcher$ViewFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method private obtainView()Landroid/view/View;
    .locals 4

    .prologue
    .line 94
    iget-object v2, p0, Landroid/widget/ViewSwitcher;->mFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    invoke-interface {v2}, Landroid/widget/ViewSwitcher$ViewFactory;->makeView()Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 96
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-nez v1, :cond_0

    .line 97
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 99
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t add more than 2 views to a ViewSwitcher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 69
    return-void
.end method

.method public getNextView()Landroid/view/View;
    .locals 2

    .prologue
    .line 89
    iget v1, p0, Landroid/widget/ViewSwitcher;->mWhichChild:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 90
    .local v0, "which":I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 89
    .end local v0    # "which":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 74
    const-class v0, Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 80
    const-class v0, Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 122
    iput-boolean v2, p0, Landroid/widget/ViewSwitcher;->mFirstTime:Z

    .line 124
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/ViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :cond_1
    return-void
.end method

.method public setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V
    .locals 0
    .param p1, "factory"    # Landroid/widget/ViewSwitcher$ViewFactory;

    .prologue
    .line 112
    iput-object p1, p0, Landroid/widget/ViewSwitcher;->mFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    .line 113
    invoke-direct {p0}, Landroid/widget/ViewSwitcher;->obtainView()Landroid/view/View;

    .line 114
    invoke-direct {p0}, Landroid/widget/ViewSwitcher;->obtainView()Landroid/view/View;

    .line 115
    return-void
.end method
