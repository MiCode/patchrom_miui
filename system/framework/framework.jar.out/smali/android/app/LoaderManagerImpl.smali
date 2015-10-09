.class Landroid/app/LoaderManagerImpl;
.super Landroid/app/LoaderManager;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoaderManagerImpl$LoaderInfo;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "LoaderManager"


# instance fields
.field mActivity:Landroid/app/Activity;

.field mCreatingLoader:Z

.field final mInactiveLoaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mLoaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRetaining:Z

.field mRetainingStarted:Z

.field mStarted:Z

.field final mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Z)V
    .locals 2
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "started"    # Z

    .prologue
    const/4 v1, 0x0

    .line 533
    invoke-direct {p0}, Landroid/app/LoaderManager;-><init>()V

    .line 207
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    .line 213
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    .line 534
    iput-object p1, p0, Landroid/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    .line 535
    iput-object p2, p0, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    .line 536
    iput-boolean p3, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    .line 537
    return-void
.end method

.method private createAndInstallLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/app/LoaderManagerImpl$LoaderInfo;"
        }
    .end annotation

    .prologue
    .local p3, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 554
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    .line 555
    invoke-direct {p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 556
    .local v0, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p0, v0}, Landroid/app/LoaderManagerImpl;->installLoader(Landroid/app/LoaderManagerImpl$LoaderInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    return-object v0

    .end local v0    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    throw v1
.end method

.method private createLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/app/LoaderManagerImpl$LoaderInfo;"
        }
    .end annotation

    .prologue
    .line 545
    .local p3, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"
    new-instance v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl$LoaderInfo;-><init>(Landroid/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)V

    .line 546
    .local v0, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    invoke-interface {p3, p1, p2}, Landroid/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v1

    .line 547
    .local v1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/lang/Object;>;"
    iput-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 548
    return-object v0
.end method


# virtual methods
.method public destroyLoader(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 716
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v2, :cond_0

    .line 717
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Called while creating a loader"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 720
    :cond_0
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroyLoader in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_1
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 722
    .local v0, "idx":I
    if-ltz v0, :cond_2

    .line 723
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 724
    .local v1, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 725
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 727
    .end local v1    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_2
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 728
    if-ltz v0, :cond_3

    .line 729
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 730
    .restart local v1    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 731
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 733
    .end local v1    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_3
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v2

    if-nez v2, :cond_4

    .line 734
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v2, v2, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 736
    :cond_4
    return-void
.end method

.method doDestroy()V
    .locals 4

    .prologue
    .line 831
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v1, :cond_2

    .line 832
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying Active in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_0
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 834
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 833
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 836
    :cond_1
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 839
    .end local v0    # "i":I
    :cond_2
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying Inactive in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_3
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 841
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 840
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 843
    :cond_4
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 844
    return-void
.end method

.method doReportNextStart()V
    .locals 3

    .prologue
    .line 819
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 820
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    .line 819
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 822
    :cond_0
    return-void
.end method

.method doReportStart()V
    .locals 2

    .prologue
    .line 825
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 826
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->reportStart()V

    .line 825
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 828
    :cond_0
    return-void
.end method

.method doRetain()V
    .locals 5

    .prologue
    .line 792
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retaining in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_0
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-nez v2, :cond_2

    .line 794
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 795
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 796
    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called doRetain when not started: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 805
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    return-void

    .line 800
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    .line 801
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    .line 802
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 803
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->retain()V

    .line 802
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method doStart()V
    .locals 5

    .prologue
    .line 759
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_0
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v2, :cond_2

    .line 761
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 762
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 763
    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called doStart when already started: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 774
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    return-void

    .line 767
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    .line 771
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 772
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->start()V

    .line 771
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method doStop()V
    .locals 5

    .prologue
    .line 777
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_0
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-nez v2, :cond_1

    .line 779
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 780
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 781
    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called doStop when not started: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 789
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 785
    :cond_1
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 786
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->stop()V

    .line 785
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 788
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 859
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 860
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Loaders:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 861
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 862
    .local v1, "innerPrefix":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 863
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 864
    .local v2, "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 865
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 866
    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 862
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 869
    .end local v0    # "i":I
    .end local v1    # "innerPrefix":Ljava/lang/String;
    .end local v2    # "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_0
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 870
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Inactive Loaders:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 871
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 872
    .restart local v1    # "innerPrefix":Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 873
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 874
    .restart local v2    # "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 875
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 872
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 879
    .end local v0    # "i":I
    .end local v1    # "innerPrefix":Ljava/lang/String;
    .end local v2    # "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_1
    return-void
.end method

.method finishRetain()V
    .locals 4

    .prologue
    .line 808
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v1, :cond_1

    .line 809
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished Retaining in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    .line 812
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 813
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->finishRetain()V

    .line 812
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 816
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public getLoader(I)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 744
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v1, :cond_0

    .line 745
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Called while creating a loader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 748
    :cond_0
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 749
    .local v0, "loaderInfo":Landroid/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_2

    .line 750
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v1, :cond_1

    .line 751
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    iget-object v1, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 755
    :goto_0
    return-object v1

    .line 753
    :cond_1
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    goto :goto_0

    .line 755
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasRunningLoaders()Z
    .locals 5

    .prologue
    .line 882
    const/4 v3, 0x0

    .line 883
    .local v3, "loadersRunning":Z
    iget-object v4, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 884
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 885
    iget-object v4, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 886
    .local v2, "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    iget-boolean v4, v2, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v2, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    or-int/2addr v3, v4

    .line 884
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 886
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 888
    .end local v2    # "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_1
    return v3
.end method

.method public initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 599
    .local p3, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<TD;>;"
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v1, :cond_0

    .line 600
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Called while creating a loader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 603
    :cond_0
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 605
    .local v0, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLoader in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": args="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_1
    if-nez v0, :cond_4

    .line 609
    invoke-direct {p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 610
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Created new loader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_2
    :goto_0
    iget-boolean v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v1, :cond_3

    .line 618
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    iget-object v2, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 621
    :cond_3
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    return-object v1

    .line 612
    :cond_4
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Re-using existing loader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_5
    iput-object p3, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    goto :goto_0
.end method

.method installLoader(Landroid/app/LoaderManagerImpl$LoaderInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/app/LoaderManagerImpl$LoaderInfo;

    .prologue
    .line 564
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 565
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {p1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->start()V

    .line 571
    :cond_0
    return-void
.end method

.method public restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .local p3, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<TD;>;"
    const/4 v5, 0x0

    .line 649
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-eqz v2, :cond_0

    .line 650
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Called while creating a loader"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 653
    :cond_0
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 654
    .local v1, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restartLoader in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": args="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_1
    if-eqz v1, :cond_3

    .line 656
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 657
    .local v0, "inactive":Landroid/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_b

    .line 658
    iget-boolean v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v2, :cond_4

    .line 663
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Removing last inactive loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 665
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 666
    iget-object v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v2}, Landroid/content/Loader;->abandon()V

    .line 667
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 704
    .end local v0    # "inactive":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v1

    .line 705
    iget-object v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    :goto_1
    return-object v2

    .line 671
    .restart local v0    # "inactive":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_4
    iget-boolean v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v2, :cond_6

    .line 675
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "LoaderManager"

    const-string v3, "  Current loader is stopped; replacing"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_5
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 677
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    goto :goto_0

    .line 682
    :cond_6
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "LoaderManager"

    const-string v3, "  Current loader is running; attempting to cancel"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_7
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->cancel()V

    .line 684
    iget-object v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v2, :cond_9

    .line 685
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Removing pending loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_8
    iget-object v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 687
    iput-object v5, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 689
    :cond_9
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "LoaderManager"

    const-string v3, "  Enqueuing as new pending loader"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v2

    iput-object v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 692
    iget-object v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    iget-object v2, v2, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    goto :goto_1

    .line 698
    :cond_b
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_c

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Making last loader inactive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_c
    iget-object v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v2}, Landroid/content/Loader;->abandon()V

    .line 700
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 849
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 853
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updateActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 540
    iput-object p1, p0, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    .line 541
    return-void
.end method
