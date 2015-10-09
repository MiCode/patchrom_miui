.class public Landroid/app/QueuedWork;
.super Ljava/lang/Object;
.source "QueuedWork.java"


# static fields
.field private static final sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 41
    const/4 v0, 0x0

    sput-object v0, Landroid/app/QueuedWork;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "finisher"    # Ljava/lang/Runnable;

    .prologue
    .line 70
    sget-object v0, Landroid/app/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public static hasPendingWork()Z
    .locals 1

    .prologue
    .line 98
    sget-object v0, Landroid/app/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static remove(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "finisher"    # Ljava/lang/Runnable;

    .prologue
    .line 74
    sget-object v0, Landroid/app/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public static singleThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 48
    const-class v1, Landroid/app/QueuedWork;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Landroid/app/QueuedWork;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Landroid/app/QueuedWork;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 53
    :cond_0
    sget-object v0, Landroid/app/QueuedWork;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static waitToFinish()V
    .locals 2

    .prologue
    .line 87
    .local v0, "toFinish":Ljava/lang/Runnable;
    :goto_0
    sget-object v1, Landroid/app/QueuedWork;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "toFinish":Ljava/lang/Runnable;
    check-cast v0, Ljava/lang/Runnable;

    .restart local v0    # "toFinish":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method
