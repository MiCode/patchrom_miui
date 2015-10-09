.class final Landroid/database/sqlite/SQLiteCursorInjector;
.super Ljava/lang/Object;
.source "SQLiteCursorInjector.java"


# static fields
.field private static final COUNT_FIELD_NAME:Ljava/lang/String; = "mCount"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static calibRowCount(Landroid/database/sqlite/SQLiteCursor;Landroid/database/CursorWindow;II)V
    .locals 0
    .param p0, "thiz"    # Landroid/database/sqlite/SQLiteCursor;
    .param p1, "cursorWindow"    # Landroid/database/CursorWindow;
    .param p2, "oldPosition"    # I
    .param p3, "newPosition"    # I

    .prologue
    .line 39
    invoke-static {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteCursorInjector;->middle_onMove_calib_count(Landroid/database/sqlite/SQLiteCursor;Landroid/database/CursorWindow;II)V

    .line 40
    return-void
.end method

.method public static middle_onMove_calib_count(Landroid/database/sqlite/SQLiteCursor;Landroid/database/CursorWindow;II)V
    .locals 3
    .param p0, "thiz"    # Landroid/database/sqlite/SQLiteCursor;
    .param p1, "cursorWindow"    # Landroid/database/CursorWindow;
    .param p2, "oldPosition"    # I
    .param p3, "newPosition"    # I

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    invoke-virtual {p1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    add-int v0, v1, v2

    .line 32
    .local v0, "windowEndPosition":I
    if-gt v0, p3, :cond_0

    .line 33
    const-string v1, "mCount"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    .end local v0    # "windowEndPosition":I
    :cond_0
    return-void
.end method
