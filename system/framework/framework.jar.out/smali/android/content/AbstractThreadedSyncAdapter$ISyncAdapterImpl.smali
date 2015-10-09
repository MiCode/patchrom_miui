.class Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
.super Landroid/content/ISyncAdapter$Stub;
.source "AbstractThreadedSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AbstractThreadedSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISyncAdapterImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/AbstractThreadedSyncAdapter;


# direct methods
.method private constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-direct {p0}, Landroid/content/ISyncAdapter$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/AbstractThreadedSyncAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/AbstractThreadedSyncAdapter;
    .param p2, "x1"    # Landroid/content/AbstractThreadedSyncAdapter$1;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;-><init>(Landroid/content/AbstractThreadedSyncAdapter;)V

    return-void
.end method


# virtual methods
.method public cancelSync(Landroid/content/ISyncContext;)V
    .locals 6
    .param p1, "syncContext"    # Landroid/content/ISyncContext;

    .prologue
    .line 195
    const/4 v2, 0x0

    .line 196
    .local v2, "info":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreadLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/content/AbstractThreadedSyncAdapter;->access$200(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 197
    :try_start_0
    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreads:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/content/AbstractThreadedSyncAdapter;->access$300(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    .line 198
    .local v0, "current":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    # getter for: Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->access$700(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/content/SyncContext;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/SyncContext;->getSyncContextBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/content/ISyncContext;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v3, v5, :cond_0

    .line 199
    move-object v2, v0

    .line 203
    .end local v0    # "current":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    if-eqz v2, :cond_2

    .line 205
    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->mAllowParallelSyncs:Z
    invoke-static {v3}, Landroid/content/AbstractThreadedSyncAdapter;->access$800(Landroid/content/AbstractThreadedSyncAdapter;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 206
    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-virtual {v3, v2}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled(Ljava/lang/Thread;)V

    .line 211
    :cond_2
    :goto_0
    return-void

    .line 203
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 208
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-virtual {v3}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled()V

    goto :goto_0
.end method

.method public initialize(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 215
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "initialize"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 216
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 217
    return-void
.end method

.method public startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "syncContext"    # Landroid/content/ISyncContext;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 153
    new-instance v3, Landroid/content/SyncContext;

    invoke-direct {v3, p1}, Landroid/content/SyncContext;-><init>(Landroid/content/ISyncContext;)V

    .line 158
    .local v3, "syncContextClient":Landroid/content/SyncContext;
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    # invokes: Landroid/content/AbstractThreadedSyncAdapter;->toSyncKey(Landroid/accounts/Account;)Landroid/accounts/Account;
    invoke-static {v1, p3}, Landroid/content/AbstractThreadedSyncAdapter;->access$100(Landroid/content/AbstractThreadedSyncAdapter;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v9

    .line 159
    .local v9, "threadsKey":Landroid/accounts/Account;
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreadLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->access$200(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 160
    :try_start_0
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreads:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->access$300(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 161
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->mAutoInitialize:Z
    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->access$400(Landroid/content/AbstractThreadedSyncAdapter;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p4, :cond_2

    const-string v1, "initialize"

    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    :try_start_1
    invoke-static {p3, p2}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 166
    const/4 v1, 0x1

    invoke-static {p3, p2, v1}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :cond_0
    :try_start_2
    new-instance v1, Landroid/content/SyncResult;

    invoke-direct {v1}, Landroid/content/SyncResult;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 171
    monitor-exit v10

    .line 189
    :cond_1
    :goto_0
    return-void

    .line 169
    :catchall_0
    move-exception v1

    new-instance v2, Landroid/content/SyncResult;

    invoke-direct {v2}, Landroid/content/SyncResult;-><init>()V

    invoke-virtual {v3, v2}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    throw v1

    .line 182
    :catchall_1
    move-exception v1

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 173
    :cond_2
    :try_start_3
    new-instance v0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncAdapterThread-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->mNumSyncStarts:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Landroid/content/AbstractThreadedSyncAdapter;->access$500(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;-><init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/AbstractThreadedSyncAdapter$1;)V

    .line 176
    .local v0, "syncThread":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    # getter for: Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreads:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->access$300(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {v0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->start()V

    .line 178
    const/4 v8, 0x0

    .line 182
    .end local v0    # "syncThread":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    .local v8, "alreadyInProgress":Z
    :goto_1
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    if-eqz v8, :cond_1

    .line 187
    sget-object v1, Landroid/content/SyncResult;->ALREADY_IN_PROGRESS:Landroid/content/SyncResult;

    invoke-virtual {v3, v1}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    goto :goto_0

    .line 180
    .end local v8    # "alreadyInProgress":Z
    :cond_3
    const/4 v8, 0x1

    .restart local v8    # "alreadyInProgress":Z
    goto :goto_1
.end method
