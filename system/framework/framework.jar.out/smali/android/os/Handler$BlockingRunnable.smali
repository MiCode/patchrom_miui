.class final Landroid/os/Handler$BlockingRunnable;
.super Ljava/lang/Object;
.source "Handler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlockingRunnable"
.end annotation


# instance fields
.field private mDone:Z

.field private final mTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    iput-object p1, p0, Landroid/os/Handler$BlockingRunnable;->mTask:Ljava/lang/Runnable;

    .line 748
    return-void
.end method


# virtual methods
.method public postAndWait(Landroid/os/Handler;J)Z
    .locals 9
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "timeout"    # J

    .prologue
    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    .line 763
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 789
    :goto_0
    return v4

    .line 767
    :cond_0
    monitor-enter p0

    .line 768
    cmp-long v5, p2, v7

    if-lez v5, :cond_2

    .line 769
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    add-long v2, v5, p2

    .line 770
    .local v2, "expirationTime":J
    :goto_1
    iget-boolean v5, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    if-nez v5, :cond_3

    .line 771
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v0, v2, v5

    .line 772
    .local v0, "delay":J
    cmp-long v5, v0, v7

    if-gtz v5, :cond_1

    .line 773
    monitor-exit p0

    goto :goto_0

    .line 788
    .end local v0    # "delay":J
    .end local v2    # "expirationTime":J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 776
    .restart local v0    # "delay":J
    .restart local v2    # "expirationTime":J
    :cond_1
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 777
    :catch_0
    move-exception v5

    goto :goto_1

    .line 781
    .end local v0    # "delay":J
    .end local v2    # "expirationTime":J
    :cond_2
    :goto_2
    :try_start_2
    iget-boolean v4, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_3

    .line 783
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 784
    :catch_1
    move-exception v4

    goto :goto_2

    .line 788
    :cond_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 789
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 753
    :try_start_0
    iget-object v0, p0, Landroid/os/Handler$BlockingRunnable;->mTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 755
    monitor-enter p0

    .line 756
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    .line 757
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 758
    monitor-exit p0

    .line 760
    return-void

    .line 758
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 755
    :catchall_1
    move-exception v0

    monitor-enter p0

    .line 756
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    .line 757
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 758
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method
