.class Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
.super Lcom/android/internal/widget/IRemoteViewsFactory$Stub;
.source "RemoteViewsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsFactoryAdapter"
.end annotation


# instance fields
.field private mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

.field private mIsCreated:Z


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViewsService$RemoteViewsFactory;Z)V
    .locals 0
    .param p1, "factory"    # Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .param p2, "isCreated"    # Z

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;-><init>()V

    .line 134
    iput-object p1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    .line 135
    iput-boolean p2, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mIsCreated:Z

    .line 136
    return-void
.end method


# virtual methods
.method public declared-synchronized getCount()I
    .locals 4

    .prologue
    .line 152
    monitor-enter p0

    const/4 v0, 0x0

    .line 154
    .local v0, "count":I
    :try_start_0
    iget-object v3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v3}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 159
    :goto_0
    monitor-exit p0

    return v0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 157
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getItemId(I)J
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 195
    monitor-enter p0

    const-wide/16 v1, 0x0

    .line 197
    .local v1, "id":J
    :try_start_0
    iget-object v4, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v4, p1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getItemId(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 202
    :goto_0
    monitor-exit p0

    return-wide v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 200
    .local v3, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 195
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 175
    monitor-enter p0

    const/4 v1, 0x0

    .line 177
    .local v1, "rv":Landroid/widget/RemoteViews;
    :try_start_0
    iget-object v3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v3}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 182
    :goto_0
    monitor-exit p0

    return-object v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 180
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 175
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getViewAt(I)Landroid/widget/RemoteViews;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 162
    monitor-enter p0

    const/4 v1, 0x0

    .line 164
    .local v1, "rv":Landroid/widget/RemoteViews;
    :try_start_0
    iget-object v3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v3, p1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_0

    .line 166
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/RemoteViews;->setIsWidgetCollectionChild(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 170
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 162
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getViewTypeCount()I
    .locals 4

    .prologue
    .line 185
    monitor-enter p0

    const/4 v0, 0x0

    .line 187
    .local v0, "count":I
    :try_start_0
    iget-object v3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v3}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getViewTypeCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 192
    :goto_0
    monitor-exit p0

    return v0

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 190
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 185
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized hasStableIds()Z
    .locals 4

    .prologue
    .line 205
    monitor-enter p0

    const/4 v1, 0x0

    .line 207
    .local v1, "hasStableIds":Z
    :try_start_0
    iget-object v3, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v3}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->hasStableIds()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 212
    :goto_0
    monitor-exit p0

    return v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 210
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 205
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized isCreated()Z
    .locals 1

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mIsCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDataSetChanged()V
    .locals 3

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v2}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :goto_0
    monitor-exit p0

    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 145
    .local v1, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onDataSetChangedAsync()V
    .locals 1

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->onDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDestroy(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 215
    # getter for: Landroid/widget/RemoteViewsService;->sLock:Ljava/lang/Object;
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 216
    :try_start_0
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 217
    .local v2, "fc":Landroid/content/Intent$FilterComparison;
    # getter for: Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$100()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    # getter for: Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$100()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    .local v1, "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :try_start_1
    invoke-interface {v1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onDestroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :goto_0
    :try_start_2
    # getter for: Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;
    invoke-static {}, Landroid/widget/RemoteViewsService;->access$100()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .end local v1    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :cond_0
    monitor-exit v5

    .line 228
    return-void

    .line 221
    .restart local v1    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :catch_0
    move-exception v0

    .line 222
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 223
    .local v3, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 227
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .end local v2    # "fc":Landroid/content/Intent$FilterComparison;
    .end local v3    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method
