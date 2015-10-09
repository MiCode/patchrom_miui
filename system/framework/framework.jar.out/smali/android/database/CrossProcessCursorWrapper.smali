.class public Landroid/database/CrossProcessCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "CrossProcessCursorWrapper.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 43
    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .prologue
    .line 47
    iget-object v1, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    instance-of v1, v1, Landroid/database/CrossProcessCursor;

    if-eqz v1, :cond_0

    .line 48
    iget-object v0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    check-cast v0, Landroid/database/CrossProcessCursor;

    .line 49
    .local v0, "crossProcessCursor":Landroid/database/CrossProcessCursor;
    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 54
    .end local v0    # "crossProcessCursor":Landroid/database/CrossProcessCursor;
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v1, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-static {v1, p1, p2}, Landroid/database/DatabaseUtils;->cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V

    goto :goto_0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 2

    .prologue
    .line 58
    iget-object v1, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    instance-of v1, v1, Landroid/database/CrossProcessCursor;

    if-eqz v1, :cond_0

    .line 59
    iget-object v0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    check-cast v0, Landroid/database/CrossProcessCursor;

    .line 60
    .local v0, "crossProcessCursor":Landroid/database/CrossProcessCursor;
    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v1

    .line 63
    .end local v0    # "crossProcessCursor":Landroid/database/CrossProcessCursor;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onMove(II)Z
    .locals 2
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 68
    iget-object v1, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    instance-of v1, v1, Landroid/database/CrossProcessCursor;

    if-eqz v1, :cond_0

    .line 69
    iget-object v0, p0, Landroid/database/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    check-cast v0, Landroid/database/CrossProcessCursor;

    .line 70
    .local v0, "crossProcessCursor":Landroid/database/CrossProcessCursor;
    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v1

    .line 73
    .end local v0    # "crossProcessCursor":Landroid/database/CrossProcessCursor;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
