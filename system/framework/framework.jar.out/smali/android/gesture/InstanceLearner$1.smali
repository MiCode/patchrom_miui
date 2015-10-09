.class final Landroid/gesture/InstanceLearner$1;
.super Ljava/lang/Object;
.source "InstanceLearner.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gesture/InstanceLearner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/gesture/Prediction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/gesture/Prediction;Landroid/gesture/Prediction;)I
    .locals 5
    .param p1, "object1"    # Landroid/gesture/Prediction;
    .param p2, "object2"    # Landroid/gesture/Prediction;

    .prologue
    .line 31
    iget-wide v0, p1, Landroid/gesture/Prediction;->score:D

    .line 32
    .local v0, "score1":D
    iget-wide v2, p2, Landroid/gesture/Prediction;->score:D

    .line 33
    .local v2, "score2":D
    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 34
    const/4 v4, -0x1

    .line 38
    :goto_0
    return v4

    .line 35
    :cond_0
    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    .line 36
    const/4 v4, 0x1

    goto :goto_0

    .line 38
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Landroid/gesture/Prediction;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/gesture/Prediction;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/gesture/InstanceLearner$1;->compare(Landroid/gesture/Prediction;Landroid/gesture/Prediction;)I

    move-result v0

    return v0
.end method
