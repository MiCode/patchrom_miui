.class Landroid/view/ViewTreeObserver$CopyOnWriteArray;
.super Ljava/lang/Object;
.source "ViewTreeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewTreeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CopyOnWriteArray"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mAccess:Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mDataCopy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mStart:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 975
    .local p0, "this":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 955
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mData:Ljava/util/ArrayList;

    .line 958
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mAccess:Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    .line 976
    return-void
.end method

.method private getArray()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 979
    .local p0, "this":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<TT;>;"
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mStart:Z

    if-eqz v0, :cond_1

    .line 980
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mDataCopy:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mData:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mDataCopy:Ljava/util/ArrayList;

    .line 981
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mDataCopy:Ljava/util/ArrayList;

    .line 983
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mData:Ljava/util/ArrayList;

    goto :goto_0
.end method


# virtual methods
.method add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1011
    .local p0, "this":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->getArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    return-void
.end method

.method addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1015
    .local p0, "this":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<TT;>;"
    .local p1, "array":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<TT;>;"
    invoke-direct {p0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->getArray()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1016
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    .line 1023
    .local p0, "this":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<TT;>;"
    invoke-direct {p0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->getArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1024
    return-void
.end method

.method end()V
    .locals 2

    .prologue
    .local p0, "this":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<TT;>;"
    const/4 v1, 0x0

    .line 996
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mStart:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iteration not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :cond_0
    iput-boolean v1, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mStart:Z

    .line 998
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mDataCopy:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 999
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mDataCopy:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mData:Ljava/util/ArrayList;

    .line 1000
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mAccess:Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    # getter for: Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->mData:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->access$000(Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1001
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mAccess:Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    # setter for: Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->mSize:I
    invoke-static {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->access$102(Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;I)I

    .line 1003
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mDataCopy:Ljava/util/ArrayList;

    .line 1004
    return-void
.end method

.method remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1019
    .local p0, "this":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->getArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1020
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 1007
    .local p0, "this":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<TT;>;"
    invoke-direct {p0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->getArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 987
    .local p0, "this":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<TT;>;"
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mStart:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iteration already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 988
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mStart:Z

    .line 989
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mDataCopy:Ljava/util/ArrayList;

    .line 990
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mAccess:Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    iget-object v1, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mData:Ljava/util/ArrayList;

    # setter for: Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->mData:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->access$002(Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 991
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mAccess:Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    iget-object v1, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    # setter for: Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->mSize:I
    invoke-static {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->access$102(Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;I)I

    .line 992
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->mAccess:Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    return-object v0
.end method
