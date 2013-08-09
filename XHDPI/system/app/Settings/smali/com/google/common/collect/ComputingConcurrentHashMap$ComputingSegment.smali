.class final Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;
.super Lcom/google/common/collect/MapMakerInternalMap$Segment;
.source "ComputingConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ComputingConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ComputingSegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$Segment",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;II)V
    .locals 0
    .parameter
    .parameter "initialCapacity"
    .parameter "maxSegmentSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;>;II)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, this:Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;,"Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment<TK;TV;>;"
    .local p1, map:Lcom/google/common/collect/MapMakerInternalMap;,"Lcom/google/common/collect/MapMakerInternalMap<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    .line 76
    return-void
.end method


# virtual methods
.method compute(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;)Ljava/lang/Object;
    .locals 9
    .parameter
    .parameter "hash"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;,"Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .local p4, computingValueReference:Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;,"Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    const-wide/16 v7, 0x0

    .line 176
    const/4 v5, 0x0

    .line 177
    .local v5, value:Ljava/lang/Object;,"TV;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 178
    .local v3, start:J
    const-wide/16 v0, 0x0

    .line 183
    .local v0, end:J
    :try_start_0
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    :try_start_1
    invoke-virtual {p4, p1, p2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->compute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 185
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 186
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    if-eqz v5, :cond_0

    .line 189
    const/4 v6, 0x1

    :try_start_2
    invoke-virtual {p0, p1, p2, v5, v6}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    .line 190
    .local v2, oldValue:Ljava/lang/Object;,"TV;"
    if-eqz v2, :cond_0

    .line 192
    sget-object v6, Lcom/google/common/collect/MapMaker$RemovalCause;->REPLACED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v5, v6}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 197
    .end local v2           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_0
    cmp-long v6, v0, v7

    if-nez v6, :cond_1

    .line 198
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 200
    :cond_1
    if-nez v5, :cond_2

    .line 201
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->clearValue(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ValueReference;)Z

    :cond_2
    return-object v5

    .line 186
    .end local v5           #value:Ljava/lang/Object;,"TV;"
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 197
    :catchall_1
    move-exception v6

    cmp-long v7, v0, v7

    if-nez v7, :cond_3

    .line 198
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 200
    :cond_3
    if-nez v5, :cond_4

    .line 201
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->clearValue(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ValueReference;)Z

    :cond_4
    throw v6
.end method

.method getOrCompute(Ljava/lang/Object;ILcom/google/common/base/Function;)Ljava/lang/Object;
    .locals 14
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;,"Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, computingFunction:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<-TK;+TV;>;"
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v4

    .line 84
    .local v4, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    if-eqz v4, :cond_1

    .line 85
    invoke-virtual {p0, v4}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v10

    .line 86
    .local v10, value:Ljava/lang/Object;,"TV;"
    if-eqz v10, :cond_1

    .line 87
    invoke-virtual {p0, v4}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->recordRead(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 169
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    .end local v10           #value:Ljava/lang/Object;,"TV;"
    :goto_0
    return-object v10

    .line 94
    :cond_1
    if-eqz v4, :cond_2

    :try_start_1
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v12

    invoke-interface {v12}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->isComputingReference()Z

    move-result v12

    if-nez v12, :cond_a

    .line 95
    :cond_2
    const/4 v3, 0x1

    .line 96
    .local v3, createNewEntry:Z
    const/4 v1, 0x0

    .line 97
    .local v1, computingValueReference:Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;,"Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    :try_start_2
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->preWriteCleanup()V

    .line 101
    iget v12, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->count:I

    add-int/lit8 v8, v12, -0x1

    .line 102
    .local v8, newCount:I
    iget-object v9, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 103
    .local v9, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    and-int v7, p2, v12

    .line 104
    .local v7, index:I
    invoke-virtual {v9, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 106
    .local v6, first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object v4, v6

    :goto_1
    if-eqz v4, :cond_3

    .line 107
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 108
    .local v5, entryKey:Ljava/lang/Object;,"TK;"
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v12

    move/from16 v0, p2

    if-ne v12, v0, :cond_8

    if-eqz v5, :cond_8

    iget-object v12, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v12, v12, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v12, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 110
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v11

    .line 111
    .local v11, valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    invoke-interface {v11}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->isComputingReference()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 112
    const/4 v3, 0x0

    .line 135
    .end local v5           #entryKey:Ljava/lang/Object;,"TK;"
    .end local v11           #valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 136
    new-instance v2, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;-><init>(Lcom/google/common/base/Function;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    .end local v1           #computingValueReference:Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;,"Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    .local v2, computingValueReference:Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;,"Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    if-nez v4, :cond_9

    .line 139
    :try_start_3
    move/from16 v0, p2

    invoke-virtual {p0, p1, v0, v6}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->newEntry(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v4

    .line 140
    invoke-interface {v4, v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)V

    .line 141
    invoke-virtual {v9, v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v1, v2

    .line 147
    .end local v2           #computingValueReference:Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;,"Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    .restart local v1       #computingValueReference:Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;,"Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    :cond_4
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 148
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postWriteCleanup()V

    .line 151
    if-eqz v3, :cond_a

    .line 153
    move/from16 v0, p2

    invoke-virtual {p0, p1, v0, v4, v1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->compute(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v10

    .line 169
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    goto :goto_0

    .line 114
    .restart local v5       #entryKey:Ljava/lang/Object;,"TK;"
    .restart local v11       #valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_5
    :try_start_5
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v12

    invoke-interface {v12}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v10

    .line 115
    .restart local v10       #value:Ljava/lang/Object;,"TV;"
    if-nez v10, :cond_6

    .line 116
    sget-object v12, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    move/from16 v0, p2

    invoke-virtual {p0, v5, v0, v10, v12}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 127
    :goto_4
    iget-object v12, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v12, v4}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 128
    iget-object v12, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v12, v4}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 129
    iput v8, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->count:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 147
    .end local v5           #entryKey:Ljava/lang/Object;,"TK;"
    .end local v6           #first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v7           #index:I
    .end local v8           #newCount:I
    .end local v9           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    .end local v10           #value:Ljava/lang/Object;,"TV;"
    .end local v11           #valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :catchall_0
    move-exception v12

    :goto_5
    :try_start_6
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 148
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postWriteCleanup()V

    throw v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 169
    .end local v1           #computingValueReference:Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;,"Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    .end local v3           #createNewEntry:Z
    .end local v4           #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :catchall_1
    move-exception v12

    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    throw v12

    .line 117
    .restart local v1       #computingValueReference:Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;,"Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    .restart local v3       #createNewEntry:Z
    .restart local v4       #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .restart local v5       #entryKey:Ljava/lang/Object;,"TK;"
    .restart local v6       #first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .restart local v7       #index:I
    .restart local v8       #newCount:I
    .restart local v9       #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    .restart local v10       #value:Ljava/lang/Object;,"TV;"
    .restart local v11       #valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_6
    :try_start_7
    iget-object v12, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v12}, Lcom/google/common/collect/MapMakerInternalMap;->expires()Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v12, v4}, Lcom/google/common/collect/MapMakerInternalMap;->isExpired(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 120
    sget-object v12, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPIRED:Lcom/google/common/collect/MapMaker$RemovalCause;

    move/from16 v0, p2

    invoke-virtual {p0, v5, v0, v10, v12}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    goto :goto_4

    .line 122
    :cond_7
    invoke-virtual {p0, v4}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->recordLockedRead(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 147
    :try_start_8
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 148
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postWriteCleanup()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 169
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    goto/16 :goto_0

    .line 106
    .end local v10           #value:Ljava/lang/Object;,"TV;"
    .end local v11           #valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_8
    :try_start_9
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v4

    goto/16 :goto_1

    .line 143
    .end local v1           #computingValueReference:Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;,"Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    .end local v5           #entryKey:Ljava/lang/Object;,"TK;"
    .restart local v2       #computingValueReference:Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;,"Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    :cond_9
    :try_start_a
    invoke-interface {v4, v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object v1, v2

    .end local v2           #computingValueReference:Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;,"Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    .restart local v1       #computingValueReference:Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;,"Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    goto :goto_3

    .line 158
    .end local v1           #computingValueReference:Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;,"Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    .end local v3           #createNewEntry:Z
    .end local v6           #first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v7           #index:I
    .end local v8           #newCount:I
    .end local v9           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    :cond_a
    :try_start_b
    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    const/4 v12, 0x1

    :goto_6
    const-string v13, "Recursive computation"

    invoke-static {v12, v13}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 160
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v12

    invoke-interface {v12}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->waitForValue()Ljava/lang/Object;

    move-result-object v10

    .line 161
    .restart local v10       #value:Ljava/lang/Object;,"TV;"
    if-eqz v10, :cond_0

    .line 162
    invoke-virtual {p0, v4}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->recordRead(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 169
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    goto/16 :goto_0

    .line 158
    .end local v10           #value:Ljava/lang/Object;,"TV;"
    :cond_b
    const/4 v12, 0x0

    goto :goto_6

    .line 147
    .restart local v2       #computingValueReference:Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;,"Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    .restart local v3       #createNewEntry:Z
    .restart local v6       #first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .restart local v7       #index:I
    .restart local v8       #newCount:I
    .restart local v9       #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    :catchall_2
    move-exception v12

    move-object v1, v2

    .end local v2           #computingValueReference:Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;,"Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    .restart local v1       #computingValueReference:Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;,"Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference<TK;TV;>;"
    goto :goto_5
.end method
