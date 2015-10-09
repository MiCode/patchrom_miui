.class public Landroid/filterfw/core/RoundRobinScheduler;
.super Landroid/filterfw/core/Scheduler;
.source "RoundRobinScheduler.java"


# instance fields
.field private mLastPos:I


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FilterGraph;)V
    .locals 1
    .param p1, "graph"    # Landroid/filterfw/core/FilterGraph;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/filterfw/core/Scheduler;-><init>(Landroid/filterfw/core/FilterGraph;)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    .line 34
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    .line 39
    return-void
.end method

.method public scheduleNextNode()Landroid/filterfw/core/Filter;
    .locals 8

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/filterfw/core/RoundRobinScheduler;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v6

    invoke-virtual {v6}, Landroid/filterfw/core/FilterGraph;->getFilters()Ljava/util/Set;

    move-result-object v0

    .line 44
    .local v0, "all_filters":Ljava/util/Set;, "Ljava/util/Set<Landroid/filterfw/core/Filter;>;"
    iget v6, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    if-lt v6, v7, :cond_0

    const/4 v6, -0x1

    iput v6, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    .line 45
    :cond_0
    const/4 v5, 0x0

    .line 46
    .local v5, "pos":I
    const/4 v2, 0x0

    .line 47
    .local v2, "first":Landroid/filterfw/core/Filter;
    const/4 v3, -0x1

    .line 48
    .local v3, "firstNdx":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/Filter;

    .line 49
    .local v1, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v1}, Landroid/filterfw/core/Filter;->canProcess()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 50
    iget v6, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    if-gt v5, v6, :cond_2

    .line 51
    if-nez v2, :cond_1

    .line 53
    move-object v2, v1

    .line 54
    move v3, v5

    .line 62
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 58
    :cond_2
    iput v5, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    .line 71
    .end local v1    # "filter":Landroid/filterfw/core/Filter;
    :goto_1
    return-object v1

    .line 65
    :cond_3
    if-eqz v2, :cond_4

    .line 66
    iput v3, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    move-object v1, v2

    .line 67
    goto :goto_1

    .line 71
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method
