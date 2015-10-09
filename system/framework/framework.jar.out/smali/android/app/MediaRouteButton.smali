.class public Landroid/app/MediaRouteButton;
.super Landroid/view/View;
.source "MediaRouteButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/MediaRouteButton$1;,
        Landroid/app/MediaRouteButton$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final ACTIVATED_STATE_SET:[I

.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mAttachedToWindow:Z

.field private final mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

.field private mCheatSheetEnabled:Z

.field private mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mIsConnecting:Z

.field private mMinHeight:I

.field private mMinWidth:I

.field private mRemoteActive:Z

.field private mRemoteIndicator:Landroid/graphics/drawable/Drawable;

.field private mRouteTypes:I

.field private final mRouter:Landroid/media/MediaRouter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-array v0, v3, [I

    sget v1, Lcom/android/internal/R$attr;->state_checked:I

    aput v1, v0, v2

    sput-object v0, Landroid/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    .line 63
    new-array v0, v3, [I

    sget v1, Lcom/android/internal/R$attr;->state_activated:I

    aput v1, v0, v2

    sput-object v0, Landroid/app/MediaRouteButton;->ACTIVATED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    sget v0, Lcom/android/internal/R$attr;->mediaRouteButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    const-string/jumbo v2, "media_router"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter;

    iput-object v2, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    .line 79
    new-instance v2, Landroid/app/MediaRouteButton$MediaRouterCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroid/app/MediaRouteButton;Landroid/app/MediaRouteButton$1;)V

    iput-object v2, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    .line 81
    sget-object v2, Lcom/android/internal/R$styleable;->MediaRouteButton:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/app/MediaRouteButton;->mMinWidth:I

    .line 87
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/app/MediaRouteButton;->mMinHeight:I

    .line 89
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 92
    .local v1, "routeTypes":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    invoke-virtual {p0, v5}, Landroid/app/MediaRouteButton;->setClickable(Z)V

    .line 95
    invoke-virtual {p0, v5}, Landroid/app/MediaRouteButton;->setLongClickable(Z)V

    .line 97
    invoke-virtual {p0, v1}, Landroid/app/MediaRouteButton;->setRouteTypes(I)V

    .line 98
    return-void
.end method

.method static synthetic access$100(Landroid/app/MediaRouteButton;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/MediaRouteButton;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->refreshRoute()V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 166
    .local v0, "context":Landroid/content/Context;
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 167
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 168
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    .line 170
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 172
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The MediaRouteButton\'s Context is not an Activity."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private refreshRoute()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 386
    iget-boolean v5, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v5, :cond_4

    .line 387
    iget-object v5, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v5}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    .line 388
    .local v3, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v5

    if-nez v5, :cond_5

    iget v5, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    invoke-virtual {v3, v5}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v5

    if-eqz v5, :cond_5

    move v1, v4

    .line 389
    .local v1, "isRemote":Z
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v4

    .line 391
    .local v0, "isConnecting":Z
    :cond_0
    const/4 v2, 0x0

    .line 392
    .local v2, "needsRefresh":Z
    iget-boolean v5, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    if-eq v5, v1, :cond_1

    .line 393
    iput-boolean v1, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    .line 394
    const/4 v2, 0x1

    .line 396
    :cond_1
    iget-boolean v5, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    if-eq v5, v0, :cond_2

    .line 397
    iput-boolean v0, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    .line 398
    const/4 v2, 0x1

    .line 401
    :cond_2
    if-eqz v2, :cond_3

    .line 402
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->refreshDrawableState()V

    .line 405
    :cond_3
    iget-object v5, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget v6, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    invoke-virtual {v5, v6, v4}, Landroid/media/MediaRouter;->isRouteAvailable(II)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/MediaRouteButton;->setEnabled(Z)V

    .line 408
    .end local v0    # "isConnecting":Z
    .end local v1    # "isRemote":Z
    .end local v2    # "needsRefresh":Z
    .end local v3    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_4
    return-void

    .restart local v3    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_5
    move v1, v0

    .line 388
    goto :goto_0
.end method

.method private setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 264
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/app/MediaRouteButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    :cond_0
    iput-object p1, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 267
    if-eqz p1, :cond_1

    .line 268
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 269
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 270
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 273
    :cond_1
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->refreshDrawableState()V

    .line 274
    return-void

    :cond_2
    move v0, v1

    .line 270
    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 254
    iget-object v1, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v0

    .line 256
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 257
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->invalidate()V

    .line 259
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method public getRouteTypes()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 283
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 285
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 288
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 301
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 304
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget v1, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    iget-object v2, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 308
    :cond_0
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->refreshRoute()V

    .line 309
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 236
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 242
    .local v0, "drawableState":[I
    iget-boolean v1, p0, Landroid/app/MediaRouteButton;->mIsConnecting:Z

    if-eqz v1, :cond_1

    .line 243
    sget-object v1, Landroid/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    .line 247
    :cond_0
    :goto_0
    return-object v0

    .line 244
    :cond_1
    iget-boolean v1, p0, Landroid/app/MediaRouteButton;->mRemoteActive:Z

    if-eqz v1, :cond_0

    .line 245
    sget-object v1, Landroid/app/MediaRouteButton;->ACTIVATED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 314
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 318
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 319
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 366
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 368
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_0

    .line 383
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingLeft()I

    move-result v5

    .line 371
    .local v5, "left":I
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 372
    .local v6, "right":I
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingTop()I

    move-result v7

    .line 373
    .local v7, "top":I
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingBottom()I

    move-result v9

    sub-int v0, v8, v9

    .line 375
    .local v0, "bottom":I
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 376
    .local v4, "drawWidth":I
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 377
    .local v1, "drawHeight":I
    sub-int v8, v6, v5

    sub-int/2addr v8, v4

    div-int/lit8 v8, v8, 0x2

    add-int v2, v5, v8

    .line 378
    .local v2, "drawLeft":I
    sub-int v8, v0, v7

    sub-int/2addr v8, v1

    div-int/lit8 v8, v8, 0x2

    add-int v3, v7, v8

    .line 380
    .local v3, "drawTop":I
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    add-int v9, v2, v4

    add-int v10, v3, v1

    invoke-virtual {v8, v2, v3, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 382
    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x0

    .line 323
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 324
    .local v7, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 325
    .local v2, "heightSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 326
    .local v6, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 328
    .local v1, "heightMode":I
    iget v10, p0, Landroid/app/MediaRouteButton;->mMinWidth:I

    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    :goto_0
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 330
    .local v4, "minWidth":I
    iget v8, p0, Landroid/app/MediaRouteButton;->mMinHeight:I

    iget-object v10, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_0

    iget-object v9, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    :cond_0
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 334
    .local v3, "minHeight":I
    sparse-switch v6, :sswitch_data_0

    .line 343
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingLeft()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingRight()I

    move-result v9

    add-int v5, v8, v9

    .line 348
    .local v5, "width":I
    :goto_1
    sparse-switch v1, :sswitch_data_1

    .line 357
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingBottom()I

    move-result v9

    add-int v0, v8, v9

    .line 361
    .local v0, "height":I
    :goto_2
    invoke-virtual {p0, v5, v0}, Landroid/app/MediaRouteButton;->setMeasuredDimension(II)V

    .line 362
    return-void

    .end local v0    # "height":I
    .end local v3    # "minHeight":I
    .end local v4    # "minWidth":I
    .end local v5    # "width":I
    :cond_1
    move v8, v9

    .line 328
    goto :goto_0

    .line 336
    .restart local v3    # "minHeight":I
    .restart local v4    # "minWidth":I
    :sswitch_0
    move v5, v7

    .line 337
    .restart local v5    # "width":I
    goto :goto_1

    .line 339
    .end local v5    # "width":I
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingLeft()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 340
    .restart local v5    # "width":I
    goto :goto_1

    .line 350
    :sswitch_2
    move v0, v2

    .line 351
    .restart local v0    # "height":I
    goto :goto_2

    .line 353
    .end local v0    # "height":I
    :sswitch_3
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 354
    .restart local v0    # "height":I
    goto :goto_2

    .line 334
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 348
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public performClick()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 186
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 187
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0, v1}, Landroid/app/MediaRouteButton;->playSoundEffect(I)V

    .line 190
    :cond_0
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->showDialogInternal()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public performLongClick()Z
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 195
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 231
    :goto_0
    return v9

    .line 199
    :cond_0
    iget-boolean v11, p0, Landroid/app/MediaRouteButton;->mCheatSheetEnabled:Z

    if-nez v11, :cond_1

    move v9, v10

    .line 200
    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 204
    .local v1, "contentDesc":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v9, v10

    .line 206
    goto :goto_0

    .line 209
    :cond_2
    const/4 v11, 0x2

    new-array v6, v11, [I

    .line 210
    .local v6, "screenPos":[I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 211
    .local v3, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Landroid/app/MediaRouteButton;->getLocationOnScreen([I)V

    .line 212
    invoke-virtual {p0, v3}, Landroid/app/MediaRouteButton;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 214
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 215
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getWidth()I

    move-result v8

    .line 216
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getHeight()I

    move-result v4

    .line 217
    .local v4, "height":I
    aget v11, v6, v9

    div-int/lit8 v12, v4, 0x2

    add-int v5, v11, v12

    .line 218
    .local v5, "midy":I
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v7, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 220
    .local v7, "screenWidth":I
    invoke-static {v2, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 221
    .local v0, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-ge v5, v11, :cond_3

    .line 223
    const v11, 0x800035

    aget v12, v6, v10

    sub-int v12, v7, v12

    div-int/lit8 v13, v8, 0x2

    sub-int/2addr v12, v13

    invoke-virtual {v0, v11, v12, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 229
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 230
    invoke-virtual {p0, v10}, Landroid/app/MediaRouteButton;->performHapticFeedback(I)Z

    goto :goto_0

    .line 227
    :cond_3
    const/16 v11, 0x51

    invoke-virtual {v0, v11, v10, v4}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method

.method setCheatSheetEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Landroid/app/MediaRouteButton;->mCheatSheetEnabled:Z

    .line 181
    return-void
.end method

.method public setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 134
    iput-object p1, p0, Landroid/app/MediaRouteButton;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 135
    return-void
.end method

.method public setRouteTypes(I)V
    .locals 3
    .param p1, "types"    # I

    .prologue
    .line 117
    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eq v0, p1, :cond_2

    .line 118
    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 122
    :cond_0
    iput p1, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    .line 124
    iget-boolean v0, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 125
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteButton;->mCallback:Landroid/app/MediaRouteButton$MediaRouterCallback;

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 129
    :cond_1
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->refreshRoute()V

    .line 131
    :cond_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 292
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 295
    iget-object v2, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 297
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 295
    goto :goto_0
.end method

.method public showDialog()V
    .locals 0

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/app/MediaRouteButton;->showDialogInternal()Z

    .line 151
    return-void
.end method

.method showDialogInternal()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-boolean v2, p0, Landroid/app/MediaRouteButton;->mAttachedToWindow:Z

    if-nez v2, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v1

    .line 158
    :cond_1
    invoke-direct {p0}, Landroid/app/MediaRouteButton;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Landroid/app/MediaRouteButton;->mRouteTypes:I

    iget-object v4, p0, Landroid/app/MediaRouteButton;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-static {v2, v3, v4}, Lcom/android/internal/app/MediaRouteDialogPresenter;->showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;

    move-result-object v0

    .line 160
    .local v0, "f":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 278
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
