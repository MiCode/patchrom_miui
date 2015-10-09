.class public Landroid/filterfw/GraphEnvironment;
.super Landroid/filterfw/MffEnvironment;
.source "GraphEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/GraphEnvironment$GraphHandle;
    }
.end annotation


# static fields
.field public static final MODE_ASYNCHRONOUS:I = 0x1

.field public static final MODE_SYNCHRONOUS:I = 0x2


# instance fields
.field private mGraphReader:Landroid/filterfw/io/GraphReader;

.field private mGraphs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/filterfw/GraphEnvironment$GraphHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/filterfw/MffEnvironment;-><init>(Landroid/filterfw/core/FrameManager;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/filterfw/core/FrameManager;Landroid/filterfw/io/GraphReader;)V
    .locals 1
    .param p1, "frameManager"    # Landroid/filterfw/core/FrameManager;
    .param p2, "reader"    # Landroid/filterfw/io/GraphReader;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/filterfw/MffEnvironment;-><init>(Landroid/filterfw/core/FrameManager;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    .line 101
    iput-object p2, p0, Landroid/filterfw/GraphEnvironment;->mGraphReader:Landroid/filterfw/io/GraphReader;

    .line 102
    return-void
.end method


# virtual methods
.method public addGraph(Landroid/filterfw/core/FilterGraph;)I
    .locals 2
    .param p1, "graph"    # Landroid/filterfw/core/FilterGraph;

    .prologue
    .line 152
    new-instance v0, Landroid/filterfw/GraphEnvironment$GraphHandle;

    invoke-direct {v0, p0, p1}, Landroid/filterfw/GraphEnvironment$GraphHandle;-><init>(Landroid/filterfw/GraphEnvironment;Landroid/filterfw/core/FilterGraph;)V

    .line 153
    .local v0, "graphHandle":Landroid/filterfw/GraphEnvironment$GraphHandle;
    iget-object v1, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v1, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public varargs addReferences([Ljava/lang/Object;)V
    .locals 1
    .param p1, "references"    # [Ljava/lang/Object;

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/filterfw/GraphEnvironment;->getGraphReader()Landroid/filterfw/io/GraphReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/filterfw/io/GraphReader;->addReferencesByKeysAndValues([Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public getGraph(I)Landroid/filterfw/core/FilterGraph;
    .locals 3
    .param p1, "graphId"    # I

    .prologue
    .line 166
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid graph ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " specified in runGraph()!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/GraphEnvironment$GraphHandle;

    invoke-virtual {v0}, Landroid/filterfw/GraphEnvironment$GraphHandle;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v0

    return-object v0
.end method

.method public getGraphReader()Landroid/filterfw/io/GraphReader;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphReader:Landroid/filterfw/io/GraphReader;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Landroid/filterfw/io/TextGraphReader;

    invoke-direct {v0}, Landroid/filterfw/io/TextGraphReader;-><init>()V

    iput-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphReader:Landroid/filterfw/io/GraphReader;

    .line 111
    :cond_0
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphReader:Landroid/filterfw/io/GraphReader;

    return-object v0
.end method

.method public getRunner(II)Landroid/filterfw/core/GraphRunner;
    .locals 3
    .param p1, "graphId"    # I
    .param p2, "executionMode"    # I

    .prologue
    .line 184
    packed-switch p2, :pswitch_data_0

    .line 192
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid execution mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " specified in getRunner()!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :pswitch_0
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/GraphEnvironment$GraphHandle;

    invoke-virtual {p0}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/GraphEnvironment$GraphHandle;->getAsyncRunner(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/AsyncRunner;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/GraphEnvironment$GraphHandle;

    invoke-virtual {p0}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/GraphEnvironment$GraphHandle;->getSyncRunner(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GraphRunner;

    move-result-object v0

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadGraph(Landroid/content/Context;I)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 135
    .local v1, "graph":Landroid/filterfw/core/FilterGraph;
    :try_start_0
    invoke-virtual {p0}, Landroid/filterfw/GraphEnvironment;->getGraphReader()Landroid/filterfw/io/GraphReader;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/filterfw/io/GraphReader;->readGraphResource(Landroid/content/Context;I)Landroid/filterfw/core/FilterGraph;
    :try_end_0
    .catch Landroid/filterfw/io/GraphIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 141
    invoke-virtual {p0, v1}, Landroid/filterfw/GraphEnvironment;->addGraph(Landroid/filterfw/core/FilterGraph;)I

    move-result v2

    return v2

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/filterfw/io/GraphIOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read graph: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/filterfw/io/GraphIOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
