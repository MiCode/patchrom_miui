.class Landroid/transition/TransitionSet$1;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/TransitionSet;->runAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/transition/TransitionSet;

.field final synthetic val$nextTransition:Landroid/transition/Transition;


# direct methods
.method constructor <init>(Landroid/transition/TransitionSet;Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Landroid/transition/TransitionSet$1;->this$0:Landroid/transition/TransitionSet;

    iput-object p2, p0, Landroid/transition/TransitionSet$1;->val$nextTransition:Landroid/transition/Transition;

    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 278
    iget-object v0, p0, Landroid/transition/TransitionSet$1;->val$nextTransition:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->runAnimators()V

    .line 279
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 280
    return-void
.end method
