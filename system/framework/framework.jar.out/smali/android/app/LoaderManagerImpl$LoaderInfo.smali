.class final Landroid/app/LoaderManagerImpl$LoaderInfo;
.super Ljava/lang/Object;
.source "LoaderManager.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCanceledListener;
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoaderInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Landroid/content/Loader$OnLoadCanceledListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final mArgs:Landroid/os/Bundle;

.field mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mData:Ljava/lang/Object;

.field mDeliveredData:Z

.field mDestroyed:Z

.field mHaveData:Z

.field final mId:I

.field mListenerRegistered:Z

.field mLoader:Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

.field mReportNextStart:Z

.field mRetaining:Z

.field mRetainingStarted:Z

.field mStarted:Z

.field final synthetic this$0:Landroid/app/LoaderManagerImpl;


# direct methods
.method public constructor <init>(Landroid/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p4, "callbacks":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"
    iput-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 244
    iput-object p3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    .line 245
    iput-object p4, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 246
    return-void
.end method


# virtual methods
.method callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 4
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/lang/Object;>;"
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    if-eqz v1, :cond_3

    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, "lastBecause":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    iget-object v0, v1, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 478
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    const-string/jumbo v2, "onLoadFinished"

    iput-object v2, v1, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 481
    :cond_0
    :try_start_0
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  onLoadFinished in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, p2}, Landroid/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_1
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v1, p1, p2}, Landroid/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 486
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    iput-object v0, v1, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 489
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 491
    .end local v0    # "lastBecause":Ljava/lang/String;
    :cond_3
    return-void

    .line 485
    .restart local v0    # "lastBecause":Ljava/lang/String;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_4

    .line 486
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v2, v2, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    iput-object v0, v2, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    :cond_4
    throw v1
.end method

.method cancel()V
    .locals 3

    .prologue
    .line 343
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Canceling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->cancelLoad()Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {p0, v0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->onLoadCanceled(Landroid/content/Loader;)V

    .line 349
    :cond_1
    return-void
.end method

.method destroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 352
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Destroying: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    .line 354
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 355
    .local v1, "needReset":Z
    iput-boolean v5, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 356
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 357
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Reseting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_1
    const/4 v0, 0x0

    .line 359
    .local v0, "lastBecause":Ljava/lang/String;
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 360
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v2, v2, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    iget-object v0, v2, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 361
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v2, v2, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    const-string/jumbo v3, "onLoaderReset"

    iput-object v3, v2, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 364
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-interface {v2, v3}, Landroid/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroid/content/Loader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 367
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v2, v2, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    iput-object v0, v2, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 371
    .end local v0    # "lastBecause":Ljava/lang/String;
    :cond_3
    iput-object v6, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 372
    iput-object v6, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    .line 373
    iput-boolean v5, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 374
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-eqz v2, :cond_5

    .line 375
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v2, :cond_4

    .line 376
    iput-boolean v5, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 377
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v2, p0}, Landroid/content/Loader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 378
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v2, p0}, Landroid/content/Loader;->unregisterOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V

    .line 380
    :cond_4
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v2}, Landroid/content/Loader;->reset()V

    .line 382
    :cond_5
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v2, :cond_6

    .line 383
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 385
    :cond_6
    return-void

    .line 366
    .restart local v0    # "lastBecause":Ljava/lang/String;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v3, v3, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_7

    .line 367
    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v3, v3, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    iput-object v0, v3, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    :cond_7
    throw v2
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 507
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 508
    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 509
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 510
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 511
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 514
    :cond_0
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    if-eqz v0, :cond_2

    .line 515
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 516
    const-string v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 517
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 519
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 520
    const-string v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 521
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 522
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 523
    const-string v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 524
    const-string v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 525
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v0, :cond_3

    .line 526
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 530
    :cond_3
    return-void
.end method

.method finishRetain()V
    .locals 3

    .prologue
    .line 293
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-eqz v0, :cond_1

    .line 294
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Finished Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 296
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    if-eq v0, v1, :cond_1

    .line 297
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v0, :cond_1

    .line 301
    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->stop()V

    .line 306
    :cond_1
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    if-nez v0, :cond_2

    .line 313
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 315
    :cond_2
    return-void
.end method

.method public onLoadCanceled(Landroid/content/Loader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 389
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLoadCanceled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    if-eqz v1, :cond_2

    .line 392
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    const-string v2, "  Ignoring load canceled -- destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1
    :goto_0
    return-void

    .line 396
    :cond_2
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    iget v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_3

    .line 399
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    const-string v2, "  Ignoring load canceled -- not active"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 403
    :cond_3
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 404
    .local v0, "pending":Landroid/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_1

    .line 408
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Switching to pending loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_4
    iput-object v4, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 410
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    iget v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 411
    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 412
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v1, v0}, Landroid/app/LoaderManagerImpl;->installLoader(Landroid/app/LoaderManagerImpl$LoaderInfo;)V

    goto :goto_0
.end method

.method public onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 6
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 418
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onLoadComplete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    if-eqz v2, :cond_2

    .line 421
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    const-string v3, "  Ignoring load complete -- destroyed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_1
    :goto_0
    return-void

    .line 425
    :cond_2
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    iget v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_3

    .line 428
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    const-string v3, "  Ignoring load complete -- not active"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    :cond_3
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 433
    .local v1, "pending":Landroid/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v1, :cond_5

    .line 437
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Switching to pending loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_4
    iput-object v5, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 439
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    iget v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 440
    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 441
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v2, v1}, Landroid/app/LoaderManagerImpl;->installLoader(Landroid/app/LoaderManagerImpl$LoaderInfo;)V

    goto :goto_0

    .line 447
    :cond_5
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    if-ne v2, p2, :cond_6

    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-nez v2, :cond_7

    .line 448
    :cond_6
    iput-object p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    .line 449
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 450
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v2, :cond_7

    .line 451
    invoke-virtual {p0, p1, p2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 461
    :cond_7
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    iget v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 462
    .local v0, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_8

    if-eq v0, p0, :cond_8

    .line 463
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 464
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 465
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    iget v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 468
    :cond_8
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v2

    if-nez v2, :cond_1

    .line 469
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/app/LoaderManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v2, v2, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    goto/16 :goto_0
.end method

.method reportStart()V
    .locals 2

    .prologue
    .line 318
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_0

    .line 319
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    .line 321
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 326
    :cond_0
    return-void
.end method

.method retain()V
    .locals 3

    .prologue
    .line 285
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 287
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 290
    return-void
.end method

.method start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 249
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    if-eqz v0, :cond_1

    .line 253
    iput-boolean v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v0, :cond_0

    .line 262
    iput-boolean v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 264
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_2
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    iget v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 268
    :cond_3
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_4
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-nez v0, :cond_5

    .line 276
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    iget v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1, p0}, Landroid/content/Loader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 277
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0, p0}, Landroid/content/Loader;->registerOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V

    .line 278
    iput-boolean v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 280
    :cond_5
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->startLoading()V

    goto/16 :goto_0
.end method

.method stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 329
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    iput-boolean v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 331
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-nez v0, :cond_1

    .line 332
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v0, :cond_1

    .line 334
    iput-boolean v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 335
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0, p0}, Landroid/content/Loader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 336
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0, p0}, Landroid/content/Loader;->unregisterOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V

    .line 337
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->stopLoading()V

    .line 340
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 496
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    iget v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 500
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 502
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
