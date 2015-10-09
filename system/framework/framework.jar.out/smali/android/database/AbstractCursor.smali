.class public abstract Landroid/database/AbstractCursor;
.super Ljava/lang/Object;
.source "AbstractCursor.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/AbstractCursor$SelfContentObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field protected mClosed:Z

.field private final mContentObservable:Landroid/database/ContentObservable;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCurrentRowID:Ljava/lang/Long;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private mExtras:Landroid/os/Bundle;

.field private mNotifyUri:Landroid/net/Uri;

.field protected mPos:I

.field protected mRowIdColumnIndex:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mSelfObserver:Landroid/database/ContentObserver;

.field private final mSelfObserverLock:Ljava/lang/Object;

.field private mSelfObserverRegistered:Z

.field protected mUpdatedRows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 73
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    .line 75
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/database/AbstractCursor;->mExtras:Landroid/os/Bundle;

    .line 185
    iput v1, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 186
    iput v1, p0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    .line 189
    return-void
.end method


# virtual methods
.method protected checkPosition()V
    .locals 3

    .prologue
    .line 431
    const/4 v0, -0x1

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    if-ne v0, v1, :cond_1

    .line 432
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0

    .line 434
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    .line 147
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0}, Landroid/database/ContentObservable;->unregisterAll()V

    .line 148
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->onDeactivateOrClose()V

    .line 149
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    .prologue
    const/4 v4, 0x0

    .line 168
    invoke-virtual {p0, p1}, Landroid/database/AbstractCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 170
    iget-object v0, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 171
    .local v0, "data":[C
    if-eqz v0, :cond_0

    array-length v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 172
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 176
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 180
    .end local v0    # "data":[C
    :goto_1
    return-void

    .line 174
    .restart local v0    # "data":[C
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0

    .line 178
    .end local v0    # "data":[C
    :cond_2
    iput v4, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    goto :goto_1
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->onDeactivateOrClose()V

    .line 121
    return-void
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .prologue
    .line 235
    invoke-static {p0, p1, p2}, Landroid/database/DatabaseUtils;->cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V

    .line 236
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 439
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 442
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :cond_1
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getBlob(I)[B
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getBlob is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 9
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 283
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 284
    .local v4, "periodIndex":I
    if-eq v4, v5, :cond_0

    .line 285
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 286
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "Cursor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requesting column name with table name -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 290
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "columnNames":[Ljava/lang/String;
    array-length v3, v0

    .line 292
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 293
    aget-object v6, v0, v2

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 303
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 292
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v5

    .line 303
    goto :goto_1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Landroid/database/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 308
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 309
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "column \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :cond_0
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 315
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public abstract getColumnNames()[Ljava/lang/String;
.end method

.method public abstract getCount()I
.end method

.method public abstract getDouble(I)D
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Landroid/database/AbstractCursor;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong(I)J
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 378
    iget-object v1, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    :try_start_0
    iget-object v0, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    monitor-exit v1

    return-object v0

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getPosition()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    return v0
.end method

.method public abstract getShort(I)S
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method public getType(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 95
    const/4 v0, 0x3

    return v0
.end method

.method protected getUpdatedField(I)Ljava/lang/Object;
    .locals 1
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 419
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isAfterLast()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 275
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isBeforeFirst()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 268
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    return v0
.end method

.method protected isFieldUpdated(I)Z
    .locals 1
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public final isFirst()Z
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLast()Z
    .locals 3

    .prologue
    .line 263
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    .line 264
    .local v0, "cnt":I
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract isNull(I)Z
.end method

.method public final move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 239
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToFirst()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToNext()Z
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToPosition(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 197
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    .line 198
    .local v0, "count":I
    if-lt p1, v0, :cond_1

    .line 199
    iput v0, p0, Landroid/database/AbstractCursor;->mPos:I

    move v1, v2

    .line 230
    :cond_0
    :goto_0
    return v1

    .line 204
    :cond_1
    if-gez p1, :cond_2

    .line 205
    iput v4, p0, Landroid/database/AbstractCursor;->mPos:I

    move v1, v2

    .line 206
    goto :goto_0

    .line 210
    :cond_2
    iget v3, p0, Landroid/database/AbstractCursor;->mPos:I

    if-ne p1, v3, :cond_3

    .line 211
    const/4 v1, 0x1

    goto :goto_0

    .line 214
    :cond_3
    iget v3, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p0, v3, p1}, Landroid/database/AbstractCursor;->onMove(II)Z

    move-result v1

    .line 215
    .local v1, "result":Z
    if-nez v1, :cond_4

    .line 216
    iput v4, p0, Landroid/database/AbstractCursor;->mPos:I

    goto :goto_0

    .line 220
    :cond_4
    invoke-static {p0, p1}, Landroid/database/AbstractCursorInjector;->checkPosition(Landroid/database/AbstractCursor;I)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 221
    goto :goto_0

    .line 224
    :cond_5
    iput p1, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 225
    iget v2, p0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I

    if-eq v2, v4, :cond_0

    .line 226
    iget v2, p0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I

    invoke-virtual {p0, v2}, Landroid/database/AbstractCursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Landroid/database/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    goto :goto_0
.end method

.method public final moveToPrevious()Z
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method protected onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 344
    iget-object v1, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    :try_start_0
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/database/ContentObservable;->dispatchChange(ZLandroid/net/Uri;)V

    .line 346
    iget-object v0, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 347
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    iget-object v3, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 349
    :cond_0
    monitor-exit v1

    .line 350
    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onDeactivateOrClose()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 129
    :cond_0
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 130
    return-void
.end method

.method public onMove(II)Z
    .locals 1
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 319
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    .line 320
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 330
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 331
    return-void
.end method

.method public requery()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 133
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    iput-boolean v3, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 137
    :cond_0
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 138
    return v3
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 403
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 395
    if-nez p1, :cond_0

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .end local p1    # "extras":Landroid/os/Bundle;
    :cond_0
    iput-object p1, p0, Landroid/database/AbstractCursor;->mExtras:Landroid/os/Bundle;

    .line 396
    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "notifyUri"    # Landroid/net/Uri;

    .prologue
    .line 360
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/database/AbstractCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    .line 361
    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    .locals 5
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "notifyUri"    # Landroid/net/Uri;
    .param p3, "userHandle"    # I

    .prologue
    .line 365
    iget-object v1, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_0
    iput-object p2, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    .line 367
    iput-object p1, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    .line 368
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 371
    :cond_0
    new-instance v0, Landroid/database/AbstractCursor$SelfContentObserver;

    invoke-direct {v0, p0}, Landroid/database/AbstractCursor$SelfContentObserver;-><init>(Landroid/database/AbstractCursor;)V

    iput-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    .line 372
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v4, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 374
    monitor-exit v1

    .line 375
    return-void

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 324
    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 327
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 334
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 335
    return-void
.end method
