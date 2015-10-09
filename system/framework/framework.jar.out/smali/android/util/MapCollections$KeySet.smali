.class final Landroid/util/MapCollections$KeySet;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/MapCollections;


# direct methods
.method constructor <init>(Landroid/util/MapCollections;)V
    .locals 0

    .prologue
    .line 267
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    iput-object p1, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "object":Ljava/lang/Object;, "TK;"
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
            "<+TK;>;)Z"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 281
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colClear()V

    .line 282
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 286
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0, p1}, Landroid/util/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 341
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    invoke-static {p0, p1}, Landroid/util/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    const/4 v4, 0x0

    .line 346
    const/4 v2, 0x0

    .line 347
    .local v2, "result":I
    iget-object v3, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v3}, Landroid/util/MapCollections;->colGetSize()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 348
    iget-object v3, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v3, v0, v4}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v1

    .line 349
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    move v3, v4

    :goto_1
    add-int/2addr v2, v3

    .line 347
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    .line 351
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 296
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

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
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    new-instance v0, Landroid/util/MapCollections$ArrayIterator;

    iget-object v1, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/MapCollections$ArrayIterator;-><init>(Landroid/util/MapCollections;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 306
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v1, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v1, p1}, Landroid/util/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 307
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 308
    iget-object v1, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v1, v0}, Landroid/util/MapCollections;->colRemoveAt(I)V

    .line 309
    const/4 v1, 0x1

    .line 311
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 326
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    invoke-virtual {v0}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 331
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    const/4 v1, 0x0

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
    .line 336
    .local p0, "this":Landroid/util/MapCollections$KeySet;, "Landroid/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Landroid/util/MapCollections$KeySet;->this$0:Landroid/util/MapCollections;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/MapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
