.class public Lcom/android/settings/VerticalSeekBar;
.super Landroid/widget/AbsSeekBar;
.source "VerticalSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/VerticalSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mOnSeekBarChangeListener:Lcom/android/settings/VerticalSeekBar$OnSeekBarChangeListener;

.field private final mSetProgress:Ljava/lang/reflect/Method;

.field private mThumb:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/settings/VerticalSeekBar;->mBounds:Landroid/graphics/Rect;

    .line 42
    const/4 v0, 0x0

    .line 44
    .local v0, m:Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 45
    .local v1, progressClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v2, "setProgress"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 46
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1           #progressClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    iput-object v0, p0, Lcom/android/settings/VerticalSeekBar;->mSetProgress:Ljava/lang/reflect/Method;

    .line 51
    return-void

    .line 47
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 212
    :cond_0
    return-void
.end method

.method private setProgressOnMove(F)V
    .locals 7
    .parameter "progress"

    .prologue
    const/4 v6, 0x1

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->getProgress()I

    move-result v1

    .line 217
    .local v1, oldProgress:I
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/VerticalSeekBar;->mSetProgress:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    float-to-int v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->getProgress()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/android/settings/VerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/android/settings/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/android/settings/VerticalSeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->getProgress()I

    move-result v3

    invoke-interface {v2, p0, v3, v6}, Lcom/android/settings/VerticalSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/android/settings/VerticalSeekBar;IZ)V

    .line 225
    :cond_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Ljava/lang/Exception;
    float-to-int v2, p1

    invoke-virtual {p0, v2}, Lcom/android/settings/VerticalSeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 192
    iget-object v5, p0, Lcom/android/settings/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 193
    .local v4, th:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->getHeight()I

    move-result v2

    .line 194
    .local v2, height:I
    sub-int v5, v2, v4

    iget v6, p0, Lcom/android/settings/VerticalSeekBar;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/settings/VerticalSeekBar;->mPaddingTop:I

    sub-int v0, v5, v6

    .line 195
    .local v0, available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v1, v5

    .line 196
    .local v1, eventY:I
    const/4 v3, 0x0

    .line 197
    .local v3, scale:F
    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->getPaddingBottom()I

    move-result v5

    sub-int v5, v2, v5

    if-le v1, v5, :cond_1

    .line 198
    const/4 v3, 0x0

    .line 205
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v5}, Lcom/android/settings/VerticalSeekBar;->setProgressOnMove(F)V

    .line 206
    return-void

    .line 192
    .end local v0           #available:I
    .end local v1           #eventY:I
    .end local v2           #height:I
    .end local v3           #scale:F
    .end local v4           #th:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 199
    .restart local v0       #available:I
    .restart local v1       #eventY:I
    .restart local v2       #height:I
    .restart local v3       #scale:F
    .restart local v4       #th:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->getPaddingTop()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 200
    const/high16 v3, 0x3f80

    goto :goto_1

    .line 202
    :cond_2
    iget v5, p0, Lcom/android/settings/VerticalSeekBar;->mPaddingBottom:I

    sub-int v5, v2, v5

    sub-int/2addr v5, v1

    div-int/lit8 v6, v4, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v0

    div-float v3, v5, v6

    goto :goto_1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 149
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, newEvent:Landroid/view/KeyEvent;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 168
    :goto_0
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p0, v3, v3}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v1

    .line 172
    .end local v0           #newEvent:Landroid/view/KeyEvent;
    :goto_1
    return v1

    .line 153
    .restart local v0       #newEvent:Landroid/view/KeyEvent;
    :pswitch_0
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #newEvent:Landroid/view/KeyEvent;
    const/16 v1, 0x16

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 154
    .restart local v0       #newEvent:Landroid/view/KeyEvent;
    goto :goto_0

    .line 156
    :pswitch_1
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #newEvent:Landroid/view/KeyEvent;
    const/16 v1, 0x15

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 157
    .restart local v0       #newEvent:Landroid/view/KeyEvent;
    goto :goto_0

    .line 159
    :pswitch_2
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #newEvent:Landroid/view/KeyEvent;
    const/16 v1, 0x14

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 160
    .restart local v0       #newEvent:Landroid/view/KeyEvent;
    goto :goto_0

    .line 162
    :pswitch_3
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #newEvent:Landroid/view/KeyEvent;
    const/16 v1, 0x13

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 163
    .restart local v0       #newEvent:Landroid/view/KeyEvent;
    goto :goto_0

    .line 172
    .end local v0           #newEvent:Landroid/view/KeyEvent;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 151
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "c"

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/VerticalSeekBar;->mBounds:Landroid/graphics/Rect;

    .line 58
    .local v2, bounds:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->getHeight()I

    move-result v4

    .line 59
    .local v4, height:I
    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->getWidth()I

    move-result v8

    .line 60
    .local v8, width:I
    iget-object v5, p0, Lcom/android/settings/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 62
    .local v5, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    .line 63
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 64
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 65
    .local v7, thumbWidth:I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 67
    .local v6, thumbHeight:I
    move v0, v4

    .line 68
    .local v0, available:I
    sub-int/2addr v0, v6

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->getProgress()I

    move-result v9

    mul-int/2addr v9, v0

    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->getMax()I

    move-result v10

    div-int/2addr v9, v10

    sub-int v1, v4, v9

    .line 71
    .local v1, bottom:I
    iget v9, p0, Lcom/android/settings/VerticalSeekBar;->mPaddingLeft:I

    sub-int v10, v1, v6

    iget v11, p0, Lcom/android/settings/VerticalSeekBar;->mPaddingLeft:I

    add-int/2addr v11, v7

    invoke-virtual {v5, v9, v10, v11, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 76
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 77
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 80
    .end local v0           #available:I
    .end local v1           #bottom:I
    .end local v6           #thumbHeight:I
    .end local v7           #thumbWidth:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 81
    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 82
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 83
    const/16 v9, 0x2710

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 84
    iget v9, p0, Lcom/android/settings/VerticalSeekBar;->mPaddingBottom:I

    sub-int v9, v4, v9

    iget v10, p0, Lcom/android/settings/VerticalSeekBar;->mPaddingTop:I

    sub-int v0, v9, v10

    .line 85
    .restart local v0       #available:I
    iget v9, p0, Lcom/android/settings/VerticalSeekBar;->mPaddingLeft:I

    iget v10, p0, Lcom/android/settings/VerticalSeekBar;->mPaddingBottom:I

    sub-int v10, v4, v10

    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->getProgress()I

    move-result v11

    mul-int/2addr v11, v0

    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->getMax()I

    move-result v12

    div-int/2addr v11, v12

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/settings/VerticalSeekBar;->mPaddingRight:I

    sub-int v11, v8, v11

    iget v12, p0, Lcom/android/settings/VerticalSeekBar;->mPaddingBottom:I

    sub-int v12, v4, v12

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 90
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 91
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .end local v0           #available:I
    :cond_1
    monitor-exit p0

    return-void

    .line 57
    .end local v2           #bounds:Landroid/graphics/Rect;
    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #height:I
    .end local v5           #thumb:Landroid/graphics/drawable/Drawable;
    .end local v8           #width:I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 98
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/VerticalSeekBar;->setMeasuredDimension(II)V

    .line 103
    return-void

    .line 101
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No background!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 113
    invoke-super {p0, p2, p1, p3, p4}, Landroid/widget/AbsSeekBar;->onSizeChanged(IIII)V

    .line 114
    return-void
.end method

.method onStartVerticalTrackingTouch()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/android/settings/VerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/android/settings/VerticalSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/android/settings/VerticalSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/android/settings/VerticalSeekBar;)V

    .line 183
    :cond_0
    return-void
.end method

.method onStopVerticalTrackingTouch()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/android/settings/VerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/android/settings/VerticalSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/android/settings/VerticalSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/android/settings/VerticalSeekBar;)V

    .line 189
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    :goto_0
    return v0

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 144
    goto :goto_0

    .line 123
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/settings/VerticalSeekBar;->setPressed(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->onStartVerticalTrackingTouch()V

    .line 125
    invoke-direct {p0, p1}, Lcom/android/settings/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 129
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 130
    invoke-direct {p0}, Lcom/android/settings/VerticalSeekBar;->attemptClaimDrag()V

    goto :goto_1

    .line 134
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/settings/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->onStopVerticalTrackingTouch()V

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/settings/VerticalSeekBar;->setPressed(Z)V

    goto :goto_1

    .line 140
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/VerticalSeekBar;->onStopVerticalTrackingTouch()V

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/settings/VerticalSeekBar;->setPressed(Z)V

    goto :goto_1

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnSeekBarChangeListener(Lcom/android/settings/VerticalSeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/android/settings/VerticalSeekBar$OnSeekBarChangeListener;

    .line 177
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "thumb"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settings/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-void
.end method
