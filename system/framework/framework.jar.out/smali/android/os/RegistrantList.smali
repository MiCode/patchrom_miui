.class public Landroid/os/RegistrantList;
.super Ljava/lang/Object;
.source "RegistrantList.java"


# instance fields
.field registrants:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    return-void
.end method

.method private declared-synchronized internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v3, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 79
    iget-object v3, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    .line 80
    .local v1, "r":Landroid/os/Registrant;
    invoke-virtual {v1, p1, p2}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "r":Landroid/os/Registrant;
    :cond_0
    monitor-exit p0

    return-void

    .line 78
    .end local v2    # "s":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public declared-synchronized add(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized add(Landroid/os/Registrant;)V
    .locals 1
    .param p1, "r"    # Landroid/os/Registrant;

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/RegistrantList;->removeCleared()V

    .line 48
    iget-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addUnique(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 41
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/os/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 94
    return-void
.end method

.method public notifyRegistrants()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0, v0}, Landroid/os/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method public notifyRegistrants(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 106
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0, v1}, Landroid/os/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 107
    return-void
.end method

.method public notifyResult(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 100
    return-void
.end method

.method public declared-synchronized remove(Landroid/os/Handler;)V
    .locals 5
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 112
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v4, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "s":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 113
    iget-object v4, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    .line 116
    .local v1, "r":Landroid/os/Registrant;
    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 121
    .local v2, "rh":Landroid/os/Handler;
    if-eqz v2, :cond_0

    if-ne v2, p1, :cond_1

    .line 122
    :cond_0
    invoke-virtual {v1}, Landroid/os/Registrant;->clear()V

    .line 112
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "r":Landroid/os/Registrant;
    .end local v2    # "rh":Landroid/os/Handler;
    :cond_2
    invoke-virtual {p0}, Landroid/os/RegistrantList;->removeCleared()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 112
    .end local v3    # "s":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized removeCleared()V
    .locals 3

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 55
    iget-object v2, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    .line 57
    .local v1, "r":Landroid/os/Registrant;
    iget-object v2, v1, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    .line 58
    iget-object v2, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 61
    .end local v1    # "r":Landroid/os/Registrant;
    :cond_1
    monitor-exit p0

    return-void

    .line 54
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
