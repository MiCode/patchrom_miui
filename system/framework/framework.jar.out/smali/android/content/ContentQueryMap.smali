.class public Landroid/content/ContentQueryMap;
.super Ljava/util/Observable;
.source "ContentQueryMap.java"


# instance fields
.field private mColumnNames:[Ljava/lang/String;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private volatile mCursor:Landroid/database/Cursor;

.field private mDirty:Z

.field private mHandlerForUpdateNotifications:Landroid/os/Handler;

.field private mKeepUpdated:Z

.field private mKeyColumn:I

.field private mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnNameOfKey"    # Ljava/lang/String;
    .param p3, "keepUpdated"    # Z
    .param p4, "handlerForUpdateNotifications"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 40
    iput-object v1, p0, Landroid/content/ContentQueryMap;->mHandlerForUpdateNotifications:Landroid/os/Handler;

    .line 41
    iput-boolean v0, p0, Landroid/content/ContentQueryMap;->mKeepUpdated:Z

    .line 43
    iput-object v1, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    .line 48
    iput-boolean v0, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    .line 64
    iput-object p1, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    .line 65
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentQueryMap;->mColumnNames:[Ljava/lang/String;

    .line 66
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/ContentQueryMap;->mKeyColumn:I

    .line 67
    iput-object p4, p0, Landroid/content/ContentQueryMap;->mHandlerForUpdateNotifications:Landroid/os/Handler;

    .line 68
    invoke-virtual {p0, p3}, Landroid/content/ContentQueryMap;->setKeepUpdated(Z)V

    .line 73
    if-nez p3, :cond_0

    .line 74
    invoke-direct {p0, p1}, Landroid/content/ContentQueryMap;->readCursorIntoCache(Landroid/database/Cursor;)V

    .line 76
    :cond_0
    return-void
.end method

.method static synthetic access$002(Landroid/content/ContentQueryMap;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/content/ContentQueryMap;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    return p1
.end method

.method private declared-synchronized readCursorIntoCache(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    .line 151
    .local v0, "capacity":I
    :goto_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    .line 152
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 153
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 154
    .local v2, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Landroid/content/ContentQueryMap;->mColumnNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 155
    iget v3, p0, Landroid/content/ContentQueryMap;->mKeyColumn:I

    if-eq v1, v3, :cond_0

    .line 156
    iget-object v3, p0, Landroid/content/ContentQueryMap;->mColumnNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 150
    .end local v0    # "capacity":I
    .end local v1    # "i":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    .restart local v0    # "capacity":I
    .restart local v1    # "i":I
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_2
    iget-object v3, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    iget v4, p0, Landroid/content/ContentQueryMap;->mKeyColumn:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 150
    .end local v0    # "capacity":I
    .end local v1    # "i":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 161
    .restart local v0    # "capacity":I
    :cond_3
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    .line 173
    :cond_0
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentQueryMap;->close()V

    .line 180
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 181
    return-void
.end method

.method public declared-synchronized getRows()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentQueryMap;->requery()V

    .line 165
    :cond_0
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "rowName"    # Ljava/lang/String;

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentQueryMap;->requery()V

    .line 126
    :cond_0
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requery()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    .line 132
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    .line 139
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-direct {p0, v0}, Landroid/content/ContentQueryMap;->readCursorIntoCache(Landroid/database/Cursor;)V

    .line 144
    invoke-virtual {p0}, Landroid/content/ContentQueryMap;->setChanged()V

    .line 145
    invoke-virtual {p0}, Landroid/content/ContentQueryMap;->notifyObservers()V

    goto :goto_0
.end method

.method public setKeepUpdated(Z)V
    .locals 2
    .param p1, "keepUpdated"    # Z

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/content/ContentQueryMap;->mKeepUpdated:Z

    if-ne p1, v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 88
    :cond_0
    iput-boolean p1, p0, Landroid/content/ContentQueryMap;->mKeepUpdated:Z

    .line 90
    iget-boolean v0, p0, Landroid/content/ContentQueryMap;->mKeepUpdated:Z

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mHandlerForUpdateNotifications:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/content/ContentQueryMap;->mHandlerForUpdateNotifications:Landroid/os/Handler;

    .line 97
    :cond_2
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_3

    .line 98
    new-instance v0, Landroid/content/ContentQueryMap$1;

    iget-object v1, p0, Landroid/content/ContentQueryMap;->mHandlerForUpdateNotifications:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/content/ContentQueryMap$1;-><init>(Landroid/content/ContentQueryMap;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    .line 112
    :cond_3
    iget-object v0, p0, Landroid/content/ContentQueryMap;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Landroid/content/ContentQueryMap;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/ContentQueryMap;->mDirty:Z

    goto :goto_0
.end method
