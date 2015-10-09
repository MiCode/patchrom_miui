.class Landroid/filterfw/GraphEnvironment$GraphHandle;
.super Ljava/lang/Object;
.source "GraphEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/GraphEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GraphHandle"
.end annotation


# instance fields
.field private mAsyncRunner:Landroid/filterfw/core/AsyncRunner;

.field private mGraph:Landroid/filterfw/core/FilterGraph;

.field private mSyncRunner:Landroid/filterfw/core/SyncRunner;

.field final synthetic this$0:Landroid/filterfw/GraphEnvironment;


# direct methods
.method public constructor <init>(Landroid/filterfw/GraphEnvironment;Landroid/filterfw/core/FilterGraph;)V
    .locals 0
    .param p2, "graph"    # Landroid/filterfw/core/FilterGraph;

    .prologue
    .line 59
    iput-object p1, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->this$0:Landroid/filterfw/GraphEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mGraph:Landroid/filterfw/core/FilterGraph;

    .line 61
    return-void
.end method


# virtual methods
.method public getAsyncRunner(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/AsyncRunner;
    .locals 2
    .param p1, "environment"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mAsyncRunner:Landroid/filterfw/core/AsyncRunner;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Landroid/filterfw/core/AsyncRunner;

    const-class v1, Landroid/filterfw/core/RoundRobinScheduler;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/AsyncRunner;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mAsyncRunner:Landroid/filterfw/core/AsyncRunner;

    .line 70
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mAsyncRunner:Landroid/filterfw/core/AsyncRunner;

    iget-object v1, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mGraph:Landroid/filterfw/core/FilterGraph;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/AsyncRunner;->setGraph(Landroid/filterfw/core/FilterGraph;)V

    .line 72
    :cond_0
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mAsyncRunner:Landroid/filterfw/core/AsyncRunner;

    return-object v0
.end method

.method public getGraph()Landroid/filterfw/core/FilterGraph;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mGraph:Landroid/filterfw/core/FilterGraph;

    return-object v0
.end method

.method public getSyncRunner(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GraphRunner;
    .locals 3
    .param p1, "environment"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mSyncRunner:Landroid/filterfw/core/SyncRunner;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Landroid/filterfw/core/SyncRunner;

    iget-object v1, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mGraph:Landroid/filterfw/core/FilterGraph;

    const-class v2, Landroid/filterfw/core/RoundRobinScheduler;

    invoke-direct {v0, p1, v1, v2}, Landroid/filterfw/core/SyncRunner;-><init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FilterGraph;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mSyncRunner:Landroid/filterfw/core/SyncRunner;

    .line 79
    :cond_0
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mSyncRunner:Landroid/filterfw/core/SyncRunner;

    return-object v0
.end method
