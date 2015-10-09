.class public Landroid/view/animation/LayoutAnimationController;
.super Ljava/lang/Object;
.source "LayoutAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    }
.end annotation


# static fields
.field public static final ORDER_NORMAL:I = 0x0

.field public static final ORDER_RANDOM:I = 0x2

.field public static final ORDER_REVERSE:I = 0x1


# instance fields
.field protected mAnimation:Landroid/view/animation/Animation;

.field private mDelay:F

.field private mDuration:J

.field protected mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxDelay:J

.field private mOrder:I

.field protected mRandomizer:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    sget-object v3, Lcom/android/internal/R$styleable;->LayoutAnimation:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    invoke-static {v3}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 108
    .local v1, "d":Landroid/view/animation/Animation$Description;
    iget v3, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    .line 110
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/view/animation/LayoutAnimationController;->mOrder:I

    .line 112
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 113
    .local v2, "resource":I
    if-lez v2, :cond_0

    .line 114
    invoke-virtual {p0, p1, v2}, Landroid/view/animation/LayoutAnimationController;->setAnimation(Landroid/content/Context;I)V

    .line 117
    :cond_0
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 118
    if-lez v2, :cond_1

    .line 119
    invoke-virtual {p0, p1, v2}, Landroid/view/animation/LayoutAnimationController;->setInterpolator(Landroid/content/Context;I)V

    .line 122
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 132
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;F)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "delay"    # F

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p2, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    .line 144
    invoke-virtual {p0, p1}, Landroid/view/animation/LayoutAnimationController;->setAnimation(Landroid/view/animation/Animation;)V

    .line 145
    return-void
.end method


# virtual methods
.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public final getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Landroid/view/animation/LayoutAnimationController;->getDelayForView(Landroid/view/View;)J

    move-result-wide v4

    iget-object v6, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v6

    add-long v1, v4, v6

    .line 322
    .local v1, "delay":J
    iget-wide v4, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    .line 325
    :try_start_0
    iget-object v4, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v0

    .line 326
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :goto_0
    return-object v0

    .line 328
    :catch_0
    move-exception v3

    .line 329
    .local v3, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDelay()F
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    return v0
.end method

.method protected getDelayForView(Landroid/view/View;)J
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 370
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, v1, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 372
    .local v3, "params":Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v3, :cond_0

    .line 373
    const-wide/16 v7, 0x0

    .line 387
    :goto_0
    return-wide v7

    .line 376
    :cond_0
    iget v7, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    iget-object v8, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v8}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v8

    long-to-float v8, v8

    mul-float v0, v7, v8

    .line 377
    .local v0, "delay":F
    invoke-virtual {p0, v3}, Landroid/view/animation/LayoutAnimationController;->getTransformedIndex(Landroid/view/animation/LayoutAnimationController$AnimationParameters;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v0

    float-to-long v5, v7

    .line 378
    .local v5, "viewDelay":J
    iget v7, v3, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    int-to-float v7, v7

    mul-float v4, v0, v7

    .line 380
    .local v4, "totalDelay":F
    iget-object v7, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v7, :cond_1

    .line 381
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v7, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 384
    :cond_1
    long-to-float v7, v5

    div-float v2, v7, v4

    .line 385
    .local v2, "normalizedDelay":F
    iget-object v7, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 387
    mul-float v7, v2, v4

    float-to-long v7, v7

    goto :goto_0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Landroid/view/animation/LayoutAnimationController;->mOrder:I

    return v0
.end method

.method protected getTransformedIndex(Landroid/view/animation/LayoutAnimationController$AnimationParameters;)I
    .locals 2
    .param p1, "params"    # Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .prologue
    .line 402
    invoke-virtual {p0}, Landroid/view/animation/LayoutAnimationController;->getOrder()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 412
    iget v0, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    :goto_0
    return v0

    .line 404
    :pswitch_0
    iget v0, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 406
    :pswitch_1
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    .line 409
    :cond_0
    iget v0, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isDone()Z
    .locals 6

    .prologue
    .line 340
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Landroid/view/animation/LayoutAnimationController;->mDuration:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnimation(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .prologue
    .line 184
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/LayoutAnimationController;->setAnimation(Landroid/view/animation/Animation;)V

    .line 185
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 199
    iput-object p1, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    .line 200
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 201
    return-void
.end method

.method public setDelay(F)V
    .locals 0
    .param p1, "delay"    # F

    .prologue
    .line 282
    iput p1, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    .line 283
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .prologue
    .line 229
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/LayoutAnimationController;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 230
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 244
    iput-object p1, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 245
    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .param p1, "order"    # I

    .prologue
    .line 168
    iput p1, p0, Landroid/view/animation/LayoutAnimationController;->mOrder:I

    .line 169
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/animation/LayoutAnimationController;->mDuration:J

    .line 300
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    .line 301
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 302
    return-void
.end method

.method public willOverlap()Z
    .locals 2

    .prologue
    .line 292
    iget v0, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
