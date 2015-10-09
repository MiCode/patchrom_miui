.class final Landroid/util/MapCollections$ArrayIterator;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field mCanRemove:Z

.field mIndex:I

.field final mOffset:I

.field mSize:I

.field final synthetic this$0:Landroid/util/MapCollections;


# direct methods
.method constructor <init>(Landroid/util/MapCollections;I)V
    .locals 1
    .param p2, "offset"    # I

    .prologue
    .line 43
    .local p0, "this":Landroid/util/MapCollections$ArrayIterator;, "Landroid/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iput-object p1, p0, Landroid/util/MapCollections$ArrayIterator;->this$0:Landroid/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 44
    iput p2, p0, Landroid/util/MapCollections$ArrayIterator;->mOffset:I

    .line 45
    invoke-virtual {p1}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    iput v0, p0, Landroid/util/MapCollections$ArrayIterator;->mSize:I

    .line 46
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 50
    .local p0, "this":Landroid/util/MapCollections$ArrayIterator;, "Landroid/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget v0, p0, Landroid/util/MapCollections$ArrayIterator;->mIndex:I

    iget v1, p0, Landroid/util/MapCollections$ArrayIterator;->mSize:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Landroid/util/MapCollections$ArrayIterator;, "Landroid/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget-object v1, p0, Landroid/util/MapCollections$ArrayIterator;->this$0:Landroid/util/MapCollections;

    iget v2, p0, Landroid/util/MapCollections$ArrayIterator;->mIndex:I

    iget v3, p0, Landroid/util/MapCollections$ArrayIterator;->mOffset:I

    invoke-virtual {v1, v2, v3}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    .line 56
    .local v0, "res":Ljava/lang/Object;
    iget v1, p0, Landroid/util/MapCollections$ArrayIterator;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/MapCollections$ArrayIterator;->mIndex:I

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 58
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 63
    .local p0, "this":Landroid/util/MapCollections$ArrayIterator;, "Landroid/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget-boolean v0, p0, Landroid/util/MapCollections$ArrayIterator;->mCanRemove:Z

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 66
    :cond_0
    iget v0, p0, Landroid/util/MapCollections$ArrayIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/MapCollections$ArrayIterator;->mIndex:I

    .line 67
    iget v0, p0, Landroid/util/MapCollections$ArrayIterator;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/MapCollections$ArrayIterator;->mSize:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 69
    iget-object v0, p0, Landroid/util/MapCollections$ArrayIterator;->this$0:Landroid/util/MapCollections;

    iget v1, p0, Landroid/util/MapCollections$ArrayIterator;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/MapCollections;->colRemoveAt(I)V

    .line 70
    return-void
.end method
