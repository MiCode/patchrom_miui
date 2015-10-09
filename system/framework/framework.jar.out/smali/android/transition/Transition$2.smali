.class Landroid/transition/Transition$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/Transition;->animate(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/transition/Transition;


# direct methods
.method constructor <init>(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 1333
    iput-object p1, p0, Landroid/transition/Transition$2;->this$0:Landroid/transition/Transition;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1336
    iget-object v0, p0, Landroid/transition/Transition$2;->this$0:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->end()V

    .line 1337
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1338
    return-void
.end method
