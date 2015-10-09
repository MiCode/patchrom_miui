.class Landroid/transition/TransitionManager$MultiListener;
.super Ljava/lang/Object;
.source "TransitionManager.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/TransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiListener"
.end annotation


# instance fields
.field mSceneRoot:Landroid/view/ViewGroup;

.field mTransition:Landroid/transition/Transition;


# direct methods
.method constructor <init>(Landroid/transition/Transition;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    .line 236
    iput-object p2, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 237
    return-void
.end method

.method private removeListeners()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 241
    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 242
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 8

    .prologue
    .line 264
    invoke-direct {p0}, Landroid/transition/TransitionManager$MultiListener;->removeListeners()V

    .line 265
    # getter for: Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;
    invoke-static {}, Landroid/transition/TransitionManager;->access$000()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 267
    # invokes: Landroid/transition/TransitionManager;->getRunningTransitions()Landroid/util/ArrayMap;
    invoke-static {}, Landroid/transition/TransitionManager;->access$100()Landroid/util/ArrayMap;

    move-result-object v4

    .line 269
    .local v4, "runningTransitions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/transition/Transition;>;>;"
    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 270
    .local v0, "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    const/4 v2, 0x0

    .line 271
    .local v2, "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    if-nez v0, :cond_1

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .restart local v0    # "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_0
    :goto_0
    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    new-instance v6, Landroid/transition/TransitionManager$MultiListener$1;

    invoke-direct {v6, p0, v4}, Landroid/transition/TransitionManager$MultiListener$1;-><init>(Landroid/transition/TransitionManager$MultiListener;Landroid/util/ArrayMap;)V

    invoke-virtual {v5, v6}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 286
    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    iget-object v6, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 287
    if-eqz v2, :cond_2

    .line 288
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/Transition;

    .line 289
    .local v3, "runningTransition":Landroid/transition/Transition;
    invoke-virtual {v3}, Landroid/transition/Transition;->resume()V

    goto :goto_1

    .line 274
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "runningTransition":Landroid/transition/Transition;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 275
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v2    # "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    goto :goto_0

    .line 292
    :cond_2
    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    iget-object v6, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/transition/Transition;->playTransition(Landroid/view/ViewGroup;)V

    .line 294
    const/4 v5, 0x1

    return v5
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 246
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 250
    invoke-direct {p0}, Landroid/transition/TransitionManager$MultiListener;->removeListeners()V

    .line 252
    # getter for: Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;
    invoke-static {}, Landroid/transition/TransitionManager;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 253
    # invokes: Landroid/transition/TransitionManager;->getRunningTransitions()Landroid/util/ArrayMap;
    invoke-static {}, Landroid/transition/TransitionManager;->access$100()Landroid/util/ArrayMap;

    move-result-object v3

    iget-object v4, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 254
    .local v2, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 255
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    .line 256
    .local v1, "runningTransition":Landroid/transition/Transition;
    invoke-virtual {v1}, Landroid/transition/Transition;->resume()V

    goto :goto_0

    .line 259
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "runningTransition":Landroid/transition/Transition;
    :cond_0
    iget-object v3, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/transition/Transition;->clearValues(Z)V

    .line 260
    return-void
.end method
