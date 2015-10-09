.class public Landroid/filterfw/core/FilterContext;
.super Ljava/lang/Object;
.source "FilterContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;
    }
.end annotation


# instance fields
.field private mFrameManager:Landroid/filterfw/core/FrameManager;

.field private mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

.field private mGraphs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/filterfw/core/FilterGraph;",
            ">;"
        }
    .end annotation
.end field

.field private mStoredFrames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/filterfw/core/Frame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/FilterContext;->mGraphs:Ljava/util/Set;

    .line 68
    return-void
.end method


# virtual methods
.method final addGraph(Landroid/filterfw/core/FilterGraph;)V
    .locals 1
    .param p1, "graph"    # Landroid/filterfw/core/FilterGraph;

    .prologue
    .line 124
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mGraphs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public declared-synchronized fetchFrame(Ljava/lang/String;)Landroid/filterfw/core/Frame;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/Frame;

    .line 83
    .local v0, "frame":Landroid/filterfw/core/Frame;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->onFrameFetch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    monitor-exit p0

    return-object v0

    .line 82
    .end local v0    # "frame":Landroid/filterfw/core/Frame;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getFrameManager()Landroid/filterfw/core/FrameManager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mFrameManager:Landroid/filterfw/core/FrameManager;

    return-object v0
.end method

.method public getGLEnvironment()Landroid/filterfw/core/GLEnvironment;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    return-object v0
.end method

.method public initGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V
    .locals 2
    .param p1, "environment"    # Landroid/filterfw/core/GLEnvironment;

    .prologue
    .line 60
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    if-nez v0, :cond_0

    .line 61
    iput-object p1, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    .line 66
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to re-initialize GL Environment for FilterContext!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized removeFrame(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/Frame;

    .line 91
    .local v0, "frame":Landroid/filterfw/core/Frame;
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    monitor-exit p0

    return-void

    .line 90
    .end local v0    # "frame":Landroid/filterfw/core/Frame;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setFrameManager(Landroid/filterfw/core/FrameManager;)V
    .locals 2
    .param p1, "manager"    # Landroid/filterfw/core/FrameManager;

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempting to set null FrameManager!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/filterfw/core/FrameManager;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to set FrameManager which is already bound to another FilterContext!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    iput-object p1, p0, Landroid/filterfw/core/FilterContext;->mFrameManager:Landroid/filterfw/core/FrameManager;

    .line 51
    iget-object v0, p0, Landroid/filterfw/core/FilterContext;->mFrameManager:Landroid/filterfw/core/FrameManager;

    invoke-virtual {v0, p0}, Landroid/filterfw/core/FrameManager;->setContext(Landroid/filterfw/core/FilterContext;)V

    .line 53
    return-void
.end method

.method public declared-synchronized storeFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "frame"    # Landroid/filterfw/core/Frame;

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/filterfw/core/FilterContext;->fetchFrame(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 74
    .local v0, "storedFrame":Landroid/filterfw/core/Frame;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 77
    :cond_0
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->onFrameStore()V

    .line 78
    iget-object v1, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 73
    .end local v0    # "storedFrame":Landroid/filterfw/core/Frame;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized tearDown()V
    .locals 4

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/Frame;

    .line 100
    .local v0, "frame":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 99
    .end local v0    # "frame":Landroid/filterfw/core/Frame;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 102
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/filterfw/core/FilterContext;->mStoredFrames:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 105
    iget-object v3, p0, Landroid/filterfw/core/FilterContext;->mGraphs:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/FilterGraph;

    .line 106
    .local v1, "graph":Landroid/filterfw/core/FilterGraph;
    invoke-virtual {v1, p0}, Landroid/filterfw/core/FilterGraph;->tearDown(Landroid/filterfw/core/FilterContext;)V

    goto :goto_1

    .line 108
    .end local v1    # "graph":Landroid/filterfw/core/FilterGraph;
    :cond_1
    iget-object v3, p0, Landroid/filterfw/core/FilterContext;->mGraphs:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 111
    iget-object v3, p0, Landroid/filterfw/core/FilterContext;->mFrameManager:Landroid/filterfw/core/FrameManager;

    if-eqz v3, :cond_2

    .line 112
    iget-object v3, p0, Landroid/filterfw/core/FilterContext;->mFrameManager:Landroid/filterfw/core/FrameManager;

    invoke-virtual {v3}, Landroid/filterfw/core/FrameManager;->tearDown()V

    .line 113
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/filterfw/core/FilterContext;->mFrameManager:Landroid/filterfw/core/FrameManager;

    .line 117
    :cond_2
    iget-object v3, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    if-eqz v3, :cond_3

    .line 118
    iget-object v3, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-virtual {v3}, Landroid/filterfw/core/GLEnvironment;->tearDown()V

    .line 119
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/filterfw/core/FilterContext;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :cond_3
    monitor-exit p0

    return-void
.end method
