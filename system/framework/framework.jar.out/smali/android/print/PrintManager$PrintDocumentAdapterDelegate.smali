.class final Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.super Landroid/print/IPrintDocumentAdapter$Stub;
.source "PrintManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintDocumentAdapterDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDestroyed:Z

.field private mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

.field private mFinishRequested:Z

.field private mFinished:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

.field private mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

.field private mLayoutOrWriteCancellation:Landroid/os/CancellationSignal;

.field private final mLock:Ljava/lang/Object;

.field private mObserver:Landroid/print/IPrintDocumentAdapterObserver;

.field private mStartReqeusted:Z

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/print/PrintDocumentAdapter;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "documentAdapter"    # Landroid/print/PrintDocumentAdapter;

    .prologue
    .line 479
    invoke-direct {p0}, Landroid/print/IPrintDocumentAdapter$Stub;-><init>()V

    .line 454
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    .line 480
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    .line 481
    iput-object p2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    .line 482
    new-instance v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;

    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    .line 483
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 484
    return-void
.end method

.method static synthetic access$1000(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Z
    .locals 1
    .param p0, "x0"    # Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    .prologue
    .line 451
    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$1100(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    .prologue
    .line 451
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->doPendingWorkLocked()V

    return-void
.end method

.method static synthetic access$200(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Z
    .locals 1
    .param p0, "x0"    # Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    .prologue
    .line 451
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isFinished()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    .prologue
    .line 451
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/print/PrintDocumentAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    .prologue
    .line 451
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    return-object v0
.end method

.method static synthetic access$500(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;
    .locals 1
    .param p0, "x0"    # Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    .prologue
    .line 451
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    return-object v0
.end method

.method static synthetic access$502(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;
    .locals 0
    .param p0, "x0"    # Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
    .param p1, "x1"    # Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    .prologue
    .line 451
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    return-object p1
.end method

.method static synthetic access$602(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 0
    .param p0, "x0"    # Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
    .param p1, "x1"    # Landroid/os/CancellationSignal;

    .prologue
    .line 451
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLayoutOrWriteCancellation:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic access$700(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;
    .locals 1
    .param p0, "x0"    # Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    .prologue
    .line 451
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    return-object v0
.end method

.method static synthetic access$702(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;
    .locals 0
    .param p0, "x0"    # Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
    .param p1, "x1"    # Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    .prologue
    .line 451
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    return-object p1
.end method

.method static synthetic access$800(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    .prologue
    .line 451
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    .prologue
    .line 451
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->clearLocked()V

    return-void
.end method

.method private cancelPreviousCancellableOperationLocked()Z
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLayoutOrWriteCancellation:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLayoutOrWriteCancellation:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 711
    const/4 v0, 0x1

    .line 713
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 694
    iput-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    .line 695
    iput-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    .line 696
    iput-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    .line 697
    iput-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLayoutOrWriteCancellation:Landroid/os/CancellationSignal;

    .line 698
    iput-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    .line 699
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    iget-object v0, v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 701
    iput-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    .line 703
    :cond_0
    return-void
.end method

.method private doPendingWorkLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 717
    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStartReqeusted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStarted:Z

    if-nez v0, :cond_1

    .line 718
    iput-boolean v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStarted:Z

    .line 719
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    if-eqz v0, :cond_2

    .line 721
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 722
    :cond_2
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    if-eqz v0, :cond_3

    .line 723
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 724
    :cond_3
    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinishRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinished:Z

    if-nez v0, :cond_0

    .line 725
    iput-boolean v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinished:Z

    .line 726
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private isFinished()Z
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 621
    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStartReqeusted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinishRequested:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 626
    :try_start_0
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->cancelPreviousCancellableOperationLocked()Z

    .line 627
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 597
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 599
    :try_start_0
    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStartReqeusted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinishRequested:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 600
    :cond_0
    monitor-exit v1

    .line 616
    :goto_0
    return-void

    .line 603
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinishRequested:Z

    .line 607
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    if-eqz v0, :cond_3

    .line 611
    :cond_2
    monitor-exit v1

    goto :goto_0

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 614
    :cond_3
    :try_start_1
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->doPendingWorkLocked()V

    .line 615
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public layout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/ILayoutResultCallback;Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "oldAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "newAttributes"    # Landroid/print/PrintAttributes;
    .param p3, "callback"    # Landroid/print/ILayoutResultCallback;
    .param p4, "metadata"    # Landroid/os/Bundle;
    .param p5, "sequence"    # I

    .prologue
    .line 522
    iget-object v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 523
    :try_start_0
    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDestroyed:Z

    .line 525
    .local v0, "destroyed":Z
    iget-boolean v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStartReqeusted:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinishRequested:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDestroyed:Z

    if-nez v2, :cond_3

    .line 527
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    if-eqz v2, :cond_0

    .line 528
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    iget-object v2, v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 529
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    .line 532
    :cond_0
    new-instance v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$1;)V

    iput-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    .line 533
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    iput-object p3, v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->callback:Landroid/print/ILayoutResultCallback;

    .line 534
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    iput-object p1, v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->oldAttributes:Landroid/print/PrintAttributes;

    .line 535
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    iput-object p2, v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->newAttributes:Landroid/print/PrintAttributes;

    .line 536
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    iput-object p4, v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->metadata:Landroid/os/Bundle;

    .line 537
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    iput p5, v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->sequence:I

    .line 541
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->cancelPreviousCancellableOperationLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 542
    monitor-exit v3

    .line 555
    :cond_1
    :goto_0
    return-void

    .line 545
    :cond_2
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->doPendingWorkLocked()V

    .line 547
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    if-eqz v0, :cond_1

    .line 550
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p3, v2, p5}, Landroid/print/ILayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 551
    :catch_0
    move-exception v1

    .line 552
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "PrintManager"

    const-string v3, "Error notifying for cancelled layout"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 547
    .end local v0    # "destroyed":Z
    .end local v1    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 638
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 668
    iget-object v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 669
    :try_start_0
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    if-ne p1, v2, :cond_1

    .line 670
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDestroyed:Z

    .line 671
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mObserver:Landroid/print/IPrintDocumentAdapterObserver;

    .line 672
    .local v0, "observer":Landroid/print/IPrintDocumentAdapterObserver;
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->clearLocked()V

    .line 677
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 682
    :try_start_1
    invoke-interface {v0}, Landroid/print/IPrintDocumentAdapterObserver;->onDestroy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 687
    :cond_0
    :goto_1
    return-void

    .line 674
    .end local v0    # "observer":Landroid/print/IPrintDocumentAdapterObserver;
    :cond_1
    const/4 v0, 0x0

    .line 675
    .restart local v0    # "observer":Landroid/print/IPrintDocumentAdapterObserver;
    const/4 p1, 0x0

    goto :goto_0

    .line 677
    .end local v0    # "observer":Landroid/print/IPrintDocumentAdapterObserver;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 683
    .restart local v0    # "observer":Landroid/print/IPrintDocumentAdapterObserver;
    :catch_0
    move-exception v1

    .line 684
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "PrintManager"

    const-string v3, "Error announcing destroyed state"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 633
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 648
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 658
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 643
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 653
    return-void
.end method

.method public setObserver(Landroid/print/IPrintDocumentAdapterObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/print/IPrintDocumentAdapterObserver;

    .prologue
    .line 489
    iget-object v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 490
    :try_start_0
    iget-boolean v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDestroyed:Z

    if-nez v2, :cond_0

    .line 491
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mObserver:Landroid/print/IPrintDocumentAdapterObserver;

    .line 493
    :cond_0
    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDestroyed:Z

    .line 494
    .local v0, "destroyed":Z
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    if-eqz v0, :cond_1

    .line 497
    :try_start_1
    invoke-interface {p1}, Landroid/print/IPrintDocumentAdapterObserver;->onDestroy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 502
    :cond_1
    :goto_0
    return-void

    .line 494
    .end local v0    # "destroyed":Z
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 498
    .restart local v0    # "destroyed":Z
    :catch_0
    move-exception v1

    .line 499
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "PrintManager"

    const-string v3, "Error announcing destroyed state"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 506
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 508
    :try_start_0
    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStartReqeusted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinishRequested:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 509
    :cond_0
    monitor-exit v1

    .line 516
    :goto_0
    return-void

    .line 512
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStartReqeusted:Z

    .line 514
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->doPendingWorkLocked()V

    .line 515
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/print/IWriteResultCallback;I)V
    .locals 5
    .param p1, "pages"    # [Landroid/print/PageRange;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "callback"    # Landroid/print/IWriteResultCallback;
    .param p4, "sequence"    # I

    .prologue
    .line 561
    iget-object v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 562
    :try_start_0
    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDestroyed:Z

    .line 564
    .local v0, "destroyed":Z
    iget-boolean v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStartReqeusted:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinishRequested:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDestroyed:Z

    if-nez v2, :cond_3

    .line 566
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    if-eqz v2, :cond_0

    .line 567
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    iget-object v2, v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 568
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    .line 571
    :cond_0
    new-instance v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$1;)V

    iput-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    .line 572
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    iput-object p3, v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->callback:Landroid/print/IWriteResultCallback;

    .line 573
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    iput-object p1, v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->pages:[Landroid/print/PageRange;

    .line 574
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    iput-object p2, v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->fd:Landroid/os/ParcelFileDescriptor;

    .line 575
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    iput p4, v2, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->sequence:I

    .line 579
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->cancelPreviousCancellableOperationLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 580
    monitor-exit v3

    .line 593
    :cond_1
    :goto_0
    return-void

    .line 583
    :cond_2
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->doPendingWorkLocked()V

    .line 585
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    if-eqz v0, :cond_1

    .line 588
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p3, v2, p4}, Landroid/print/IWriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 589
    :catch_0
    move-exception v1

    .line 590
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "PrintManager"

    const-string v3, "Error notifying for cancelled write"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 585
    .end local v0    # "destroyed":Z
    .end local v1    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
