.class public abstract Landroid/os/TokenWatcher;
.super Ljava/lang/Object;
.source "TokenWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/TokenWatcher$Death;
    }
.end annotation


# instance fields
.field private volatile mAcquired:Z

.field private mHandler:Landroid/os/Handler;

.field private mNotificationQueue:I

.field private mNotificationTask:Ljava/lang/Runnable;

.field private mTag:Ljava/lang/String;

.field private mTokens:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/os/TokenWatcher$Death;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Landroid/os/TokenWatcher$1;

    invoke-direct {v0, p0}, Landroid/os/TokenWatcher$1;-><init>(Landroid/os/TokenWatcher;)V

    iput-object v0, p0, Landroid/os/TokenWatcher;->mNotificationTask:Ljava/lang/Runnable;

    .line 210
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    .line 213
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    .line 44
    iput-object p1, p0, Landroid/os/TokenWatcher;->mHandler:Landroid/os/Handler;

    .line 45
    if-eqz p2, :cond_0

    .end local p2    # "tag":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    .line 46
    return-void

    .line 45
    .restart local p2    # "tag":Ljava/lang/String;
    :cond_0
    const-string p2, "TokenWatcher"

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/os/TokenWatcher;)Ljava/util/WeakHashMap;
    .locals 1
    .param p0, "x0"    # Landroid/os/TokenWatcher;

    .prologue
    .line 31
    iget-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/TokenWatcher;)I
    .locals 1
    .param p0, "x0"    # Landroid/os/TokenWatcher;

    .prologue
    .line 31
    iget v0, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    return v0
.end method

.method static synthetic access$102(Landroid/os/TokenWatcher;I)I
    .locals 0
    .param p0, "x0"    # Landroid/os/TokenWatcher;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    return p1
.end method

.method static synthetic access$200(Landroid/os/TokenWatcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/os/TokenWatcher;

    .prologue
    .line 31
    iget-object v0, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method private dumpInternal()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v6

    .line 136
    :try_start_0
    iget-object v5, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 137
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Token count: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v7}, Ljava/util/WeakHashMap;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    const/4 v2, 0x0

    .line 139
    .local v2, "i":I
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 140
    .local v1, "b":Landroid/os/IBinder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/TokenWatcher$Death;

    iget-object v5, v5, Landroid/os/TokenWatcher$Death;->tag:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_0
    monitor-exit v6

    .line 144
    return-object v0

    .line 143
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private sendNotificationLocked(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    const/4 v2, -0x1

    .line 166
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 167
    .local v0, "value":I
    :goto_0
    iget v1, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    if-ne v1, v2, :cond_2

    .line 169
    iput v0, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    .line 170
    iget-object v1, p0, Landroid/os/TokenWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/TokenWatcher;->mNotificationTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    :cond_0
    :goto_1
    return-void

    .line 166
    .end local v0    # "value":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    .restart local v0    # "value":I
    :cond_2
    iget v1, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    if-eq v1, v0, :cond_0

    .line 174
    iput v2, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    .line 175
    iget-object v1, p0, Landroid/os/TokenWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/TokenWatcher;->mNotificationTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1
.end method


# virtual methods
.method public acquire(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v4, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v4

    .line 73
    :try_start_0
    iget-object v3, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v2

    .line 75
    .local v2, "oldSize":I
    new-instance v0, Landroid/os/TokenWatcher$Death;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/TokenWatcher$Death;-><init>(Landroid/os/TokenWatcher;Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .local v0, "d":Landroid/os/TokenWatcher$Death;
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    iget-object v3, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    if-nez v2, :cond_0

    iget-boolean v3, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    if-nez v3, :cond_0

    .line 84
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/os/TokenWatcher;->sendNotificationLocked(Z)V

    .line 85
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    .line 87
    :cond_0
    monitor-exit v4

    .line 88
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Landroid/os/RemoteException;
    monitor-exit v4

    goto :goto_0

    .line 87
    .end local v0    # "d":Landroid/os/TokenWatcher$Death;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "oldSize":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public abstract acquired()V
.end method

.method public cleanup(Landroid/os/IBinder;Z)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "unlink"    # Z

    .prologue
    .line 92
    iget-object v2, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 93
    :try_start_0
    iget-object v1, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TokenWatcher$Death;

    .line 94
    .local v0, "d":Landroid/os/TokenWatcher$Death;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, v0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 96
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    .line 99
    :cond_0
    iget-object v1, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    if-eqz v1, :cond_1

    .line 100
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/os/TokenWatcher;->sendNotificationLocked(Z)V

    .line 101
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    .line 103
    :cond_1
    monitor-exit v2

    .line 104
    return-void

    .line 103
    .end local v0    # "d":Landroid/os/TokenWatcher$Death;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump()V
    .locals 4

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/os/TokenWatcher;->dumpInternal()Ljava/util/ArrayList;

    move-result-object v0

    .line 121
    .local v0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/os/TokenWatcher;->dumpInternal()Ljava/util/ArrayList;

    move-result-object v0

    .line 128
    .local v0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 129
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public isAcquired()Z
    .locals 2

    .prologue
    .line 113
    iget-object v1, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-boolean v0, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    monitor-exit v1

    return v0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/TokenWatcher;->cleanup(Landroid/os/IBinder;Z)V

    .line 109
    return-void
.end method

.method public abstract released()V
.end method
