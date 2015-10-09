.class Landroid/animation/AnimatorSet$Dependency;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dependency"
.end annotation


# static fields
.field static final AFTER:I = 0x1

.field static final WITH:I


# instance fields
.field public node:Landroid/animation/AnimatorSet$Node;

.field public rule:I


# direct methods
.method public constructor <init>(Landroid/animation/AnimatorSet$Node;I)V
    .locals 0
    .param p1, "node"    # Landroid/animation/AnimatorSet$Node;
    .param p2, "rule"    # I

    .prologue
    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 926
    iput-object p1, p0, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    .line 927
    iput p2, p0, Landroid/animation/AnimatorSet$Dependency;->rule:I

    .line 928
    return-void
.end method
