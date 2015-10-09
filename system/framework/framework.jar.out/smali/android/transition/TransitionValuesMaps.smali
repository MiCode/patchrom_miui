.class Landroid/transition/TransitionValuesMaps;
.super Ljava/lang/Object;
.source "TransitionValuesMaps.java"


# instance fields
.field idValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field itemIdValues:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field viewValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    .line 28
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    return-void
.end method
