.class public Landroid/view/TouchDelegate;
.super Ljava/lang/Object;
.source "TouchDelegate.java"


# static fields
.field public static final ABOVE:I = 0x1

.field public static final BELOW:I = 0x2

.field public static final TO_LEFT:I = 0x4

.field public static final TO_RIGHT:I = 0x8


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mDelegateTargeted:Z

.field private mDelegateView:Landroid/view/View;

.field private mSlop:I

.field private mSlopBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "delegateView"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroid/view/TouchDelegate;->mBounds:Landroid/graphics/Rect;

    .line 93
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/TouchDelegate;->mSlop:I

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 95
    iget-object v0, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/TouchDelegate;->mSlop:I

    neg-int v1, v1

    iget v2, p0, Landroid/view/TouchDelegate;->mSlop:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 96
    iput-object p2, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    .line 97
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 108
    .local v7, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 109
    .local v8, "y":I
    const/4 v4, 0x0

    .line 110
    .local v4, "sendToDelegate":Z
    const/4 v3, 0x1

    .line 111
    .local v3, "hit":Z
    const/4 v2, 0x0

    .line 113
    .local v2, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 137
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 138
    iget-object v1, p0, Landroid/view/TouchDelegate;->mDelegateView:Landroid/view/View;

    .line 140
    .local v1, "delegateView":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 142
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 149
    :goto_1
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 151
    .end local v1    # "delegateView":Landroid/view/View;
    :cond_1
    return v2

    .line 115
    :pswitch_0
    iget-object v0, p0, Landroid/view/TouchDelegate;->mBounds:Landroid/graphics/Rect;

    .line 117
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 118
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    .line 119
    const/4 v4, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :pswitch_1
    iget-boolean v4, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    .line 125
    if-eqz v4, :cond_0

    .line 126
    iget-object v6, p0, Landroid/view/TouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    .line 127
    .local v6, "slopBounds":Landroid/graphics/Rect;
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-nez v9, :cond_0

    .line 128
    const/4 v3, 0x0

    goto :goto_0

    .line 133
    .end local v6    # "slopBounds":Landroid/graphics/Rect;
    :pswitch_2
    iget-boolean v4, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    .line 134
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/view/TouchDelegate;->mDelegateTargeted:Z

    goto :goto_0

    .line 146
    .restart local v1    # "delegateView":Landroid/view/View;
    :cond_2
    iget v5, p0, Landroid/view/TouchDelegate;->mSlop:I

    .line 147
    .local v5, "slop":I
    mul-int/lit8 v9, v5, 0x2

    neg-int v9, v9

    int-to-float v9, v9

    mul-int/lit8 v10, v5, 0x2

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
