.class Landroid/app/FragmentManagerImpl$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/FragmentManagerImpl;->hideFragment(Landroid/app/Fragment;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/FragmentManagerImpl;

.field final synthetic val$finalFragment:Landroid/app/Fragment;


# direct methods
.method constructor <init>(Landroid/app/FragmentManagerImpl;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 1184
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$6;->this$0:Landroid/app/FragmentManagerImpl;

    iput-object p2, p0, Landroid/app/FragmentManagerImpl$6;->val$finalFragment:Landroid/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1189
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$6;->val$finalFragment:Landroid/app/Fragment;

    iget-object v0, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl$6;->val$finalFragment:Landroid/app/Fragment;

    iget-boolean v0, v0, Landroid/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$6;->val$finalFragment:Landroid/app/Fragment;

    iget-object v0, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1192
    :cond_0
    return-void
.end method
