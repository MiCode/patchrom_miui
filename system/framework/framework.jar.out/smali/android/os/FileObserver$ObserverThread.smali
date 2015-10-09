.class Landroid/os/FileObserver$ObserverThread;
.super Ljava/lang/Thread;
.source "FileObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/FileObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObserverThread"
.end annotation


# instance fields
.field private m_fd:I

.field private m_observers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    const-string v0, "FileObserver"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    .line 84
    invoke-direct {p0}, Landroid/os/FileObserver$ObserverThread;->init()I

    move-result v0

    iput v0, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    .line 85
    return-void
.end method

.method private native init()I
.end method

.method private native observe(I)V
.end method

.method private native startWatching(ILjava/lang/String;I)I
.end method

.method private native stopWatching(II)V
.end method


# virtual methods
.method public onEvent(IILjava/lang/String;)V
    .locals 7
    .param p1, "wfd"    # I
    .param p2, "mask"    # I
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 112
    .local v1, "observer":Landroid/os/FileObserver;
    iget-object v5, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    monitor-enter v5

    .line 113
    :try_start_0
    iget-object v4, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 114
    .local v3, "weak":Ljava/lang/ref/WeakReference;
    if-eqz v3, :cond_0

    .line 115
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/os/FileObserver;

    move-object v1, v0

    .line 116
    if-nez v1, :cond_0

    .line 117
    iget-object v4, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    if-eqz v1, :cond_1

    .line 125
    :try_start_1
    invoke-virtual {v1, p2, p3}, Landroid/os/FileObserver;->onEvent(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 120
    .end local v3    # "weak":Ljava/lang/ref/WeakReference;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 126
    .restart local v3    # "weak":Ljava/lang/ref/WeakReference;
    :catch_0
    move-exception v2

    .line 127
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v4, "FileObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled exception in FileObserver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    invoke-direct {p0, v0}, Landroid/os/FileObserver$ObserverThread;->observe(I)V

    .line 89
    return-void
.end method

.method public startWatching(Ljava/lang/String;ILandroid/os/FileObserver;)I
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mask"    # I
    .param p3, "observer"    # Landroid/os/FileObserver;

    .prologue
    .line 92
    iget v2, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    invoke-direct {p0, v2, p1, p2}, Landroid/os/FileObserver$ObserverThread;->startWatching(ILjava/lang/String;I)I

    move-result v1

    .line 94
    .local v1, "wfd":I
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 95
    .local v0, "i":Ljava/lang/Integer;
    if-ltz v1, :cond_0

    .line 96
    iget-object v3, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    monitor-enter v3

    .line 97
    :try_start_0
    iget-object v2, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 98
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public stopWatching(I)V
    .locals 1
    .param p1, "descriptor"    # I

    .prologue
    .line 105
    iget v0, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    invoke-direct {p0, v0, p1}, Landroid/os/FileObserver$ObserverThread;->stopWatching(II)V

    .line 106
    return-void
.end method
