.class public abstract Landroid/filterfw/core/InputPort;
.super Landroid/filterfw/core/FilterPort;
.source "InputPort.java"


# instance fields
.field protected mSourcePort:Landroid/filterfw/core/OutputPort;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V
    .locals 0
    .param p1, "filter"    # Landroid/filterfw/core/Filter;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/FilterPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public acceptsFrame()Z
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/filterfw/core/InputPort;->hasFrame()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->close()V

    .line 53
    :cond_0
    invoke-super {p0}, Landroid/filterfw/core/FilterPort;->close()V

    .line 54
    return-void
.end method

.method public filterMustClose()Z
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/filterfw/core/InputPort;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/filterfw/core/InputPort;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/filterfw/core/InputPort;->hasFrame()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSourceFilter()Landroid/filterfw/core/Filter;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->getFilter()Landroid/filterfw/core/Filter;

    move-result-object v0

    goto :goto_0
.end method

.method public getSourceFormat()Landroid/filterfw/core/FrameFormat;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->getPortFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/filterfw/core/InputPort;->getPortFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    goto :goto_0
.end method

.method public getSourcePort()Landroid/filterfw/core/OutputPort;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/filterfw/core/InputPort;->hasFrame()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/filterfw/core/InputPort;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/filterfw/core/FilterPort;->open()V

    .line 44
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->open()V

    .line 47
    :cond_0
    return-void
.end method

.method public setSourcePort(Landroid/filterfw/core/OutputPort;)V
    .locals 3
    .param p1, "source"    # Landroid/filterfw/core/OutputPort;

    .prologue
    .line 32
    iget-object v0, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Landroid/filterfw/core/InputPort;->mSourcePort:Landroid/filterfw/core/OutputPort;

    .line 36
    return-void
.end method

.method public abstract transfer(Landroid/filterfw/core/FilterContext;)V
.end method
