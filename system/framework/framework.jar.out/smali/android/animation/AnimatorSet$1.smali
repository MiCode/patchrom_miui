.class Landroid/animation/AnimatorSet$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/AnimatorSet;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field canceled:Z

.field final synthetic this$0:Landroid/animation/AnimatorSet;

.field final synthetic val$nodesToStart:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 569
    iput-object p1, p0, Landroid/animation/AnimatorSet$1;->this$0:Landroid/animation/AnimatorSet;

    iput-object p2, p0, Landroid/animation/AnimatorSet$1;->val$nodesToStart:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimatorSet$1;->canceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet$1;->canceled:Z

    .line 573
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 575
    iget-boolean v3, p0, Landroid/animation/AnimatorSet$1;->canceled:Z

    if-nez v3, :cond_0

    .line 576
    iget-object v3, p0, Landroid/animation/AnimatorSet$1;->val$nodesToStart:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 577
    .local v2, "numNodes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 578
    iget-object v3, p0, Landroid/animation/AnimatorSet$1;->val$nodesToStart:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 579
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 580
    iget-object v3, p0, Landroid/animation/AnimatorSet$1;->this$0:Landroid/animation/AnimatorSet;

    # getter for: Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/animation/AnimatorSet;->access$000(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    .end local v0    # "i":I
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    .end local v2    # "numNodes":I
    :cond_0
    iget-object v3, p0, Landroid/animation/AnimatorSet$1;->this$0:Landroid/animation/AnimatorSet;

    const/4 v4, 0x0

    # setter for: Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;
    invoke-static {v3, v4}, Landroid/animation/AnimatorSet;->access$102(Landroid/animation/AnimatorSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 584
    return-void
.end method
