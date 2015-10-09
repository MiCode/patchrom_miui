.class public abstract Landroid/content/CursorEntityIterator;
.super Ljava/lang/Object;
.source "CursorEntityIterator.java"

# interfaces
.implements Landroid/content/EntityIterator;


# instance fields
.field private final mCursor:Landroid/database/Cursor;

.field private mIsClosed:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/CursorEntityIterator;->mIsClosed:Z

    .line 38
    iput-object p1, p0, Landroid/content/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    .line 39
    iget-object v0, p0, Landroid/content/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 40
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 106
    iget-boolean v0, p0, Landroid/content/CursorEntityIterator;->mIsClosed:Z

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closing when already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/CursorEntityIterator;->mIsClosed:Z

    .line 110
    iget-object v0, p0, Landroid/content/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 111
    return-void
.end method

.method public abstract getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/content/CursorEntityIterator;->mIsClosed:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "calling hasNext() when the iterator is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iget-object v0, p0, Landroid/content/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Landroid/content/Entity;
    .locals 3

    .prologue
    .line 76
    iget-boolean v1, p0, Landroid/content/CursorEntityIterator;->mIsClosed:Z

    if-eqz v1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling next() when the iterator is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroid/content/CursorEntityIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "you may only call next() if hasNext() is true"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/content/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Landroid/content/CursorEntityIterator;->getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "caught a remote exception, this process will die soon"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/content/CursorEntityIterator;->next()Landroid/content/Entity;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "remove not supported by EntityIterators"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/content/CursorEntityIterator;->mIsClosed:Z

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "calling reset() when the iterator is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iget-object v0, p0, Landroid/content/CursorEntityIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 99
    return-void
.end method
