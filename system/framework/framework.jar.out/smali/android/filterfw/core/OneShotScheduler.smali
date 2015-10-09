.class public Landroid/filterfw/core/OneShotScheduler;
.super Landroid/filterfw/core/RoundRobinScheduler;
.source "OneShotScheduler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OneShotScheduler"


# instance fields
.field private final mLogVerbose:Z

.field private scheduled:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FilterGraph;)V
    .locals 2
    .param p1, "graph"    # Landroid/filterfw/core/FilterGraph;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/filterfw/core/RoundRobinScheduler;-><init>(Landroid/filterfw/core/FilterGraph;)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/OneShotScheduler;->scheduled:Ljava/util/HashMap;

    .line 43
    const-string v0, "OneShotScheduler"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterfw/core/OneShotScheduler;->mLogVerbose:Z

    .line 44
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/filterfw/core/RoundRobinScheduler;->reset()V

    .line 49
    iget-object v0, p0, Landroid/filterfw/core/OneShotScheduler;->scheduled:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 50
    return-void
.end method

.method public scheduleNextNode()Landroid/filterfw/core/Filter;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 54
    const/4 v1, 0x0

    .line 57
    .local v1, "first":Landroid/filterfw/core/Filter;
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/filterfw/core/RoundRobinScheduler;->scheduleNextNode()Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 58
    .local v0, "filter":Landroid/filterfw/core/Filter;
    if-nez v0, :cond_3

    .line 59
    iget-boolean v3, p0, Landroid/filterfw/core/OneShotScheduler;->mLogVerbose:Z

    if-eqz v3, :cond_1

    const-string v3, "OneShotScheduler"

    const-string v4, "No filters available to run."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v2

    .line 76
    .end local v0    # "filter":Landroid/filterfw/core/Filter;
    :cond_2
    :goto_1
    return-object v0

    .line 62
    .restart local v0    # "filter":Landroid/filterfw/core/Filter;
    :cond_3
    iget-object v3, p0, Landroid/filterfw/core/OneShotScheduler;->scheduled:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 63
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getNumberOfConnectedInputs()I

    move-result v2

    if-nez v2, :cond_4

    .line 64
    iget-object v2, p0, Landroid/filterfw/core/OneShotScheduler;->scheduled:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_4
    iget-boolean v2, p0, Landroid/filterfw/core/OneShotScheduler;->mLogVerbose:Z

    if-eqz v2, :cond_2

    const-string v2, "OneShotScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling filter \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getFilterClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 69
    :cond_5
    if-ne v1, v0, :cond_7

    .line 75
    iget-boolean v3, p0, Landroid/filterfw/core/OneShotScheduler;->mLogVerbose:Z

    if-eqz v3, :cond_6

    const-string v3, "OneShotScheduler"

    const-string v4, "One pass through graph completed."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object v0, v2

    .line 76
    goto :goto_1

    .line 73
    :cond_7
    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0
.end method
