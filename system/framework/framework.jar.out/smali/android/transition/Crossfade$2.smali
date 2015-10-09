.class Landroid/transition/Crossfade$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Crossfade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/Crossfade;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/transition/Crossfade;

.field final synthetic val$endDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$startDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$useParentOverlay:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/transition/Crossfade;ZLandroid/view/View;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Landroid/transition/Crossfade$2;->this$0:Landroid/transition/Crossfade;

    iput-boolean p2, p0, Landroid/transition/Crossfade$2;->val$useParentOverlay:Z

    iput-object p3, p0, Landroid/transition/Crossfade$2;->val$view:Landroid/view/View;

    iput-object p4, p0, Landroid/transition/Crossfade$2;->val$startDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p5, p0, Landroid/transition/Crossfade$2;->val$endDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 225
    iget-boolean v1, p0, Landroid/transition/Crossfade$2;->val$useParentOverlay:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/transition/Crossfade$2;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    .line 227
    .local v0, "overlay":Landroid/view/ViewOverlay;
    :goto_0
    iget-object v1, p0, Landroid/transition/Crossfade$2;->val$startDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v1, p0, Landroid/transition/Crossfade$2;->this$0:Landroid/transition/Crossfade;

    # getter for: Landroid/transition/Crossfade;->mFadeBehavior:I
    invoke-static {v1}, Landroid/transition/Crossfade;->access$000(Landroid/transition/Crossfade;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 229
    iget-object v1, p0, Landroid/transition/Crossfade$2;->val$endDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 231
    :cond_0
    return-void

    .line 225
    .end local v0    # "overlay":Landroid/view/ViewOverlay;
    :cond_1
    iget-object v1, p0, Landroid/transition/Crossfade$2;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    goto :goto_0
.end method
