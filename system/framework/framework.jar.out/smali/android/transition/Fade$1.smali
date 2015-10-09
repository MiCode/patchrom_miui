.class Landroid/transition/Fade$1;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/Fade;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field mPausedAlpha:F

.field final synthetic this$0:Landroid/transition/Fade;

.field final synthetic val$endView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/transition/Fade;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 149
    iput-object p1, p0, Landroid/transition/Fade$1;->this$0:Landroid/transition/Fade;

    iput-object p2, p0, Landroid/transition/Fade$1;->val$endView:Landroid/view/View;

    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/Fade$1;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 155
    iget-object v0, p0, Landroid/transition/Fade$1;->val$endView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Fade$1;->mCanceled:Z

    .line 157
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 161
    iget-boolean v0, p0, Landroid/transition/Fade$1;->mCanceled:Z

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Landroid/transition/Fade$1;->val$endView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 164
    :cond_0
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 168
    iget-object v0, p0, Landroid/transition/Fade$1;->val$endView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTransitionAlpha()F

    move-result v0

    iput v0, p0, Landroid/transition/Fade$1;->mPausedAlpha:F

    .line 169
    iget-object v0, p0, Landroid/transition/Fade$1;->val$endView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 170
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 174
    iget-object v0, p0, Landroid/transition/Fade$1;->val$endView:Landroid/view/View;

    iget v1, p0, Landroid/transition/Fade$1;->mPausedAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 175
    return-void
.end method
