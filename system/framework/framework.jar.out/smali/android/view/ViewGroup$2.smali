.class Landroid/view/ViewGroup$2;
.super Ljava/lang/Object;
.source "ViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewGroup;->notifyAnimationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 3040
    iput-object p1, p0, Landroid/view/ViewGroup$2;->this$0:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3042
    iget-object v0, p0, Landroid/view/ViewGroup$2;->this$0:Landroid/view/ViewGroup;

    # getter for: Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Landroid/view/ViewGroup;->access$200(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewGroup$2;->this$0:Landroid/view/ViewGroup;

    # getter for: Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;
    invoke-static {v1}, Landroid/view/ViewGroup;->access$100(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 3043
    return-void
.end method
