.class Landroid/widget/FastScroller$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/FastScroller;


# direct methods
.method constructor <init>(Landroid/widget/FastScroller;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Landroid/widget/FastScroller$3;->this$0:Landroid/widget/FastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 246
    iget-object v1, p0, Landroid/widget/FastScroller$3;->this$0:Landroid/widget/FastScroller;

    iget-object v0, p0, Landroid/widget/FastScroller$3;->this$0:Landroid/widget/FastScroller;

    # getter for: Landroid/widget/FastScroller;->mShowingPrimary:Z
    invoke-static {v0}, Landroid/widget/FastScroller;->access$700(Landroid/widget/FastScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Landroid/widget/FastScroller;->mShowingPrimary:Z
    invoke-static {v1, v0}, Landroid/widget/FastScroller;->access$702(Landroid/widget/FastScroller;Z)Z

    .line 247
    return-void

    .line 246
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
