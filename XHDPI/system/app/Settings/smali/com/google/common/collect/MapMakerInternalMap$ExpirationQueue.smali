.class final Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;
.super Ljava/util/AbstractQueue;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExpirationQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<",
        "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3284
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;,"Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3285
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$1;-><init>(Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 3386
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;,"Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 3387
    .local v0, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    if-eq v0, v2, :cond_0

    .line 3388
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v1

    .line 3389
    .local v1, next:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap;->nullifyExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 3390
    move-object v0, v1

    .line 3391
    goto :goto_0

    .line 3393
    .end local v1           #next:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-interface {v2, v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setNextExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 3394
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-interface {v2, v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setPreviousExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 3395
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 3366
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;,"Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 3367
    .local v0, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v1

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 3372
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;,"Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3399
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;,"Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$2;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->peek()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$2;-><init>(Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    return-object v0
.end method

.method public offer(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3325
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;,"Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getPreviousExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->connectExpirables(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 3328
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getPreviousExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->connectExpirables(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 3329
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-static {p1, v0}, Lcom/google/common/collect/MapMakerInternalMap;->connectExpirables(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 3331
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 3284
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;,"Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->offer(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Z

    move-result v0

    return v0
.end method

.method public peek()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3336
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;,"Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 3337
    .local v0, next:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .end local v0           #next:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_0
    return-object v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3284
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;,"Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->peek()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public poll()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3342
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;,"Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 3343
    .local v0, next:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    .line 3344
    const/4 v0, 0x0

    .line 3348
    .end local v0           #next:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    return-object v0

    .line 3347
    .restart local v0       #next:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3284
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;,"Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->poll()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 3354
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;,"Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 3355
    .local v0, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getPreviousExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v2

    .line 3356
    .local v2, previous:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v1

    .line 3357
    .local v1, next:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-static {v2, v1}, Lcom/google/common/collect/MapMakerInternalMap;->connectExpirables(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 3358
    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap;->nullifyExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 3360
    sget-object v3, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    if-eq v1, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 3377
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;,"Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    const/4 v1, 0x0

    .line 3378
    .local v1, size:I
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .local v0, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    if-eq v0, v2, :cond_0

    .line 3379
    add-int/lit8 v1, v1, 0x1

    .line 3378
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 3381
    :cond_0
    return v1
.end method
