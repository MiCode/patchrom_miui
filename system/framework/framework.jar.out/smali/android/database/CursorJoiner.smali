.class public final Landroid/database/CursorJoiner;
.super Ljava/lang/Object;
.source "CursorJoiner.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/CursorJoiner$1;,
        Landroid/database/CursorJoiner$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/database/CursorJoiner$Result;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/database/CursorJoiner$Result;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mColumnsLeft:[I

.field private mColumnsRight:[I

.field private mCompareResult:Landroid/database/CursorJoiner$Result;

.field private mCompareResultIsValid:Z

.field private mCursorLeft:Landroid/database/Cursor;

.field private mCursorRight:Landroid/database/Cursor;

.field private mValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Landroid/database/CursorJoiner;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/database/CursorJoiner;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V
    .locals 3
    .param p1, "cursorLeft"    # Landroid/database/Cursor;
    .param p2, "columnNamesLeft"    # [Ljava/lang/String;
    .param p3, "cursorRight"    # Landroid/database/Cursor;
    .param p4, "columnNamesRight"    # [Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    array-length v0, p2

    array-length v1, p4

    if-eq v0, v1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "you must have the same number of columns on the left and right, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iput-object p1, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    .line 85
    iput-object p3, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    .line 87
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 88
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/database/CursorJoiner;->buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorJoiner;->mColumnsLeft:[I

    .line 93
    invoke-direct {p0, p3, p4}, Landroid/database/CursorJoiner;->buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorJoiner;->mColumnsRight:[I

    .line 95
    iget-object v0, p0, Landroid/database/CursorJoiner;->mColumnsLeft:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    .line 96
    return-void
.end method

.method private buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 109
    array-length v2, p2

    new-array v0, v2, [I

    .line 110
    .local v0, "columns":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 111
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-object v0
.end method

.method private static varargs compareStrings([Ljava/lang/String;)I
    .locals 6
    .param p0, "values"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 243
    array-length v4, p0

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 244
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "you must specify an even number of values"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_5

    .line 248
    aget-object v4, p0, v1

    if-nez v4, :cond_2

    .line 249
    add-int/lit8 v4, v1, 0x1

    aget-object v4, p0, v4

    if-nez v4, :cond_3

    .line 247
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 253
    :cond_2
    add-int/lit8 v4, v1, 0x1

    aget-object v4, p0, v4

    if-nez v4, :cond_4

    move v2, v3

    .line 263
    :cond_3
    :goto_1
    return v2

    .line 257
    :cond_4
    aget-object v4, p0, v1

    add-int/lit8 v5, v1, 0x1

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 258
    .local v0, "comp":I
    if-eqz v0, :cond_1

    .line 259
    if-ltz v0, :cond_3

    move v2, v3

    goto :goto_1

    .line 263
    .end local v0    # "comp":I
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private incrementCursors()V
    .locals 2

    .prologue
    .line 217
    iget-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    if-eqz v0, :cond_0

    .line 218
    sget-object v0, Landroid/database/CursorJoiner$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    iget-object v1, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 230
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    .line 232
    :cond_0
    return-void

    .line 220
    :pswitch_0
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 223
    :pswitch_1
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 226
    :pswitch_2
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 227
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V
    .locals 3
    .param p0, "values"    # [Ljava/lang/String;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnIndicies"    # [I
    .param p3, "startingIndex"    # I

    .prologue
    .line 206
    sget-boolean v1, Landroid/database/CursorJoiner;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 207
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 208
    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    aget v2, p2, v0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 121
    iget-boolean v2, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    if-eqz v2, :cond_4

    .line 122
    sget-object v2, Landroid/database/CursorJoiner$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    iget-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v3}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad value for mCompareResult, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :pswitch_0
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 137
    :cond_1
    :goto_0
    return v0

    .line 127
    :pswitch_1
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    move v0, v1

    goto :goto_0

    .line 130
    :pswitch_2
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 137
    :cond_4
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/database/CursorJoiner$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    return-object p0
.end method

.method public next()Landroid/database/CursorJoiner$Result;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 157
    invoke-virtual {p0}, Landroid/database/CursorJoiner;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 158
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "you must only call next() when hasNext() is true"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_0
    invoke-direct {p0}, Landroid/database/CursorJoiner;->incrementCursors()V

    .line 161
    sget-boolean v4, Landroid/database/CursorJoiner;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroid/database/CursorJoiner;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 163
    :cond_1
    iget-object v4, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    .line 164
    .local v0, "hasLeft":Z
    :goto_0
    iget-object v4, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    .line 166
    .local v1, "hasRight":Z
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 167
    iget-object v4, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    iget-object v5, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    iget-object v6, p0, Landroid/database/CursorJoiner;->mColumnsLeft:[I

    invoke-static {v4, v5, v6, v3}, Landroid/database/CursorJoiner;->populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V

    .line 168
    iget-object v3, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    iget-object v4, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    iget-object v5, p0, Landroid/database/CursorJoiner;->mColumnsRight:[I

    invoke-static {v3, v4, v5, v2}, Landroid/database/CursorJoiner;->populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V

    .line 169
    iget-object v3, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    invoke-static {v3}, Landroid/database/CursorJoiner;->compareStrings([Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 186
    :goto_2
    iput-boolean v2, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    .line 187
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    return-object v2

    .end local v0    # "hasLeft":Z
    .end local v1    # "hasRight":Z
    :cond_2
    move v0, v3

    .line 163
    goto :goto_0

    .restart local v0    # "hasLeft":Z
    :cond_3
    move v1, v3

    .line 164
    goto :goto_1

    .line 171
    .restart local v1    # "hasRight":Z
    :pswitch_0
    sget-object v3, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    iput-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    goto :goto_2

    .line 174
    :pswitch_1
    sget-object v3, Landroid/database/CursorJoiner$Result;->BOTH:Landroid/database/CursorJoiner$Result;

    iput-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    goto :goto_2

    .line 177
    :pswitch_2
    sget-object v3, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    iput-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    goto :goto_2

    .line 180
    :cond_4
    if-eqz v0, :cond_5

    .line 181
    sget-object v3, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    iput-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    goto :goto_2

    .line 183
    :cond_5
    sget-boolean v3, Landroid/database/CursorJoiner;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    if-nez v1, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 184
    :cond_6
    sget-object v3, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    iput-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    goto :goto_2

    .line 169
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/database/CursorJoiner;->next()Landroid/database/CursorJoiner$Result;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
