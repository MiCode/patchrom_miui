.class Landroid/app/FragmentManagerImpl$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/FragmentManagerImpl;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$fragment:Landroid/app/Fragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 968
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$5;->this$0:Landroid/app/FragmentManagerImpl;

    iput-object p2, p0, Landroid/app/FragmentManagerImpl$5;->val$container:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/app/FragmentManagerImpl$5;->val$view:Landroid/view/View;

    iput-object p4, p0, Landroid/app/FragmentManagerImpl$5;->val$fragment:Landroid/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 971
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$5;->val$container:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl$5;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 972
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$5;->val$fragment:Landroid/app/Fragment;

    iget-object v0, v0, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$5;->val$fragment:Landroid/app/Fragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    .line 974
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$5;->this$0:Landroid/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl$5;->val$fragment:Landroid/app/Fragment;

    iget-object v2, p0, Landroid/app/FragmentManagerImpl$5;->val$fragment:Landroid/app/Fragment;

    iget v2, v2, Landroid/app/Fragment;->mStateAfterAnimating:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 977
    :cond_0
    return-void
.end method
