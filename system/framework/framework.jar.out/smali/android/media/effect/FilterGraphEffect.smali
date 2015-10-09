.class public Landroid/media/effect/FilterGraphEffect;
.super Landroid/media/effect/FilterEffect;
.source "FilterGraphEffect.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterGraphEffect"


# instance fields
.field protected mGraph:Landroid/filterfw/core/FilterGraph;

.field protected mInputName:Ljava/lang/String;

.field protected mOutputName:Ljava/lang/String;

.field protected mRunner:Landroid/filterfw/core/GraphRunner;

.field protected mSchedulerClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "context"    # Landroid/media/effect/EffectContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "graphString"    # Ljava/lang/String;
    .param p4, "inputName"    # Ljava/lang/String;
    .param p5, "outputName"    # Ljava/lang/String;
    .param p6, "scheduler"    # Ljava/lang/Class;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/media/effect/FilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    .line 65
    iput-object p4, p0, Landroid/media/effect/FilterGraphEffect;->mInputName:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Landroid/media/effect/FilterGraphEffect;->mOutputName:Ljava/lang/String;

    .line 67
    iput-object p6, p0, Landroid/media/effect/FilterGraphEffect;->mSchedulerClass:Ljava/lang/Class;

    .line 68
    invoke-direct {p0, p3}, Landroid/media/effect/FilterGraphEffect;->createGraph(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method private createGraph(Ljava/lang/String;)V
    .locals 6
    .param p1, "graphString"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v1, Landroid/filterfw/io/TextGraphReader;

    invoke-direct {v1}, Landroid/filterfw/io/TextGraphReader;-><init>()V

    .line 75
    .local v1, "reader":Landroid/filterfw/io/GraphReader;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/filterfw/io/GraphReader;->readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;

    move-result-object v2

    iput-object v2, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;
    :try_end_0
    .catch Landroid/filterfw/io/GraphIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    iget-object v2, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    if-nez v2, :cond_0

    .line 81
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not setup effect"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/filterfw/io/GraphIOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not setup effect"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 83
    .end local v0    # "e":Landroid/filterfw/io/GraphIOException;
    :cond_0
    new-instance v2, Landroid/filterfw/core/SyncRunner;

    invoke-virtual {p0}, Landroid/media/effect/FilterGraphEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    move-result-object v3

    iget-object v4, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    iget-object v5, p0, Landroid/media/effect/FilterGraphEffect;->mSchedulerClass:Ljava/lang/Class;

    invoke-direct {v2, v3, v4, v5}, Landroid/filterfw/core/SyncRunner;-><init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FilterGraph;Ljava/lang/Class;)V

    iput-object v2, p0, Landroid/media/effect/FilterGraphEffect;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 84
    return-void
.end method


# virtual methods
.method public apply(IIII)V
    .locals 5
    .param p1, "inputTexId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "outputTexId"    # I

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/media/effect/FilterGraphEffect;->beginGLEffect()V

    .line 89
    iget-object v3, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    iget-object v4, p0, Landroid/media/effect/FilterGraphEffect;->mInputName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 90
    .local v2, "src":Landroid/filterfw/core/Filter;
    if-eqz v2, :cond_0

    .line 91
    const-string/jumbo v3, "texId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    const-string/jumbo v3, "width"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    const-string v3, "height"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    iget-object v3, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    iget-object v4, p0, Landroid/media/effect/FilterGraphEffect;->mOutputName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 98
    .local v0, "dest":Landroid/filterfw/core/Filter;
    if-eqz v0, :cond_1

    .line 99
    const-string/jumbo v3, "texId"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    :try_start_0
    iget-object v3, p0, Landroid/media/effect/FilterGraphEffect;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v3}, Landroid/filterfw/core/GraphRunner;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    invoke-virtual {p0}, Landroid/media/effect/FilterGraphEffect;->endGLEffect()V

    .line 109
    return-void

    .line 95
    .end local v0    # "dest":Landroid/filterfw/core/Filter;
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Internal error applying effect"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    .restart local v0    # "dest":Landroid/filterfw/core/Filter;
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Internal error applying effect"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Internal error applying effect: "

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public release()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    invoke-virtual {p0}, Landroid/media/effect/FilterGraphEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterGraph;->tearDown(Landroid/filterfw/core/FilterContext;)V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    .line 119
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "parameterKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 113
    return-void
.end method
