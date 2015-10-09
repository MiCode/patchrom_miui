.class public Landroid/transition/AutoTransition;
.super Landroid/transition/TransitionSet;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 35
    invoke-direct {p0}, Landroid/transition/TransitionSet;-><init>()V

    .line 36
    invoke-virtual {p0, v2}, Landroid/transition/AutoTransition;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 37
    new-instance v0, Landroid/transition/Fade;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/transition/AutoTransition;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v0

    new-instance v1, Landroid/transition/ChangeBounds;

    invoke-direct {v1}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v0

    new-instance v1, Landroid/transition/Fade;

    invoke-direct {v1, v2}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 40
    return-void
.end method
