.class public abstract Landroid/filterfw/core/GraphRunner;
.super Ljava/lang/Object;
.source "GraphRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;
    }
.end annotation


# static fields
.field public static final RESULT_BLOCKED:I = 0x4

.field public static final RESULT_ERROR:I = 0x6

.field public static final RESULT_FINISHED:I = 0x2

.field public static final RESULT_RUNNING:I = 0x1

.field public static final RESULT_SLEEPING:I = 0x3

.field public static final RESULT_STOPPED:I = 0x5

.field public static final RESULT_UNKNOWN:I


# instance fields
.field protected mFilterContext:Landroid/filterfw/core/FilterContext;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/core/GraphRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    .line 50
    iput-object p1, p0, Landroid/filterfw/core/GraphRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    .line 51
    return-void
.end method


# virtual methods
.method protected activateGlContext()Z
    .locals 2

    .prologue
    .line 65
    iget-object v1, p0, Landroid/filterfw/core/GraphRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .line 66
    .local v0, "glEnv":Landroid/filterfw/core/GLEnvironment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->activate()V

    .line 68
    const/4 v1, 0x1

    .line 70
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract close()V
.end method

.method protected deactivateGlContext()V
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Landroid/filterfw/core/GraphRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .line 78
    .local v0, "glEnv":Landroid/filterfw/core/GLEnvironment;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->deactivate()V

    .line 81
    :cond_0
    return-void
.end method

.method public getContext()Landroid/filterfw/core/FilterContext;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/filterfw/core/GraphRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    return-object v0
.end method

.method public abstract getError()Ljava/lang/Exception;
.end method

.method public abstract getGraph()Landroid/filterfw/core/FilterGraph;
.end method

.method public abstract isRunning()Z
.end method

.method public abstract run()V
.end method

.method public abstract setDoneCallback(Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;)V
.end method

.method public abstract stop()V
.end method
