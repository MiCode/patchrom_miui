.class public Landroid/filterfw/core/FilterFunction;
.super Ljava/lang/Object;
.source "FilterFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/core/FilterFunction$FrameHolderPort;
    }
.end annotation


# instance fields
.field private mFilter:Landroid/filterfw/core/Filter;

.field private mFilterContext:Landroid/filterfw/core/FilterContext;

.field private mFilterIsSetup:Z

.field private mResultHolders:[Landroid/filterfw/core/FilterFunction$FrameHolderPort;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Filter;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "filter"    # Landroid/filterfw/core/Filter;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterfw/core/FilterFunction;->mFilterIsSetup:Z

    .line 39
    iput-object p1, p0, Landroid/filterfw/core/FilterFunction;->mFilterContext:Landroid/filterfw/core/FilterContext;

    .line 40
    iput-object p2, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    .line 41
    return-void
.end method

.method private connectFilterOutputs()V
    .locals 5

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "i":I
    iget-object v3, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v3}, Landroid/filterfw/core/Filter;->getNumberOfOutputs()I

    move-result v3

    new-array v3, v3, [Landroid/filterfw/core/FilterFunction$FrameHolderPort;

    iput-object v3, p0, Landroid/filterfw/core/FilterFunction;->mResultHolders:[Landroid/filterfw/core/FilterFunction$FrameHolderPort;

    .line 133
    iget-object v3, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v3}, Landroid/filterfw/core/Filter;->getOutputPorts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/OutputPort;

    .line 134
    .local v2, "outputPort":Landroid/filterfw/core/OutputPort;
    iget-object v3, p0, Landroid/filterfw/core/FilterFunction;->mResultHolders:[Landroid/filterfw/core/FilterFunction$FrameHolderPort;

    new-instance v4, Landroid/filterfw/core/FilterFunction$FrameHolderPort;

    invoke-direct {v4, p0}, Landroid/filterfw/core/FilterFunction$FrameHolderPort;-><init>(Landroid/filterfw/core/FilterFunction;)V

    aput-object v4, v3, v0

    .line 135
    iget-object v3, p0, Landroid/filterfw/core/FilterFunction;->mResultHolders:[Landroid/filterfw/core/FilterFunction$FrameHolderPort;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/filterfw/core/OutputPort;->connectTo(Landroid/filterfw/core/InputPort;)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v2    # "outputPort":Landroid/filterfw/core/OutputPort;
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    iget-object v1, p0, Landroid/filterfw/core/FilterFunction;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/Filter;->performClose(Landroid/filterfw/core/FilterContext;)V

    .line 102
    return-void
.end method

.method public execute(Landroid/filterfw/core/KeyValueMap;)Landroid/filterfw/core/Frame;
    .locals 11
    .param p1, "inputMap"    # Landroid/filterfw/core/KeyValueMap;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 44
    iget-object v6, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v6}, Landroid/filterfw/core/Filter;->getNumberOfOutputs()I

    move-result v2

    .line 47
    .local v2, "filterOutCount":I
    if-le v2, v9, :cond_0

    .line 48
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calling execute on filter "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with multiple "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "outputs! Use executeMulti() instead!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 53
    :cond_0
    iget-boolean v6, p0, Landroid/filterfw/core/FilterFunction;->mFilterIsSetup:Z

    if-nez v6, :cond_1

    .line 54
    invoke-direct {p0}, Landroid/filterfw/core/FilterFunction;->connectFilterOutputs()V

    .line 55
    iput-boolean v9, p0, Landroid/filterfw/core/FilterFunction;->mFilterIsSetup:Z

    .line 59
    :cond_1
    const/4 v0, 0x0

    .line 60
    .local v0, "didActivateGLEnv":Z
    iget-object v6, p0, Landroid/filterfw/core/FilterFunction;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v6}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v3

    .line 61
    .local v3, "glEnv":Landroid/filterfw/core/GLEnvironment;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/filterfw/core/GLEnvironment;->isActive()Z

    move-result v6

    if-nez v6, :cond_2

    .line 62
    invoke-virtual {v3}, Landroid/filterfw/core/GLEnvironment;->activate()V

    .line 63
    const/4 v0, 0x1

    .line 67
    :cond_2
    invoke-virtual {p1}, Landroid/filterfw/core/KeyValueMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 68
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/filterfw/core/Frame;

    if-eqz v6, :cond_3

    .line 69
    iget-object v8, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/filterfw/core/Frame;

    invoke-virtual {v8, v6, v7}, Landroid/filterfw/core/Filter;->pushInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    goto :goto_0

    .line 71
    :cond_3
    iget-object v7, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/filterfw/core/Filter;->pushInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    iget-object v6, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v6}, Landroid/filterfw/core/Filter;->getStatus()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    .line 77
    iget-object v6, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v6}, Landroid/filterfw/core/Filter;->openOutputs()V

    .line 80
    :cond_5
    iget-object v6, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    iget-object v7, p0, Landroid/filterfw/core/FilterFunction;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v6, v7}, Landroid/filterfw/core/Filter;->performProcess(Landroid/filterfw/core/FilterContext;)V

    .line 83
    const/4 v5, 0x0

    .line 84
    .local v5, "result":Landroid/filterfw/core/Frame;
    if-ne v2, v9, :cond_6

    iget-object v6, p0, Landroid/filterfw/core/FilterFunction;->mResultHolders:[Landroid/filterfw/core/FilterFunction$FrameHolderPort;

    aget-object v6, v6, v10

    invoke-virtual {v6}, Landroid/filterfw/core/FilterFunction$FrameHolderPort;->hasFrame()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 85
    iget-object v6, p0, Landroid/filterfw/core/FilterFunction;->mResultHolders:[Landroid/filterfw/core/FilterFunction$FrameHolderPort;

    aget-object v6, v6, v10

    invoke-virtual {v6}, Landroid/filterfw/core/FilterFunction$FrameHolderPort;->pullFrame()Landroid/filterfw/core/Frame;

    move-result-object v5

    .line 89
    :cond_6
    if-eqz v0, :cond_7

    .line 90
    invoke-virtual {v3}, Landroid/filterfw/core/GLEnvironment;->deactivate()V

    .line 93
    :cond_7
    return-object v5
.end method

.method public varargs executeWithArgList([Ljava/lang/Object;)Landroid/filterfw/core/Frame;
    .locals 1
    .param p1, "inputs"    # [Ljava/lang/Object;

    .prologue
    .line 97
    invoke-static {p1}, Landroid/filterfw/core/KeyValueMap;->fromKeyValues([Ljava/lang/Object;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/FilterFunction;->execute(Landroid/filterfw/core/KeyValueMap;)Landroid/filterfw/core/Frame;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/filterfw/core/FilterContext;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilterContext:Landroid/filterfw/core/FilterContext;

    return-object v0
.end method

.method public getFilter()Landroid/filterfw/core/Filter;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    return-object v0
.end method

.method public setInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "frame"    # Landroid/filterfw/core/Frame;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/Filter;->setInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 114
    return-void
.end method

.method public setInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 117
    iget-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public tearDown()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    iget-object v1, p0, Landroid/filterfw/core/FilterFunction;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/Filter;->performTearDown(Landroid/filterfw/core/FilterContext;)V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    .line 123
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
