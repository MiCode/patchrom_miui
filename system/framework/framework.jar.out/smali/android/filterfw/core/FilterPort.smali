.class public abstract Landroid/filterfw/core/FilterPort;
.super Ljava/lang/Object;
.source "FilterPort.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterPort"


# instance fields
.field protected mChecksType:Z

.field protected mFilter:Landroid/filterfw/core/Filter;

.field protected mIsBlocking:Z

.field protected mIsOpen:Z

.field private mLogVerbose:Z

.field protected mName:Ljava/lang/String;

.field protected mPortFormat:Landroid/filterfw/core/FrameFormat;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V
    .locals 2
    .param p1, "filter"    # Landroid/filterfw/core/Filter;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsBlocking:Z

    .line 33
    iput-boolean v1, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    .line 34
    iput-boolean v1, p0, Landroid/filterfw/core/FilterPort;->mChecksType:Z

    .line 39
    iput-object p2, p0, Landroid/filterfw/core/FilterPort;->mName:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Landroid/filterfw/core/FilterPort;->mFilter:Landroid/filterfw/core/Filter;

    .line 41
    const-string v0, "FilterPort"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mLogVerbose:Z

    .line 42
    return-void
.end method


# virtual methods
.method protected assertPortIsOpen()V
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/filterfw/core/FilterPort;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal operation on closed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    return-void
.end method

.method protected checkFrameManager(Landroid/filterfw/core/Frame;Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "frame"    # Landroid/filterfw/core/Frame;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is managed by foreign FrameManager! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    return-void
.end method

.method protected checkFrameType(Landroid/filterfw/core/Frame;Z)V
    .locals 3
    .param p1, "frame"    # Landroid/filterfw/core/Frame;
    .param p2, "forceCheck"    # Z

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mChecksType:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FrameFormat;->isCompatibleWith(Landroid/filterfw/core/FrameFormat;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frame passed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is of incorrect type! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    return-void
.end method

.method public abstract clear()V
.end method

.method public close()V
    .locals 3

    .prologue
    .line 80
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    if-eqz v0, :cond_0

    .line 81
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FilterPort"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    .line 84
    return-void
.end method

.method public abstract filterMustClose()Z
.end method

.method public getFilter()Landroid/filterfw/core/Filter;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/filterfw/core/FilterPort;->mFilter:Landroid/filterfw/core/Filter;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/filterfw/core/FilterPort;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPortFormat()Landroid/filterfw/core/FrameFormat;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    return-object v0
.end method

.method public abstract hasFrame()Z
.end method

.method public isAttached()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Landroid/filterfw/core/FilterPort;->mFilter:Landroid/filterfw/core/Filter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsBlocking:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    return v0
.end method

.method public abstract isReady()Z
.end method

.method public open()V
    .locals 3

    .prologue
    .line 73
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    if-nez v0, :cond_0

    .line 74
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FilterPort"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    .line 77
    return-void
.end method

.method public abstract pullFrame()Landroid/filterfw/core/Frame;
.end method

.method public abstract pushFrame(Landroid/filterfw/core/Frame;)V
.end method

.method public setBlocking(Z)V
    .locals 0
    .param p1, "blocking"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Landroid/filterfw/core/FilterPort;->mIsBlocking:Z

    .line 66
    return-void
.end method

.method public setChecksType(Z)V
    .locals 0
    .param p1, "checksType"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Landroid/filterfw/core/FilterPort;->mChecksType:Z

    .line 70
    return-void
.end method

.method public abstract setFrame(Landroid/filterfw/core/Frame;)V
.end method

.method public setPortFormat(Landroid/filterfw/core/FrameFormat;)V
    .locals 0
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 53
    iput-object p1, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "port \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/core/FilterPort;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/core/FilterPort;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
