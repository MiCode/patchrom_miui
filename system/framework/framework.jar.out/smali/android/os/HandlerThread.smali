.class public Landroid/os/HandlerThread;
.super Ljava/lang/Thread;
.source "HandlerThread.java"


# instance fields
.field mLooper:Landroid/os/Looper;

.field mPriority:I

.field mTid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/HandlerThread;->mPriority:I

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    .line 41
    iput p2, p0, Landroid/os/HandlerThread;->mPriority:I

    .line 42
    return-void
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    .line 77
    :cond_0
    monitor-enter p0

    .line 78
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/HandlerThread;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 80
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    goto :goto_1

    .line 84
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    iget-object v0, p0, Landroid/os/HandlerThread;->mLooper:Landroid/os/Looper;

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getThreadId()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Landroid/os/HandlerThread;->mTid:I

    return v0
.end method

.method protected onLooperPrepared()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public quit()Z
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 109
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 111
    const/4 v1, 0x1

    .line 113
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public quitSafely()Z
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 136
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 138
    const/4 v1, 0x1

    .line 140
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    .line 54
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HandlerThread;->mLooper:Landroid/os/Looper;

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 58
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget v0, p0, Landroid/os/HandlerThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 60
    invoke-virtual {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 61
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    .line 63
    return-void

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
