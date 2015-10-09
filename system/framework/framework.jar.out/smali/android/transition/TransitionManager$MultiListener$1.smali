.class Landroid/transition/TransitionManager$MultiListener$1;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/TransitionManager$MultiListener;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/transition/TransitionManager$MultiListener;

.field final synthetic val$runningTransitions:Landroid/util/ArrayMap;


# direct methods
.method constructor <init>(Landroid/transition/TransitionManager$MultiListener;Landroid/util/ArrayMap;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Landroid/transition/TransitionManager$MultiListener$1;->this$0:Landroid/transition/TransitionManager$MultiListener;

    iput-object p2, p0, Landroid/transition/TransitionManager$MultiListener$1;->val$runningTransitions:Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 281
    iget-object v1, p0, Landroid/transition/TransitionManager$MultiListener$1;->val$runningTransitions:Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/transition/TransitionManager$MultiListener$1;->this$0:Landroid/transition/TransitionManager$MultiListener;

    iget-object v2, v2, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 283
    .local v0, "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 284
    return-void
.end method
