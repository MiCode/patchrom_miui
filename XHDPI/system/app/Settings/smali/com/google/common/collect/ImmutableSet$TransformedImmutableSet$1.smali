.class Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;I)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 469
    .local p0, this:Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;,"Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet.1;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;->this$0:Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, this:Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;,"Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet.1;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;->this$0:Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet$1;->this$0:Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;

    iget-object v1, v1, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
