.class public Landroid/filterfw/MffEnvironment;
.super Ljava/lang/Object;
.source "MffEnvironment.java"


# instance fields
.field private mContext:Landroid/filterfw/core/FilterContext;


# direct methods
.method protected constructor <init>(Landroid/filterfw/core/FrameManager;)V
    .locals 1
    .param p1, "frameManager"    # Landroid/filterfw/core/FrameManager;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance p1, Landroid/filterfw/core/CachedFrameManager;

    .end local p1    # "frameManager":Landroid/filterfw/core/FrameManager;
    invoke-direct {p1}, Landroid/filterfw/core/CachedFrameManager;-><init>()V

    .line 50
    .restart local p1    # "frameManager":Landroid/filterfw/core/FrameManager;
    :cond_0
    new-instance v0, Landroid/filterfw/core/FilterContext;

    invoke-direct {v0}, Landroid/filterfw/core/FilterContext;-><init>()V

    iput-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    .line 51
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/FilterContext;->setFrameManager(Landroid/filterfw/core/FrameManager;)V

    .line 53
    return-void
.end method


# virtual methods
.method public activateGLEnvironment()V
    .locals 3

    .prologue
    .line 85
    iget-object v1, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .line 86
    .local v0, "glEnv":Landroid/filterfw/core/GLEnvironment;
    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->activate()V

    .line 91
    return-void

    .line 89
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "No GLEnvironment in place to activate!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createGLEnvironment()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Landroid/filterfw/core/GLEnvironment;

    invoke-direct {v0}, Landroid/filterfw/core/GLEnvironment;-><init>()V

    .line 75
    .local v0, "glEnvironment":Landroid/filterfw/core/GLEnvironment;
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->initWithNewContext()V

    .line 76
    invoke-virtual {p0, v0}, Landroid/filterfw/MffEnvironment;->setGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V

    .line 77
    return-void
.end method

.method public deactivateGLEnvironment()V
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .line 100
    .local v0, "glEnv":Landroid/filterfw/core/GLEnvironment;
    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->deactivate()V

    .line 105
    return-void

    .line 103
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "No GLEnvironment in place to deactivate!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getContext()Landroid/filterfw/core/FilterContext;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    return-object v0
.end method

.method public setGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V
    .locals 1
    .param p1, "glEnvironment"    # Landroid/filterfw/core/GLEnvironment;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/filterfw/MffEnvironment;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/FilterContext;->initGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V

    .line 68
    return-void
.end method
