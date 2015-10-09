.class Landroid/animation/LayoutTransition$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LayoutTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/LayoutTransition;

.field final synthetic val$changeReason:I

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$listener:Landroid/view/View$OnLayoutChangeListener;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    .prologue
    .line 963
    iput-object p1, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    iput-object p2, p0, Landroid/animation/LayoutTransition$4;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    iput p4, p0, Landroid/animation/LayoutTransition$4;->val$changeReason:I

    iput-object p5, p0, Landroid/animation/LayoutTransition$4;->val$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 981
    iget-object v0, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    iget-object v1, p0, Landroid/animation/LayoutTransition$4;->val$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 982
    iget-object v0, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/animation/LayoutTransition;->access$000(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 987
    iget-object v3, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;
    invoke-static {v3}, Landroid/animation/LayoutTransition;->access$1500(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    move-result-object v3

    iget-object v4, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    iget-object v3, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    # invokes: Landroid/animation/LayoutTransition;->hasListeners()Z
    invoke-static {v3}, Landroid/animation/LayoutTransition;->access$1600(Landroid/animation/LayoutTransition;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 989
    iget-object v3, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/animation/LayoutTransition;->access$1700(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 991
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/LayoutTransition$TransitionListener;

    .line 992
    .local v1, "listener":Landroid/animation/LayoutTransition$TransitionListener;
    iget-object v4, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    iget-object v5, p0, Landroid/animation/LayoutTransition$4;->val$parent:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    iget v3, p0, Landroid/animation/LayoutTransition$4;->val$changeReason:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1, v4, v5, v6, v3}, Landroid/animation/LayoutTransition$TransitionListener;->endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/animation/LayoutTransition$4;->val$changeReason:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    goto :goto_1

    .line 998
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/animation/LayoutTransition$TransitionListener;
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 8
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 967
    iget-object v3, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    # invokes: Landroid/animation/LayoutTransition;->hasListeners()Z
    invoke-static {v3}, Landroid/animation/LayoutTransition;->access$1600(Landroid/animation/LayoutTransition;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 968
    iget-object v3, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/animation/LayoutTransition;->access$1700(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 970
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/LayoutTransition$TransitionListener;

    .line 971
    .local v1, "listener":Landroid/animation/LayoutTransition$TransitionListener;
    iget-object v4, p0, Landroid/animation/LayoutTransition$4;->this$0:Landroid/animation/LayoutTransition;

    iget-object v5, p0, Landroid/animation/LayoutTransition$4;->val$parent:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/animation/LayoutTransition$4;->val$child:Landroid/view/View;

    iget v3, p0, Landroid/animation/LayoutTransition$4;->val$changeReason:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1, v4, v5, v6, v3}, Landroid/animation/LayoutTransition$TransitionListener;->startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/animation/LayoutTransition$4;->val$changeReason:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    goto :goto_1

    .line 977
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/animation/LayoutTransition$TransitionListener;
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    :cond_2
    return-void
.end method
