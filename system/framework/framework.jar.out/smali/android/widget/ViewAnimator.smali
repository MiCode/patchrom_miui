.class public Landroid/widget/ViewAnimator;
.super Landroid/widget/FrameLayout;
.source "ViewAnimator.java"


# instance fields
.field mAnimateFirstTime:Z

.field mFirstTime:Z

.field mInAnimation:Landroid/view/animation/Animation;

.field mOutAnimation:Landroid/view/animation/Animation;

.field mWhichChild:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 41
    iput-boolean v1, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 43
    iput-boolean v1, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ViewAnimator;->initViewAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput v4, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 41
    iput-boolean v5, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 43
    iput-boolean v5, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    .line 56
    sget-object v3, Lcom/android/internal/R$styleable;->ViewAnimator:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 58
    .local v2, "resource":I
    if-lez v2, :cond_0

    .line 59
    invoke-virtual {p0, p1, v2}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    .line 62
    :cond_0
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 63
    if-lez v2, :cond_1

    .line 64
    invoke-virtual {p0, p1, v2}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    .line 67
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 68
    .local v1, "flag":Z
    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->setAnimateFirstView(Z)V

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;->initViewAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method private initViewAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 80
    if-nez p2, :cond_0

    .line 82
    iput-boolean v3, p0, Landroid/widget/ViewAnimator;->mMeasureAllChildren:Z

    .line 94
    :goto_0
    return-void

    .line 88
    :cond_0
    sget-object v2, Lcom/android/internal/R$styleable;->FrameLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 92
    .local v1, "measureAllChildren":Z
    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->setMeasureAllChildren(Z)V

    .line 93
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 184
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 185
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :goto_0
    if-ltz p2, :cond_0

    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    if-lt v0, p2, :cond_0

    .line 192
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 194
    :cond_0
    return-void

    .line 188
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public getAnimateFirstView()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 357
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayedChild()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    return v0
.end method

.method public getInAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getOutAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 362
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 363
    const-class v0, Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 364
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 368
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 369
    const-class v0, Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 370
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 201
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 206
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 207
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->removeViewAt(I)V

    .line 209
    :cond_0
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 214
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    .line 215
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 216
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 217
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    if-lt v1, v0, :cond_2

    .line 220
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_0

    .line 221
    :cond_2
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    if-ne v1, p1, :cond_0

    .line 223
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->removeView(Landroid/view/View;)V

    .line 229
    return-void
.end method

.method public removeViews(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 232
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViews(II)V

    .line 233
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    if-lt v0, p1, :cond_0

    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 238
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_0
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 243
    invoke-virtual {p0, p1, p2}, Landroid/widget/ViewAnimator;->removeViews(II)V

    .line 244
    return-void
.end method

.method public setAnimateFirstView(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 352
    iput-boolean p1, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    .line 353
    return-void
.end method

.method public setDisplayedChild(I)V
    .locals 2
    .param p1, "whichChild"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 103
    iput p1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 104
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_3

    .line 105
    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 109
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 111
    .local v0, "hasFocus":Z
    :cond_1
    iget v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->showOnly(I)V

    .line 112
    if-eqz v0, :cond_2

    .line 114
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->requestFocus(I)Z

    .line 116
    :cond_2
    return-void

    .line 106
    .end local v0    # "hasFocus":Z
    :cond_3
    if-gez p1, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    goto :goto_0
.end method

.method public setInAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .prologue
    .line 315
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 316
    return-void
.end method

.method public setInAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "inAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 278
    iput-object p1, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    .line 279
    return-void
.end method

.method public setOutAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .prologue
    .line 328
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 329
    return-void
.end method

.method public setOutAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "outAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 302
    iput-object p1, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    .line 303
    return-void
.end method

.method public showNext()V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 130
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 131
    return-void
.end method

.method showOnly(I)V
    .locals 2
    .param p1, "childIndex"    # I

    .prologue
    .line 178
    iget-boolean v1, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 179
    .local v0, "animate":Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/ViewAnimator;->showOnly(IZ)V

    .line 180
    return-void

    .line 178
    .end local v0    # "animate":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showOnly(IZ)V
    .locals 6
    .param p1, "childIndex"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v5, 0x0

    .line 152
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v1

    .line 153
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 154
    invoke-virtual {p0, v2}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, "child":Landroid/view/View;
    if-ne v2, p1, :cond_1

    .line 156
    if-eqz p2, :cond_0

    iget-object v3, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_0

    .line 157
    iget-object v3, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 159
    :cond_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iput-boolean v5, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 153
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_1
    if-eqz p2, :cond_3

    iget-object v3, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 163
    iget-object v3, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 166
    :cond_2
    :goto_2
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 164
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    if-ne v3, v4, :cond_2

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_2

    .line 169
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    return-void
.end method

.method public showPrevious()V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 138
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 139
    return-void
.end method
