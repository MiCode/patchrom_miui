.class public Landroid/filterfw/core/RandomScheduler;
.super Landroid/filterfw/core/Scheduler;
.source "RandomScheduler.java"


# instance fields
.field private mRand:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FilterGraph;)V
    .locals 1
    .param p1, "graph"    # Landroid/filterfw/core/FilterGraph;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/filterfw/core/Scheduler;-><init>(Landroid/filterfw/core/FilterGraph;)V

    .line 31
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/RandomScheduler;->mRand:Ljava/util/Random;

    .line 35
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public scheduleNextNode()Landroid/filterfw/core/Filter;
    .locals 6

    .prologue
    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 44
    .local v0, "candidates":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/filterfw/core/Filter;>;"
    invoke-virtual {p0}, Landroid/filterfw/core/RandomScheduler;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v4

    invoke-virtual {v4}, Landroid/filterfw/core/FilterGraph;->getFilters()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/Filter;

    .line 45
    .local v1, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v1}, Landroid/filterfw/core/Filter;->canProcess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    .end local v1    # "filter":Landroid/filterfw/core/Filter;
    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 49
    iget-object v4, p0, Landroid/filterfw/core/RandomScheduler;->mRand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 50
    .local v3, "r":I
    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/filterfw/core/Filter;

    .line 52
    .end local v3    # "r":I
    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
