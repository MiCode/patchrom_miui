.class public Landroid/filterfw/core/CachedFrameManager;
.super Landroid/filterfw/core/SimpleFrameManager;
.source "CachedFrameManager.java"


# instance fields
.field private mAvailableFrames:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/filterfw/core/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageCapacity:I

.field private mStorageSize:I

.field private mTimeStamp:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/filterfw/core/SimpleFrameManager;-><init>()V

    .line 34
    const/high16 v0, 0x1800000

    iput v0, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageCapacity:I

    .line 35
    iput v1, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    .line 36
    iput v1, p0, Landroid/filterfw/core/CachedFrameManager;->mTimeStamp:I

    .line 40
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    .line 41
    return-void
.end method

.method private dropOldestFrame()V
    .locals 4

    .prologue
    .line 123
    iget-object v2, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 124
    .local v1, "oldest":I
    iget-object v2, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/Frame;

    .line 125
    .local v0, "frame":Landroid/filterfw/core/Frame;
    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    .line 126
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->releaseNativeAllocation()V

    .line 127
    iget-object v2, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method

.method private findAvailableFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;
    .locals 7
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "bindingType"    # I
    .param p3, "bindingId"    # J

    .prologue
    .line 132
    iget-object v4, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    monitor-enter v4

    .line 133
    :try_start_0
    iget-object v3, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 134
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/filterfw/core/Frame;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/Frame;

    .line 136
    .local v1, "frame":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/filterfw/core/FrameFormat;->isReplaceableBy(Landroid/filterfw/core/FrameFormat;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getBindingType()I

    move-result v3

    if-ne p2, v3, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getBindingId()J

    move-result-wide v5

    cmp-long v3, p3, v5

    if-nez v3, :cond_0

    .line 142
    :cond_1
    invoke-super {p0, v1}, Landroid/filterfw/core/SimpleFrameManager;->retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    .line 143
    iget-object v3, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->onFrameFetch()V

    .line 145
    invoke-virtual {v1, p1}, Landroid/filterfw/core/Frame;->reset(Landroid/filterfw/core/FrameFormat;)V

    .line 146
    iget v3, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v5

    sub-int/2addr v3, v5

    iput v3, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    .line 147
    monitor-exit v4

    .line 152
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/filterfw/core/Frame;>;"
    .end local v1    # "frame":Landroid/filterfw/core/Frame;
    :goto_0
    return-object v1

    .line 151
    :cond_2
    monitor-exit v4

    .line 152
    const/4 v1, 0x0

    goto :goto_0

    .line 151
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private storeFrame(Landroid/filterfw/core/Frame;)Z
    .locals 5
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .prologue
    .line 99
    iget-object v3, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    monitor-enter v3

    .line 101
    :try_start_0
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    .line 102
    .local v0, "frameSize":I
    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageCapacity:I

    if-le v0, v2, :cond_0

    .line 103
    const/4 v2, 0x0

    monitor-exit v3

    .line 118
    :goto_0
    return v2

    .line 107
    :cond_0
    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    add-int v1, v2, v0

    .line 108
    .local v1, "newStorageSize":I
    :goto_1
    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageCapacity:I

    if-le v1, v2, :cond_1

    .line 109
    invoke-direct {p0}, Landroid/filterfw/core/CachedFrameManager;->dropOldestFrame()V

    .line 110
    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    add-int v1, v2, v0

    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->onFrameStore()V

    .line 115
    iput v1, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    .line 116
    iget-object v2, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    iget v4, p0, Landroid/filterfw/core/CachedFrameManager;->mTimeStamp:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, p1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mTimeStamp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/filterfw/core/CachedFrameManager;->mTimeStamp:I

    .line 118
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 119
    .end local v0    # "frameSize":I
    .end local v1    # "newStorageSize":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public clearCache()V
    .locals 3

    .prologue
    .line 87
    iget-object v2, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/Frame;

    .line 88
    .local v0, "frame":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->releaseNativeAllocation()V

    goto :goto_0

    .line 90
    .end local v0    # "frame":Landroid/filterfw/core/Frame;
    :cond_0
    iget-object v2, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->clear()V

    .line 91
    return-void
.end method

.method public newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;
    .locals 3
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "bindingType"    # I
    .param p3, "bindingId"    # J

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/filterfw/core/CachedFrameManager;->findAvailableFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 56
    .local v0, "result":Landroid/filterfw/core/Frame;
    if-nez v0, :cond_0

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/filterfw/core/SimpleFrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 59
    :cond_0
    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 60
    return-object v0
.end method

.method public newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;
    .locals 4
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    .line 45
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/filterfw/core/CachedFrameManager;->findAvailableFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 46
    .local v0, "result":Landroid/filterfw/core/Frame;
    if-nez v0, :cond_0

    .line 47
    invoke-super {p0, p1}, Landroid/filterfw/core/SimpleFrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 49
    :cond_0
    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 50
    return-object v0
.end method

.method public releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .locals 3
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->isReusable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->decRefCount()I

    move-result v0

    .line 72
    .local v0, "refCount":I
    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->hasNativeAllocation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    invoke-direct {p0, p1}, Landroid/filterfw/core/CachedFrameManager;->storeFrame(Landroid/filterfw/core/Frame;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->releaseNativeAllocation()V

    .line 76
    :cond_0
    const/4 p1, 0x0

    .line 83
    .end local v0    # "refCount":I
    .end local p1    # "frame":Landroid/filterfw/core/Frame;
    :cond_1
    :goto_0
    return-object p1

    .line 77
    .restart local v0    # "refCount":I
    .restart local p1    # "frame":Landroid/filterfw/core/Frame;
    :cond_2
    if-gez v0, :cond_1

    .line 78
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Frame reference count dropped below 0!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    .end local v0    # "refCount":I
    :cond_3
    invoke-super {p0, p1}, Landroid/filterfw/core/SimpleFrameManager;->releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    goto :goto_0
.end method

.method public retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .locals 1
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/filterfw/core/SimpleFrameManager;->retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    move-result-object v0

    return-object v0
.end method

.method public tearDown()V
    .locals 0

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/filterfw/core/CachedFrameManager;->clearCache()V

    .line 96
    return-void
.end method
