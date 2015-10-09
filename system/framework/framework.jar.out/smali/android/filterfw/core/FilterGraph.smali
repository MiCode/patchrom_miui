.class public Landroid/filterfw/core/FilterGraph;
.super Ljava/lang/Object;
.source "FilterGraph.java"


# static fields
.field public static final AUTOBRANCH_OFF:I = 0x0

.field public static final AUTOBRANCH_SYNCED:I = 0x1

.field public static final AUTOBRANCH_UNSYNCED:I = 0x2

.field public static final TYPECHECK_DYNAMIC:I = 0x1

.field public static final TYPECHECK_OFF:I = 0x0

.field public static final TYPECHECK_STRICT:I = 0x2


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAutoBranchMode:I

.field private mDiscardUnconnectedOutputs:Z

.field private mFilters:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/filterfw/core/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private mIsReady:Z

.field private mLogVerbose:Z

.field private mNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/filterfw/core/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private mPreconnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/filterfw/core/OutputPort;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/filterfw/core/InputPort;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTypeCheckMode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/FilterGraph;->mNameMap:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/FilterGraph;->mPreconnections:Ljava/util/HashMap;

    .line 53
    iput-boolean v1, p0, Landroid/filterfw/core/FilterGraph;->mIsReady:Z

    .line 54
    iput v1, p0, Landroid/filterfw/core/FilterGraph;->mAutoBranchMode:I

    .line 55
    iput v2, p0, Landroid/filterfw/core/FilterGraph;->mTypeCheckMode:I

    .line 56
    iput-boolean v1, p0, Landroid/filterfw/core/FilterGraph;->mDiscardUnconnectedOutputs:Z

    .line 59
    const-string v0, "FilterGraph"

    iput-object v0, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    .line 63
    return-void
.end method

.method private checkConnections()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method private connectPorts()V
    .locals 14

    .prologue
    .line 313
    const/4 v1, 0x1

    .line 314
    .local v1, "branchId":I
    iget-object v11, p0, Landroid/filterfw/core/FilterGraph;->mPreconnections:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 315
    .local v5, "connection":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/filterfw/core/OutputPort;Ljava/util/LinkedList<Landroid/filterfw/core/InputPort;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/filterfw/core/OutputPort;

    .line 316
    .local v10, "outputPort":Landroid/filterfw/core/OutputPort;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/LinkedList;

    .line 317
    .local v9, "inputPorts":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/filterfw/core/InputPort;>;"
    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 318
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/filterfw/core/InputPort;

    invoke-virtual {v10, v11}, Landroid/filterfw/core/OutputPort;->connectTo(Landroid/filterfw/core/InputPort;)V

    goto :goto_0

    .line 319
    :cond_0
    iget v11, p0, Landroid/filterfw/core/FilterGraph;->mAutoBranchMode:I

    if-nez v11, :cond_1

    .line 320
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Attempting to connect "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to multiple "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "filter ports! Enable auto-branching to allow this."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 323
    :cond_1
    iget-boolean v11, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    if-eqz v11, :cond_2

    iget-object v11, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Creating branch for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_2
    const/4 v0, 0x0

    .line 325
    .local v0, "branch":Landroid/filterpacks/base/FrameBranch;
    iget v11, p0, Landroid/filterfw/core/FilterGraph;->mAutoBranchMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 326
    new-instance v0, Landroid/filterpacks/base/FrameBranch;

    .end local v0    # "branch":Landroid/filterpacks/base/FrameBranch;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "branch"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "branchId":I
    .local v2, "branchId":I
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Landroid/filterpacks/base/FrameBranch;-><init>(Ljava/lang/String;)V

    .line 330
    .restart local v0    # "branch":Landroid/filterpacks/base/FrameBranch;
    new-instance v4, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v4}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    .line 331
    .local v4, "branchParams":Landroid/filterfw/core/KeyValueMap;
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "outputs"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v0, v11}, Landroid/filterpacks/base/FrameBranch;->initWithAssignmentList([Ljava/lang/Object;)V

    .line 332
    invoke-virtual {p0, v0}, Landroid/filterfw/core/FilterGraph;->addFilter(Landroid/filterfw/core/Filter;)Z

    .line 333
    const-string v11, "in"

    invoke-virtual {v0, v11}, Landroid/filterpacks/base/FrameBranch;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/filterfw/core/OutputPort;->connectTo(Landroid/filterfw/core/InputPort;)V

    .line 334
    invoke-virtual {v9}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 335
    .local v8, "inputPortIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/filterfw/core/InputPort;>;"
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getOutputPorts()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/filterfw/core/OutputPort;

    .line 336
    .local v3, "branchOutPort":Landroid/filterfw/core/OutputPort;
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/filterfw/core/InputPort;

    invoke-virtual {v3, v11}, Landroid/filterfw/core/OutputPort;->connectTo(Landroid/filterfw/core/InputPort;)V

    goto :goto_1

    .line 328
    .end local v2    # "branchId":I
    .end local v3    # "branchOutPort":Landroid/filterfw/core/OutputPort;
    .end local v4    # "branchParams":Landroid/filterfw/core/KeyValueMap;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "inputPortIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/filterfw/core/InputPort;>;"
    .restart local v1    # "branchId":I
    :cond_3
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "TODO: Unsynced branches not implemented yet!"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 340
    .end local v0    # "branch":Landroid/filterpacks/base/FrameBranch;
    .end local v5    # "connection":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/filterfw/core/OutputPort;Ljava/util/LinkedList<Landroid/filterfw/core/InputPort;>;>;"
    .end local v9    # "inputPorts":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/filterfw/core/InputPort;>;"
    .end local v10    # "outputPort":Landroid/filterfw/core/OutputPort;
    :cond_4
    iget-object v11, p0, Landroid/filterfw/core/FilterGraph;->mPreconnections:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 341
    return-void

    .end local v1    # "branchId":I
    .restart local v0    # "branch":Landroid/filterpacks/base/FrameBranch;
    .restart local v2    # "branchId":I
    .restart local v4    # "branchParams":Landroid/filterfw/core/KeyValueMap;
    .restart local v5    # "connection":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/filterfw/core/OutputPort;Ljava/util/LinkedList<Landroid/filterfw/core/InputPort;>;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "inputPortIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/filterfw/core/InputPort;>;"
    .restart local v9    # "inputPorts":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/filterfw/core/InputPort;>;"
    .restart local v10    # "outputPort":Landroid/filterfw/core/OutputPort;
    :cond_5
    move v1, v2

    .end local v2    # "branchId":I
    .restart local v1    # "branchId":I
    goto/16 :goto_0
.end method

.method private discardUnconnectedOutputs()V
    .locals 10

    .prologue
    .line 277
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 278
    .local v0, "addedFilters":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/filterfw/core/Filter;>;"
    iget-object v7, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/Filter;

    .line 279
    .local v1, "filter":Landroid/filterfw/core/Filter;
    const/4 v4, 0x0

    .line 280
    .local v4, "id":I
    invoke-virtual {v1}, Landroid/filterfw/core/Filter;->getOutputPorts()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/filterfw/core/OutputPort;

    .line 281
    .local v6, "port":Landroid/filterfw/core/OutputPort;
    invoke-virtual {v6}, Landroid/filterfw/core/OutputPort;->isConnected()Z

    move-result v7

    if-nez v7, :cond_1

    .line 282
    iget-boolean v7, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Autoconnecting unconnected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to Null filter."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_2
    new-instance v5, Landroid/filterpacks/base/NullFilter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ToNull"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/filterpacks/base/NullFilter;-><init>(Ljava/lang/String;)V

    .line 284
    .local v5, "nullFilter":Landroid/filterpacks/base/NullFilter;
    invoke-virtual {v5}, Landroid/filterpacks/base/NullFilter;->init()V

    .line 285
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 286
    const-string v7, "frame"

    invoke-virtual {v5, v7}, Landroid/filterpacks/base/NullFilter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/filterfw/core/OutputPort;->connectTo(Landroid/filterfw/core/InputPort;)V

    .line 287
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 292
    .end local v1    # "filter":Landroid/filterfw/core/Filter;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "id":I
    .end local v5    # "nullFilter":Landroid/filterpacks/base/NullFilter;
    .end local v6    # "port":Landroid/filterfw/core/OutputPort;
    :cond_3
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/Filter;

    .line 293
    .restart local v1    # "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {p0, v1}, Landroid/filterfw/core/FilterGraph;->addFilter(Landroid/filterfw/core/Filter;)Z

    goto :goto_1

    .line 295
    .end local v1    # "filter":Landroid/filterfw/core/Filter;
    :cond_4
    return-void
.end method

.method private getSourceFilters()Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Landroid/filterfw/core/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 345
    .local v2, "sourceFilters":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/filterfw/core/Filter;>;"
    invoke-virtual {p0}, Landroid/filterfw/core/FilterGraph;->getFilters()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/Filter;

    .line 346
    .local v0, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getNumberOfConnectedInputs()I

    move-result v3

    if-nez v3, :cond_0

    .line 347
    iget-boolean v3, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found source filter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 351
    .end local v0    # "filter":Landroid/filterfw/core/Filter;
    :cond_2
    return-object v2
.end method

.method private preconnect(Landroid/filterfw/core/OutputPort;Landroid/filterfw/core/InputPort;)V
    .locals 2
    .param p1, "outPort"    # Landroid/filterfw/core/OutputPort;
    .param p2, "inPort"    # Landroid/filterfw/core/InputPort;

    .prologue
    .line 304
    iget-object v1, p0, Landroid/filterfw/core/FilterGraph;->mPreconnections:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 305
    .local v0, "targets":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/filterfw/core/InputPort;>;"
    if-nez v0, :cond_0

    .line 306
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "targets":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/filterfw/core/InputPort;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 307
    .restart local v0    # "targets":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/filterfw/core/InputPort;>;"
    iget-object v1, p0, Landroid/filterfw/core/FilterGraph;->mPreconnections:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method private readyForProcessing(Landroid/filterfw/core/Filter;Ljava/util/Set;)Z
    .locals 5
    .param p1, "filter"    # Landroid/filterfw/core/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/filterfw/core/Filter;",
            "Ljava/util/Set",
            "<",
            "Landroid/filterfw/core/Filter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "processed":Ljava/util/Set;, "Ljava/util/Set<Landroid/filterfw/core/Filter;>;"
    const/4 v3, 0x0

    .line 177
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    :goto_0
    return v3

    .line 182
    :cond_0
    invoke-virtual {p1}, Landroid/filterfw/core/Filter;->getInputPorts()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/InputPort;

    .line 183
    .local v2, "port":Landroid/filterfw/core/InputPort;
    invoke-virtual {v2}, Landroid/filterfw/core/InputPort;->getSourceFilter()Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 184
    .local v0, "dependency":Landroid/filterfw/core/Filter;
    if-eqz v0, :cond_1

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 188
    .end local v0    # "dependency":Landroid/filterfw/core/Filter;
    .end local v2    # "port":Landroid/filterfw/core/InputPort;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private removeFilter(Landroid/filterfw/core/Filter;)V
    .locals 2
    .param p1, "filter"    # Landroid/filterfw/core/Filter;

    .prologue
    .line 298
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mNameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    return-void
.end method

.method private runTypeCheck()V
    .locals 9

    .prologue
    .line 192
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 193
    .local v1, "filterStack":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/filterfw/core/Filter;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 194
    .local v4, "processedFilters":Ljava/util/Set;, "Ljava/util/Set<Landroid/filterfw/core/Filter;>;"
    invoke-direct {p0}, Landroid/filterfw/core/FilterGraph;->getSourceFilters()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 196
    :cond_0
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 198
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/Filter;

    .line 199
    .local v0, "filter":Landroid/filterfw/core/Filter;
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-direct {p0, v0}, Landroid/filterfw/core/FilterGraph;->updateOutputs(Landroid/filterfw/core/Filter;)V

    .line 205
    iget-boolean v6, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Running type check on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_1
    invoke-direct {p0, v0}, Landroid/filterfw/core/FilterGraph;->runTypeCheckOn(Landroid/filterfw/core/Filter;)V

    .line 209
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getOutputPorts()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/filterfw/core/OutputPort;

    .line 210
    .local v3, "port":Landroid/filterfw/core/OutputPort;
    invoke-virtual {v3}, Landroid/filterfw/core/OutputPort;->getTargetFilter()Landroid/filterfw/core/Filter;

    move-result-object v5

    .line 211
    .local v5, "target":Landroid/filterfw/core/Filter;
    if-eqz v5, :cond_2

    invoke-direct {p0, v5, v4}, Landroid/filterfw/core/FilterGraph;->readyForProcessing(Landroid/filterfw/core/Filter;Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 212
    invoke-virtual {v1, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 218
    .end local v0    # "filter":Landroid/filterfw/core/Filter;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "port":Landroid/filterfw/core/OutputPort;
    .end local v5    # "target":Landroid/filterfw/core/Filter;
    :cond_3
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {p0}, Landroid/filterfw/core/FilterGraph;->getFilters()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    if-eq v6, v7, :cond_4

    .line 219
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Could not schedule all filters! Is your graph malformed?"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 221
    :cond_4
    return-void
.end method

.method private runTypeCheckOn(Landroid/filterfw/core/Filter;)V
    .locals 9
    .param p1, "filter"    # Landroid/filterfw/core/Filter;

    .prologue
    const/4 v8, 0x0

    .line 240
    invoke-virtual {p1}, Landroid/filterfw/core/Filter;->getInputPorts()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/InputPort;

    .line 241
    .local v2, "inputPort":Landroid/filterfw/core/InputPort;
    iget-boolean v5, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Type checking port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_1
    invoke-virtual {v2}, Landroid/filterfw/core/InputPort;->getSourceFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    .line 243
    .local v3, "sourceFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v2}, Landroid/filterfw/core/InputPort;->getPortFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v4

    .line 244
    .local v4, "targetFormat":Landroid/filterfw/core/FrameFormat;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 245
    iget-boolean v5, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " against "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_2
    const/4 v0, 0x1

    .line 248
    .local v0, "compatible":Z
    iget v5, p0, Landroid/filterfw/core/FilterGraph;->mTypeCheckMode:I

    packed-switch v5, :pswitch_data_0

    .line 262
    :goto_0
    if-nez v0, :cond_0

    .line 263
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Type mismatch: Filter "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expects a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "format of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but got a format of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 250
    :pswitch_0
    invoke-virtual {v2, v8}, Landroid/filterfw/core/InputPort;->setChecksType(Z)V

    goto :goto_0

    .line 253
    :pswitch_1
    invoke-virtual {v3, v4}, Landroid/filterfw/core/FrameFormat;->mayBeCompatibleWith(Landroid/filterfw/core/FrameFormat;)Z

    move-result v0

    .line 254
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/filterfw/core/InputPort;->setChecksType(Z)V

    goto :goto_0

    .line 257
    :pswitch_2
    invoke-virtual {v3, v4}, Landroid/filterfw/core/FrameFormat;->isCompatibleWith(Landroid/filterfw/core/FrameFormat;)Z

    move-result v0

    .line 258
    invoke-virtual {v2, v8}, Landroid/filterfw/core/InputPort;->setChecksType(Z)V

    goto :goto_0

    .line 269
    .end local v0    # "compatible":Z
    .end local v2    # "inputPort":Landroid/filterfw/core/InputPort;
    .end local v3    # "sourceFormat":Landroid/filterfw/core/FrameFormat;
    .end local v4    # "targetFormat":Landroid/filterfw/core/FrameFormat;
    :cond_3
    return-void

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateOutputs(Landroid/filterfw/core/Filter;)V
    .locals 8
    .param p1, "filter"    # Landroid/filterfw/core/Filter;

    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/filterfw/core/Filter;->getOutputPorts()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/filterfw/core/OutputPort;

    .line 225
    .local v4, "outputPort":Landroid/filterfw/core/OutputPort;
    invoke-virtual {v4}, Landroid/filterfw/core/OutputPort;->getBasePort()Landroid/filterfw/core/InputPort;

    move-result-object v2

    .line 226
    .local v2, "inputPort":Landroid/filterfw/core/InputPort;
    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {v2}, Landroid/filterfw/core/InputPort;->getSourceFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .line 228
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v4}, Landroid/filterfw/core/OutputPort;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v1}, Landroid/filterfw/core/Filter;->getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    .line 230
    .local v3, "outputFormat":Landroid/filterfw/core/FrameFormat;
    if-nez v3, :cond_1

    .line 231
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Filter did not return an output format for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 234
    :cond_1
    invoke-virtual {v4, v3}, Landroid/filterfw/core/OutputPort;->setPortFormat(Landroid/filterfw/core/FrameFormat;)V

    goto :goto_0

    .line 237
    .end local v1    # "inputFormat":Landroid/filterfw/core/FrameFormat;
    .end local v2    # "inputPort":Landroid/filterfw/core/InputPort;
    .end local v3    # "outputFormat":Landroid/filterfw/core/FrameFormat;
    .end local v4    # "outputPort":Landroid/filterfw/core/OutputPort;
    :cond_2
    return-void
.end method


# virtual methods
.method public addFilter(Landroid/filterfw/core/Filter;)Z
    .locals 2
    .param p1, "filter"    # Landroid/filterfw/core/Filter;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Landroid/filterfw/core/FilterGraph;->containsFilter(Landroid/filterfw/core/Filter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mNameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beginProcessing()V
    .locals 4

    .prologue
    .line 126
    iget-boolean v2, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    const-string v3, "Opening all filter connections..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    iget-object v2, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/Filter;

    .line 128
    .local v0, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->openOutputs()V

    goto :goto_0

    .line 130
    .end local v0    # "filter":Landroid/filterfw/core/Filter;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/filterfw/core/FilterGraph;->mIsReady:Z

    .line 131
    return-void
.end method

.method public closeFilters(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 140
    iget-boolean v2, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    const-string v3, "Closing all filters..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    iget-object v2, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/Filter;

    .line 142
    .local v0, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v0, p1}, Landroid/filterfw/core/Filter;->performClose(Landroid/filterfw/core/FilterContext;)V

    goto :goto_0

    .line 144
    .end local v0    # "filter":Landroid/filterfw/core/Filter;
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/filterfw/core/FilterGraph;->mIsReady:Z

    .line 145
    return-void
.end method

.method public connect(Landroid/filterfw/core/Filter;Ljava/lang/String;Landroid/filterfw/core/Filter;Ljava/lang/String;)V
    .locals 5
    .param p1, "source"    # Landroid/filterfw/core/Filter;
    .param p2, "outputName"    # Ljava/lang/String;
    .param p3, "target"    # Landroid/filterfw/core/Filter;
    .param p4, "inputName"    # Ljava/lang/String;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 87
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Passing null Filter in connect()!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_1
    invoke-virtual {p0, p1}, Landroid/filterfw/core/FilterGraph;->containsFilter(Landroid/filterfw/core/Filter;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p3}, Landroid/filterfw/core/FilterGraph;->containsFilter(Landroid/filterfw/core/Filter;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 89
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Attempting to connect filter not in graph!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_3
    invoke-virtual {p1, p2}, Landroid/filterfw/core/Filter;->getOutputPort(Ljava/lang/String;)Landroid/filterfw/core/OutputPort;

    move-result-object v1

    .line 93
    .local v1, "outPort":Landroid/filterfw/core/OutputPort;
    invoke-virtual {p3, p4}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v0

    .line 94
    .local v0, "inPort":Landroid/filterfw/core/InputPort;
    if-nez v1, :cond_4

    .line 95
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown output port \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' on Filter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_4
    if-nez v0, :cond_5

    .line 98
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown input port \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' on Filter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_5
    invoke-direct {p0, v1, v0}, Landroid/filterfw/core/FilterGraph;->preconnect(Landroid/filterfw/core/OutputPort;Landroid/filterfw/core/InputPort;)V

    .line 103
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "sourceName"    # Ljava/lang/String;
    .param p2, "outputName"    # Ljava/lang/String;
    .param p3, "targetName"    # Ljava/lang/String;
    .param p4, "inputName"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 110
    .local v0, "source":Landroid/filterfw/core/Filter;
    invoke-virtual {p0, p3}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v1

    .line 111
    .local v1, "target":Landroid/filterfw/core/Filter;
    if-nez v0, :cond_0

    .line 112
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to connect unknown source filter \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_0
    if-nez v1, :cond_1

    .line 115
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to connect unknown target filter \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_1
    invoke-virtual {p0, v0, p2, v1, p4}, Landroid/filterfw/core/FilterGraph;->connect(Landroid/filterfw/core/Filter;Ljava/lang/String;Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public containsFilter(Landroid/filterfw/core/Filter;)Z
    .locals 1
    .param p1, "filter"    # Landroid/filterfw/core/Filter;

    .prologue
    .line 75
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public flushFrames()V
    .locals 3

    .prologue
    .line 134
    iget-object v2, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/Filter;

    .line 135
    .local v0, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->clearOutputs()V

    goto :goto_0

    .line 137
    .end local v0    # "filter":Landroid/filterfw/core/Filter;
    :cond_0
    return-void
.end method

.method public getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/Filter;

    return-object v0
.end method

.method public getFilters()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/filterfw/core/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Landroid/filterfw/core/FilterGraph;->mIsReady:Z

    return v0
.end method

.method public setAutoBranchMode(I)V
    .locals 0
    .param p1, "autoBranchMode"    # I

    .prologue
    .line 152
    iput p1, p0, Landroid/filterfw/core/FilterGraph;->mAutoBranchMode:I

    .line 153
    return-void
.end method

.method public setDiscardUnconnectedOutputs(Z)V
    .locals 0
    .param p1, "discard"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Landroid/filterfw/core/FilterGraph;->mDiscardUnconnectedOutputs:Z

    .line 157
    return-void
.end method

.method public setTypeCheckMode(I)V
    .locals 0
    .param p1, "typeCheckMode"    # I

    .prologue
    .line 160
    iput p1, p0, Landroid/filterfw/core/FilterGraph;->mTypeCheckMode:I

    .line 161
    return-void
.end method

.method setupFilters()V
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Landroid/filterfw/core/FilterGraph;->mDiscardUnconnectedOutputs:Z

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0}, Landroid/filterfw/core/FilterGraph;->discardUnconnectedOutputs()V

    .line 359
    :cond_0
    invoke-direct {p0}, Landroid/filterfw/core/FilterGraph;->connectPorts()V

    .line 360
    invoke-direct {p0}, Landroid/filterfw/core/FilterGraph;->checkConnections()V

    .line 361
    invoke-direct {p0}, Landroid/filterfw/core/FilterGraph;->runTypeCheck()V

    .line 362
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 164
    iget-object v2, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    invoke-virtual {p0}, Landroid/filterfw/core/FilterGraph;->flushFrames()V

    .line 166
    iget-object v2, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/Filter;

    .line 167
    .local v0, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v0, p1}, Landroid/filterfw/core/Filter;->performTearDown(Landroid/filterfw/core/FilterContext;)V

    goto :goto_0

    .line 169
    .end local v0    # "filter":Landroid/filterfw/core/Filter;
    :cond_0
    iget-object v2, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 170
    iget-object v2, p0, Landroid/filterfw/core/FilterGraph;->mNameMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 171
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/filterfw/core/FilterGraph;->mIsReady:Z

    .line 173
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
