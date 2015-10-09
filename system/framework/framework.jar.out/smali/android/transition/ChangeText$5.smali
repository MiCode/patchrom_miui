.class Landroid/transition/ChangeText$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/ChangeText;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/transition/ChangeText;

.field final synthetic val$endColor:I

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Landroid/transition/ChangeText$5;->this$0:Landroid/transition/ChangeText;

    iput-object p2, p0, Landroid/transition/ChangeText$5;->val$view:Landroid/widget/TextView;

    iput p3, p0, Landroid/transition/ChangeText$5;->val$endColor:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 253
    iget-object v0, p0, Landroid/transition/ChangeText$5;->val$view:Landroid/widget/TextView;

    iget v1, p0, Landroid/transition/ChangeText$5;->val$endColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    return-void
.end method
