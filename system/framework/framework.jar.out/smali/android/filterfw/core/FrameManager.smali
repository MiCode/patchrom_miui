.class public abstract Landroid/filterfw/core/FrameManager;
.super Ljava/lang/Object;
.source "FrameManager.java"


# instance fields
.field private mContext:Landroid/filterfw/core/FilterContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public duplicateFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .locals 2
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 37
    .local v0, "result":Landroid/filterfw/core/Frame;
    invoke-virtual {v0, p1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 38
    return-object v0
.end method

.method public duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;
    .locals 3
    .param p1, "frame"    # Landroid/filterfw/core/Frame;
    .param p2, "newTarget"    # I

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 43
    .local v0, "newFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v0, p2}, Landroid/filterfw/core/MutableFrameFormat;->setTarget(I)V

    .line 44
    invoke-virtual {p0, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 45
    .local v1, "result":Landroid/filterfw/core/Frame;
    invoke-virtual {v1, p1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 46
    return-object v1
.end method

.method public getContext()Landroid/filterfw/core/FilterContext;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/filterfw/core/FrameManager;->mContext:Landroid/filterfw/core/FilterContext;

    return-object v0
.end method

.method public getGLEnvironment()Landroid/filterfw/core/GLEnvironment;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/filterfw/core/FrameManager;->mContext:Landroid/filterfw/core/FilterContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/FrameManager;->mContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;
.end method

.method public abstract newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;
.end method

.method public abstract releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
.end method

.method public abstract retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
.end method

.method setContext(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 65
    iput-object p1, p0, Landroid/filterfw/core/FrameManager;->mContext:Landroid/filterfw/core/FilterContext;

    .line 66
    return-void
.end method

.method public tearDown()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
