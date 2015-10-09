.class Landroid/transition/Transition$AnimationInfo;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationInfo"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field values:Landroid/transition/TransitionValues;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/transition/TransitionValues;

    .prologue
    .line 1638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1639
    iput-object p1, p0, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    .line 1640
    iput-object p2, p0, Landroid/transition/Transition$AnimationInfo;->name:Ljava/lang/String;

    .line 1641
    iput-object p3, p0, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    .line 1642
    return-void
.end method
