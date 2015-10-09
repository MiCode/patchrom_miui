.class final Landroid/content/UndoManager$UndoState;
.super Ljava/lang/Object;
.source "UndoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/UndoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UndoState"
.end annotation


# instance fields
.field private mCanMerge:Z

.field private final mCommitId:I

.field private mExecuted:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private final mManager:Landroid/content/UndoManager;

.field private final mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UndoOperation",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mRecent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UndoOperation",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/UndoManager;I)V
    .locals 1
    .param p1, "manager"    # Landroid/content/UndoManager;
    .param p2, "commitId"    # I

    .prologue
    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    .line 740
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    .line 744
    iput-object p1, p0, Landroid/content/UndoManager$UndoState;->mManager:Landroid/content/UndoManager;

    .line 745
    iput p2, p0, Landroid/content/UndoManager$UndoState;->mCommitId:I

    .line 746
    return-void
.end method

.method constructor <init>(Landroid/content/UndoManager;Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 7
    .param p1, "manager"    # Landroid/content/UndoManager;
    .param p2, "p"    # Landroid/os/Parcel;
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    .line 740
    iput-boolean v5, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    .line 749
    iput-object p1, p0, Landroid/content/UndoManager$UndoState;->mManager:Landroid/content/UndoManager;

    .line 750
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/content/UndoManager$UndoState;->mCommitId:I

    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    .line 752
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    iput-boolean v5, p0, Landroid/content/UndoManager$UndoState;->mExecuted:Z

    .line 753
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iput-object v4, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    .line 754
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 755
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 756
    iget-object v4, p0, Landroid/content/UndoManager$UndoState;->mManager:Landroid/content/UndoManager;

    invoke-virtual {v4, p2}, Landroid/content/UndoManager;->restoreOwner(Landroid/os/Parcel;)Landroid/content/UndoOwner;

    move-result-object v3

    .line 757
    .local v3, "owner":Landroid/content/UndoOwner;
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/UndoOperation;

    .line 758
    .local v2, "op":Landroid/content/UndoOperation;
    iput-object v3, v2, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    .line 759
    iget-object v4, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "op":Landroid/content/UndoOperation;
    .end local v3    # "owner":Landroid/content/UndoOwner;
    :cond_0
    move v4, v6

    .line 751
    goto :goto_0

    :cond_1
    move v5, v6

    .line 752
    goto :goto_1

    .line 761
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method addOperation(Landroid/content/UndoOperation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UndoOperation",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 847
    .local p1, "op":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<*>;"
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already holds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 850
    :cond_0
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 852
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    .line 853
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    :cond_1
    iget-object v0, p1, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    iget v1, v0, Landroid/content/UndoOwner;->mOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/content/UndoOwner;->mOpCount:I

    .line 856
    return-void
.end method

.method canMerge()Z
    .locals 1

    .prologue
    .line 812
    iget-boolean v0, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/content/UndoManager$UndoState;->mExecuted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method commit()V
    .locals 3

    .prologue
    .line 900
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 901
    .local v0, "N":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 902
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoOperation;

    invoke-virtual {v2}, Landroid/content/UndoOperation;->commit()V

    .line 901
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 900
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 904
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    .line 905
    return-void
.end method

.method countOperations()I
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method destroy()V
    .locals 5

    .prologue
    .line 921
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 922
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoOperation;

    iget-object v1, v2, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    .line 923
    .local v1, "owner":Landroid/content/UndoOwner;
    iget v2, v1, Landroid/content/UndoOwner;->mOpCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/content/UndoOwner;->mOpCount:I

    .line 924
    iget v2, v1, Landroid/content/UndoOwner;->mOpCount:I

    if-gtz v2, :cond_1

    .line 925
    iget v2, v1, Landroid/content/UndoOwner;->mOpCount:I

    if-gez v2, :cond_0

    .line 926
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Underflow of op count on owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in op "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 929
    :cond_0
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mManager:Landroid/content/UndoManager;

    invoke-virtual {v2, v1}, Landroid/content/UndoManager;->removeOwner(Landroid/content/UndoOwner;)V

    .line 921
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 932
    .end local v1    # "owner":Landroid/content/UndoOwner;
    :cond_2
    return-void
.end method

.method getCommitId()I
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Landroid/content/UndoManager$UndoState;->mCommitId:I

    return v0
.end method

.method getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;)Landroid/content/UndoOperation;
    .locals 5
    .param p2, "owner"    # Landroid/content/UndoOwner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/UndoOperation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/UndoOwner;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 859
    iget-object v4, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 860
    .local v0, "N":I
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 861
    if-lez v0, :cond_0

    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UndoOperation;

    .line 878
    :cond_0
    :goto_0
    return-object v3

    .line 864
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 865
    iget-object v4, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoOperation;

    .line 866
    .local v2, "op":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<*>;"
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object v4

    if-eq v4, p2, :cond_2

    .line 864
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 872
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p1, :cond_0

    :cond_3
    move-object v3, v2

    .line 875
    goto :goto_0
.end method

.method hasData()Z
    .locals 2

    .prologue
    .line 891
    iget-object v1, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 892
    iget-object v1, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoOperation;

    invoke-virtual {v1}, Landroid/content/UndoOperation;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 893
    const/4 v1, 0x1

    .line 896
    :goto_1
    return v1

    .line 891
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 896
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method hasMultipleOwners()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 833
    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 834
    .local v0, "N":I
    if-gt v0, v5, :cond_0

    move v3, v4

    .line 843
    :goto_0
    return v3

    .line 837
    :cond_0
    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UndoOperation;

    invoke-virtual {v3}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object v2

    .line 838
    .local v2, "owner":Landroid/content/UndoOwner;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 839
    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UndoOperation;

    invoke-virtual {v3}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object v3

    if-eq v3, v2, :cond_1

    move v3, v5

    .line 840
    goto :goto_0

    .line 838
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v3, v4

    .line 843
    goto :goto_0
.end method

.method hasOperation(Landroid/content/UndoOwner;)Z
    .locals 5
    .param p1, "owner"    # Landroid/content/UndoOwner;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 820
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 821
    .local v0, "N":I
    if-nez p1, :cond_1

    .line 822
    if-eqz v0, :cond_0

    move v2, v3

    .line 829
    :goto_0
    return v2

    :cond_0
    move v2, v4

    .line 822
    goto :goto_0

    .line 824
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 825
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoOperation;

    invoke-virtual {v2}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object v2

    if-ne v2, p1, :cond_2

    move v2, v3

    .line 826
    goto :goto_0

    .line 824
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v2, v4

    .line 829
    goto :goto_0
.end method

.method makeExecuted()V
    .locals 1

    .prologue
    .line 808
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/UndoManager$UndoState;->mExecuted:Z

    .line 809
    return-void
.end method

.method matchOwner(Landroid/content/UndoOwner;)Z
    .locals 2
    .param p1, "owner"    # Landroid/content/UndoOwner;

    .prologue
    .line 882
    iget-object v1, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 883
    iget-object v1, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoOperation;

    invoke-virtual {v1, p1}, Landroid/content/UndoOperation;->matchOwner(Landroid/content/UndoOwner;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 884
    const/4 v1, 0x1

    .line 887
    :goto_1
    return v1

    .line 882
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 887
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method redo()V
    .locals 3

    .prologue
    .line 914
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 915
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 916
    iget-object v2, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoOperation;

    invoke-virtual {v2}, Landroid/content/UndoOperation;->redo()V

    .line 915
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 918
    :cond_0
    return-void
.end method

.method setCanMerge(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 800
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/content/UndoManager$UndoState;->mExecuted:Z

    if-eqz v0, :cond_0

    .line 801
    const/4 v0, 0x0

    .line 804
    :goto_0
    return v0

    .line 803
    :cond_0
    iput-boolean p1, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    .line 804
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 785
    iput-object p1, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    .line 786
    return-void
.end method

.method undo()V
    .locals 2

    .prologue
    .line 908
    iget-object v1, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 909
    iget-object v1, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UndoOperation;

    invoke-virtual {v1}, Landroid/content/UndoOperation;->undo()V

    .line 908
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 911
    :cond_0
    return-void
.end method

.method updateLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 789
    iget-object v0, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 790
    iput-object p1, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    .line 792
    :cond_0
    return-void
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 764
    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mRecent:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 765
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t save state before committing"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 767
    :cond_0
    iget v3, p0, Landroid/content/UndoManager$UndoState;->mCommitId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    iget-boolean v3, p0, Landroid/content/UndoManager$UndoState;->mCanMerge:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    iget-boolean v3, p0, Landroid/content/UndoManager$UndoState;->mExecuted:Z

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v3, p1, v5}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 771
    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 772
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 774
    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UndoOperation;

    .line 775
    .local v2, "op":Landroid/content/UndoOperation;
    iget-object v3, p0, Landroid/content/UndoManager$UndoState;->mManager:Landroid/content/UndoManager;

    iget-object v4, v2, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    invoke-virtual {v3, v4, p1}, Landroid/content/UndoManager;->saveOwner(Landroid/content/UndoOwner;Landroid/os/Parcel;)V

    .line 776
    invoke-virtual {p1, v2, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "op":Landroid/content/UndoOperation;
    :cond_1
    move v3, v5

    .line 768
    goto :goto_0

    :cond_2
    move v4, v5

    .line 769
    goto :goto_1

    .line 778
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method
