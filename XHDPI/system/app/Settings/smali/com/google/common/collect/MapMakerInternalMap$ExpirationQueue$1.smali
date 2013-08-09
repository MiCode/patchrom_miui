.class Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$1;
.super Lcom/google/common/collect/MapMakerInternalMap$AbstractReferenceEntry;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/MapMakerInternalMap$AbstractReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 3285
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$1;,"Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue.1;"
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$1;->this$0:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;

    invoke-direct {p0}, Lcom/google/common/collect/MapMakerInternalMap$AbstractReferenceEntry;-><init>()V

    .line 3295
    iput-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$1;->nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 3307
    iput-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$1;->previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 3289
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$1;,"Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue.1;"
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3299
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$1;,"Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue.1;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$1;->nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3311
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$1;,"Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue.1;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$1;->previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 3293
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$1;,"Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue.1;"
    return-void
.end method

.method public setNextExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3304
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$1;,"Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue.1;"
    .local p1, next:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$1;->nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 3305
    return-void
.end method

.method public setPreviousExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3316
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$1;,"Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue.1;"
    .local p1, previous:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$1;->previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 3317
    return-void
.end method
