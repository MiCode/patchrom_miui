.class public Landroid/content/CursorLoader;
.super Landroid/content/AsyncTaskLoader;
.source "CursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field mCancellationSignal:Landroid/os/CancellationSignal;

.field mCursor:Landroid/database/Cursor;

.field final mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field mProjection:[Ljava/lang/String;

.field mSelection:Ljava/lang/String;

.field mSelectionArgs:[Ljava/lang/String;

.field mSortOrder:Ljava/lang/String;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Landroid/content/CursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 137
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Landroid/content/CursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 138
    iput-object p2, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    .line 139
    iput-object p3, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    .line 140
    iput-object p4, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    .line 141
    iput-object p5, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 142
    iput-object p6, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    .line 143
    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 93
    :cond_0
    monitor-exit p0

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/content/CursorLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    if-eqz p1, :cond_0

    .line 102
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 107
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 109
    invoke-virtual {p0}, Landroid/content/CursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 113
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 233
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 234
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 235
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 242
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/CursorLoader;->mContentChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 243
    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 9

    .prologue
    .line 58
    monitor-enter p0

    .line 59
    :try_start_0
    invoke-virtual {p0}, Landroid/content/CursorLoader;->isLoadInBackgroundCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Landroid/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/os/OperationCanceledException;-><init>()V

    throw v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 62
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 63
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :try_start_2
    invoke-virtual {p0}, Landroid/content/CursorLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    iget-object v6, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v7

    .line 67
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 70
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    .line 71
    iget-object v0, p0, Landroid/content/CursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    :cond_1
    monitor-enter p0

    .line 80
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 81
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v7

    .line 72
    :catch_0
    move-exception v8

    .line 73
    .local v8, "ex":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 74
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 79
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v0

    monitor-enter p0

    .line 80
    const/4 v1, 0x0

    :try_start_6
    iput-object v1, p0, Landroid/content/CursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 81
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 173
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 183
    invoke-virtual {p0}, Landroid/content/CursorLoader;->onStopLoading()V

    .line 185
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 189
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Landroid/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroid/content/CursorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 158
    :cond_1
    invoke-virtual {p0}, Landroid/content/CursorLoader;->forceLoad()V

    .line 160
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/content/CursorLoader;->cancelLoad()Z

    .line 169
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Landroid/content/CursorLoader;->mProjection:[Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Landroid/content/CursorLoader;->mSelection:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .locals 0
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Landroid/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Landroid/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 196
    iput-object p1, p0, Landroid/content/CursorLoader;->mUri:Landroid/net/Uri;

    .line 197
    return-void
.end method
