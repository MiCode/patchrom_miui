.class Landroid/animation/LayoutTransition$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LayoutTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/LayoutTransition;->runAppearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/LayoutTransition;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/animation/LayoutTransition;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 1179
    iput-object p1, p0, Landroid/animation/LayoutTransition$5;->this$0:Landroid/animation/LayoutTransition;

    iput-object p2, p0, Landroid/animation/LayoutTransition$5;->val$child:Landroid/view/View;

    iput-object p3, p0, Landroid/animation/LayoutTransition$5;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 1182
    iget-object v3, p0, Landroid/animation/LayoutTransition$5;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;
    invoke-static {v3}, Landroid/animation/LayoutTransition;->access$1800(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    move-result-object v3

    iget-object v4, p0, Landroid/animation/LayoutTransition$5;->val$child:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    iget-object v3, p0, Landroid/animation/LayoutTransition$5;->this$0:Landroid/animation/LayoutTransition;

    # invokes: Landroid/animation/LayoutTransition;->hasListeners()Z
    invoke-static {v3}, Landroid/animation/LayoutTransition;->access$1600(Landroid/animation/LayoutTransition;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1184
    iget-object v3, p0, Landroid/animation/LayoutTransition$5;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/animation/LayoutTransition;->access$1700(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1186
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/LayoutTransition$TransitionListener;

    .line 1187
    .local v1, "listener":Landroid/animation/LayoutTransition$TransitionListener;
    iget-object v3, p0, Landroid/animation/LayoutTransition$5;->this$0:Landroid/animation/LayoutTransition;

    iget-object v4, p0, Landroid/animation/LayoutTransition$5;->val$parent:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/animation/LayoutTransition$5;->val$child:Landroid/view/View;

    const/4 v6, 0x2

    invoke-interface {v1, v3, v4, v5, v6}, Landroid/animation/LayoutTransition$TransitionListener;->endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    .line 1190
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/animation/LayoutTransition$TransitionListener;
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    :cond_0
    return-void
.end method
