.class Landroid/util/ArrayMap$1;
.super Landroid/util/MapCollections;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/MapCollections",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/ArrayMap;


# direct methods
.method constructor <init>(Landroid/util/ArrayMap;)V
    .locals 0

    .prologue
    .line 697
    .local p0, "this":Landroid/util/ArrayMap$1;, "Landroid/util/ArrayMap.1;"
    iput-object p1, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .locals 1

    .prologue
    .line 740
    .local p0, "this":Landroid/util/ArrayMap$1;, "Landroid/util/ArrayMap.1;"
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 741
    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .param p2, "offset"    # I

    .prologue
    .line 705
    .local p0, "this":Landroid/util/ArrayMap$1;, "Landroid/util/ArrayMap.1;"
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    iget-object v0, v0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected colGetMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 720
    .local p0, "this":Landroid/util/ArrayMap$1;, "Landroid/util/ArrayMap.1;"
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    return-object v0
.end method

.method protected colGetSize()I
    .locals 1

    .prologue
    .line 700
    .local p0, "this":Landroid/util/ArrayMap$1;, "Landroid/util/ArrayMap.1;"
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    iget v0, v0, Landroid/util/ArrayMap;->mSize:I

    return v0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 710
    .local p0, "this":Landroid/util/ArrayMap$1;, "Landroid/util/ArrayMap.1;"
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->indexOfNull()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 715
    .local p0, "this":Landroid/util/ArrayMap$1;, "Landroid/util/ArrayMap.1;"
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 725
    .local p0, "this":Landroid/util/ArrayMap$1;, "Landroid/util/ArrayMap.1;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    return-void
.end method

.method protected colRemoveAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 735
    .local p0, "this":Landroid/util/ArrayMap$1;, "Landroid/util/ArrayMap.1;"
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 736
    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 730
    .local p0, "this":Landroid/util/ArrayMap$1;, "Landroid/util/ArrayMap.1;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/util/ArrayMap$1;->this$0:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
