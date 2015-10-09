.class Landroid/animation/LayoutTransition$1;
.super Ljava/lang/Object;
.source "LayoutTransition.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/LayoutTransition;->runChangeTransition(Landroid/view/ViewGroup;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/LayoutTransition;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 793
    iput-object p1, p0, Landroid/animation/LayoutTransition$1;->this$0:Landroid/animation/LayoutTransition;

    iput-object p2, p0, Landroid/animation/LayoutTransition$1;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    .line 795
    iget-object v5, p0, Landroid/animation/LayoutTransition$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 796
    iget-object v5, p0, Landroid/animation/LayoutTransition$1;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;
    invoke-static {v5}, Landroid/animation/LayoutTransition;->access$000(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 797
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 798
    iget-object v5, p0, Landroid/animation/LayoutTransition$1;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;
    invoke-static {v5}, Landroid/animation/LayoutTransition;->access$000(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 799
    .local v4, "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 800
    .local v3, "view":Landroid/view/View;
    iget-object v5, p0, Landroid/animation/LayoutTransition$1;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;
    invoke-static {v5}, Landroid/animation/LayoutTransition;->access$000(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnLayoutChangeListener;

    .line 801
    .local v2, "listener":Landroid/view/View$OnLayoutChangeListener;
    invoke-virtual {v3, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    .line 804
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Landroid/view/View$OnLayoutChangeListener;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    :cond_0
    iget-object v5, p0, Landroid/animation/LayoutTransition$1;->this$0:Landroid/animation/LayoutTransition;

    # getter for: Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;
    invoke-static {v5}, Landroid/animation/LayoutTransition;->access$000(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 805
    const/4 v5, 0x1

    return v5
.end method
