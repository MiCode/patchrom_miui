.class public Lcom/android/settings/MiuiSearchDrawable;
.super Ljava/lang/Object;
.source "MiuiSearchDrawable.java"


# instance fields
.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mSearchAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mSearchIcon:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/android/settings/MiuiSearchDrawable$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSearchDrawable$1;-><init>(Lcom/android/settings/MiuiSearchDrawable;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSearchDrawable;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSearchDrawable;->mHandler:Landroid/os/Handler;

    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSearchDrawable;->load(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private load(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    iput-object v1, p0, Lcom/android/settings/MiuiSearchDrawable;->mSearchIcon:Landroid/graphics/drawable/StateListDrawable;

    .line 66
    iget-object v1, p0, Lcom/android/settings/MiuiSearchDrawable;->mSearchIcon:Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x101009e

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v0

    .line 67
    .local v0, index:I
    iget-object v1, p0, Lcom/android/settings/MiuiSearchDrawable;->mSearchIcon:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/settings/MiuiSearchDrawable;->mSearchAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 68
    iget-object v1, p0, Lcom/android/settings/MiuiSearchDrawable;->mSearchAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 69
    return-void
.end method

.method private playAnimationDelayed()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/MiuiSearchDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/MiuiSearchDrawable;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    return-void
.end method


# virtual methods
.method public getSearchIcon()Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/MiuiSearchDrawable;->mSearchIcon:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method public playAnimation()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/MiuiSearchDrawable;->mSearchIcon:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/MiuiSearchDrawable;->playAnimationImmediately()V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiSearchDrawable;->playAnimationDelayed()V

    goto :goto_0
.end method

.method public playAnimationImmediately()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/MiuiSearchDrawable;->mSearchIcon:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    const-string v0, "MiuiSearchDrawable"

    const-string v1, "playAnimationImmediately: callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSearchDrawable;->mSearchAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 61
    iget-object v0, p0, Lcom/android/settings/MiuiSearchDrawable;->mSearchAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 62
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/MiuiSearchDrawable;->mSearchAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 47
    iget-object v0, p0, Lcom/android/settings/MiuiSearchDrawable;->mSearchAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 48
    iget-object v0, p0, Lcom/android/settings/MiuiSearchDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/MiuiSearchDrawable;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 49
    return-void
.end method
