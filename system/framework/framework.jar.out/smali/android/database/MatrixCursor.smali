.class public Landroid/database/MatrixCursor;
.super Landroid/database/AbstractCursor;
.source "MatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/MatrixCursor$RowBuilder;
    }
.end annotation


# instance fields
.field private final columnCount:I

.field private final columnNames:[Ljava/lang/String;

.field private data:[Ljava/lang/Object;

.field private rowCount:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 58
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 1
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "initialCapacity"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/MatrixCursor;->rowCount:I

    .line 41
    iput-object p1, p0, Landroid/database/MatrixCursor;->columnNames:[Ljava/lang/String;

    .line 42
    array-length v0, p1

    iput v0, p0, Landroid/database/MatrixCursor;->columnCount:I

    .line 44
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 45
    const/4 p2, 0x1

    .line 48
    :cond_0
    iget v0, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int/2addr v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 49
    return-void
.end method

.method static synthetic access$000(Landroid/database/MatrixCursor;)I
    .locals 1
    .param p0, "x0"    # Landroid/database/MatrixCursor;

    .prologue
    .line 26
    iget v0, p0, Landroid/database/MatrixCursor;->columnCount:I

    return v0
.end method

.method static synthetic access$100(Landroid/database/MatrixCursor;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/database/MatrixCursor;

    .prologue
    .line 26
    iget-object v0, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Landroid/database/MatrixCursor;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/database/MatrixCursor;

    .prologue
    .line 26
    iget-object v0, p0, Landroid/database/MatrixCursor;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method private addRow(Ljava/util/ArrayList;I)V
    .locals 6
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "columnValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 156
    .local v2, "size":I
    iget v3, p0, Landroid/database/MatrixCursor;->columnCount:I

    if-eq v2, v3, :cond_0

    .line 157
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "columnNames.length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/database/MatrixCursor;->columnCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", columnValues.size() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 161
    :cond_0
    iget v3, p0, Landroid/database/MatrixCursor;->rowCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/database/MatrixCursor;->rowCount:I

    .line 162
    iget-object v1, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 163
    .local v1, "localData":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 164
    add-int v3, p2, v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 170
    iget-object v2, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    array-length v2, v2

    if-le p1, v2, :cond_1

    .line 171
    iget-object v1, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 172
    .local v1, "oldData":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x2

    .line 173
    .local v0, "newSize":I
    if-ge v0, p1, :cond_0

    .line 174
    move v0, p1

    .line 176
    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    iput-object v2, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 177
    iget-object v2, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    .end local v0    # "newSize":I
    .end local v1    # "oldData":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "column"    # I

    .prologue
    .line 65
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/database/MatrixCursor;->columnCount:I

    if-lt p1, v0, :cond_1

    .line 66
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", # of columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    iget v0, p0, Landroid/database/MatrixCursor;->mPos:I

    if-gez v0, :cond_2

    .line 70
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_2
    iget v0, p0, Landroid/database/MatrixCursor;->mPos:I

    iget v1, p0, Landroid/database/MatrixCursor;->rowCount:I

    if-lt v0, v1, :cond_3

    .line 73
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_3
    iget-object v0, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    iget v1, p0, Landroid/database/MatrixCursor;->mPos:I

    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public addRow(Ljava/lang/Iterable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "columnValues":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    iget v7, p0, Landroid/database/MatrixCursor;->rowCount:I

    iget v8, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int v6, v7, v8

    .line 124
    .local v6, "start":I
    iget v7, p0, Landroid/database/MatrixCursor;->columnCount:I

    add-int v3, v6, v7

    .line 125
    .local v3, "end":I
    invoke-direct {p0, v3}, Landroid/database/MatrixCursor;->ensureCapacity(I)V

    .line 127
    instance-of v7, p1, Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 128
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "columnValues":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-direct {p0, p1, v6}, Landroid/database/MatrixCursor;->addRow(Ljava/util/ArrayList;I)V

    .line 151
    :goto_0
    return-void

    .line 132
    .restart local p1    # "columnValues":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    :cond_0
    move v1, v6

    .line 133
    .local v1, "current":I
    iget-object v5, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    .line 134
    .local v5, "localData":[Ljava/lang/Object;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 135
    .local v0, "columnValue":Ljava/lang/Object;
    if-ne v1, v3, :cond_1

    .line 137
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "columnValues.size() > columnNames.length"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 140
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "current":I
    .local v2, "current":I
    aput-object v0, v5, v1

    move v1, v2

    .end local v2    # "current":I
    .restart local v1    # "current":I
    goto :goto_1

    .line 143
    .end local v0    # "columnValue":Ljava/lang/Object;
    :cond_2
    if-eq v1, v3, :cond_3

    .line 145
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "columnValues.size() < columnNames.length"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 150
    :cond_3
    iget v7, p0, Landroid/database/MatrixCursor;->rowCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/database/MatrixCursor;->rowCount:I

    goto :goto_0
.end method

.method public addRow([Ljava/lang/Object;)V
    .locals 4
    .param p1, "columnValues"    # [Ljava/lang/Object;

    .prologue
    .line 102
    array-length v1, p1

    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    if-eq v1, v2, :cond_0

    .line 103
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "columnNames.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/database/MatrixCursor;->columnCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", columnValues.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_0
    iget v1, p0, Landroid/database/MatrixCursor;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/database/MatrixCursor;->rowCount:I

    iget v2, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int v0, v1, v2

    .line 109
    .local v0, "start":I
    iget v1, p0, Landroid/database/MatrixCursor;->columnCount:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Landroid/database/MatrixCursor;->ensureCapacity(I)V

    .line 110
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;

    iget v3, p0, Landroid/database/MatrixCursor;->columnCount:I

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 301
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 302
    .local v0, "value":Ljava/lang/Object;
    check-cast v0, [B

    .end local v0    # "value":Ljava/lang/Object;
    check-cast v0, [B

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Landroid/database/MatrixCursor;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Landroid/database/MatrixCursor;->rowCount:I

    return v0
.end method

.method public getDouble(I)D
    .locals 3
    .param p1, "column"    # I

    .prologue
    .line 293
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 294
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 296
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-wide v1

    .line 295
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    .line 296
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    goto :goto_0
.end method

.method public getFloat(I)F
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 285
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 286
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 288
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return v1

    .line 287
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    goto :goto_0

    .line 288
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 269
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 270
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 272
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return v1

    .line 271
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    .line 272
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .param p1, "column"    # I

    .prologue
    .line 277
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 278
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 280
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-wide v1

    .line 279
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 280
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 261
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 262
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 264
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return v1

    .line 263
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    goto :goto_0

    .line 264
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 254
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 255
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 256
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 307
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 312
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newRow()Landroid/database/MatrixCursor$RowBuilder;
    .locals 4

    .prologue
    .line 86
    iget v1, p0, Landroid/database/MatrixCursor;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/database/MatrixCursor;->rowCount:I

    .line 87
    .local v1, "row":I
    iget v2, p0, Landroid/database/MatrixCursor;->rowCount:I

    iget v3, p0, Landroid/database/MatrixCursor;->columnCount:I

    mul-int v0, v2, v3

    .line 88
    .local v0, "endIndex":I
    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;->ensureCapacity(I)V

    .line 89
    new-instance v2, Landroid/database/MatrixCursor$RowBuilder;

    invoke-direct {v2, p0, v1}, Landroid/database/MatrixCursor$RowBuilder;-><init>(Landroid/database/MatrixCursor;I)V

    return-object v2
.end method
