.class Landroid/transition/Fade$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/Fade;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/transition/Fade;

.field final synthetic val$finalOverlayView:Landroid/view/View;

.field final synthetic val$finalSceneRoot:Landroid/view/ViewGroup;

.field final synthetic val$finalView:Landroid/view/View;

.field final synthetic val$finalViewToKeep:Landroid/view/View;

.field final synthetic val$finalVisibility:I


# direct methods
.method constructor <init>(Landroid/transition/Fade;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Landroid/transition/Fade$2;->this$0:Landroid/transition/Fade;

    iput-object p2, p0, Landroid/transition/Fade$2;->val$finalView:Landroid/view/View;

    iput-object p3, p0, Landroid/transition/Fade$2;->val$finalViewToKeep:Landroid/view/View;

    iput p4, p0, Landroid/transition/Fade$2;->val$finalVisibility:I

    iput-object p5, p0, Landroid/transition/Fade$2;->val$finalOverlayView:Landroid/view/View;

    iput-object p6, p0, Landroid/transition/Fade$2;->val$finalSceneRoot:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 257
    iget-object v0, p0, Landroid/transition/Fade$2;->val$finalView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 259
    iget-object v0, p0, Landroid/transition/Fade$2;->val$finalViewToKeep:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Landroid/transition/Fade$2;->val$finalViewToKeep:Landroid/view/View;

    iget v1, p0, Landroid/transition/Fade$2;->val$finalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    :cond_0
    iget-object v0, p0, Landroid/transition/Fade$2;->val$finalOverlayView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Landroid/transition/Fade$2;->val$finalSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Landroid/transition/Fade$2;->val$finalOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 265
    :cond_1
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 269
    iget-object v0, p0, Landroid/transition/Fade$2;->val$finalOverlayView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Landroid/transition/Fade$2;->val$finalSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Landroid/transition/Fade$2;->val$finalOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 272
    :cond_0
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 276
    iget-object v0, p0, Landroid/transition/Fade$2;->val$finalOverlayView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Landroid/transition/Fade$2;->val$finalSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Landroid/transition/Fade$2;->val$finalOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 279
    :cond_0
    return-void
.end method
