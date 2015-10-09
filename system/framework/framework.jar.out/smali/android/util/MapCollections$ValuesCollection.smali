.class final Landroid/util/MapCollections$ValuesCollection;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValuesCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/MapCollections;


# direct methods
.method constructor <init>(Landroid/util/MapCollections;)V
    .locals 0

    .prologue
    .line 355
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    iput-object p1, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 369
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colClear()V

    .line 370
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 374
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0, p1}, Landroid/util/MapCollections;->colIndexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 380
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/MapCollections$ValuesCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    const/4 v1, 0x0

    .line 385
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 390
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    new-instance v0, Landroid/util/MapCollections$ArrayIterator;

    iget-object v1, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/util/MapCollections$ArrayIterator;-><init>(Landroid/util/MapCollections;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 400
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    iget-object v1, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v1, p1}, Landroid/util/MapCollections;->colIndexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 401
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 402
    iget-object v1, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v1, v0}, Landroid/util/MapCollections;->colRemoveAt(I)V

    .line 403
    const/4 v1, 0x1

    .line 405
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 410
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v4, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v4}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    .line 411
    .local v0, "N":I
    const/4 v1, 0x0

    .line 412
    .local v1, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 413
    iget-object v4, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v2

    .line 414
    .local v2, "cur":Ljava/lang/Object;
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 415
    iget-object v4, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v4, v3}, Landroid/util/MapCollections;->colRemoveAt(I)V

    .line 416
    add-int/lit8 v3, v3, -0x1

    .line 417
    add-int/lit8 v0, v0, -0x1

    .line 418
    const/4 v1, 0x1

    .line 412
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 421
    .end local v2    # "cur":Ljava/lang/Object;
    :cond_1
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v4, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v4}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    .line 427
    .local v0, "N":I
    const/4 v1, 0x0

    .line 428
    .local v1, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 429
    iget-object v4, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v2

    .line 430
    .local v2, "cur":Ljava/lang/Object;
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 431
    iget-object v4, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v4, v3}, Landroid/util/MapCollections;->colRemoveAt(I)V

    .line 432
    add-int/lit8 v3, v3, -0x1

    .line 433
    add-int/lit8 v0, v0, -0x1

    .line 434
    const/4 v1, 0x1

    .line 428
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 437
    .end local v2    # "cur":Ljava/lang/Object;
    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 442
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 447
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/MapCollections;->toArrayHelper(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 452
    .local p0, "this":Landroid/util/MapCollections$ValuesCollection;, "Landroid/util/MapCollections<TK;TV;>.ValuesCollection;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Landroid/util/MapCollections$ValuesCollection;->this$0:Landroid/util/MapCollections;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/MapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
