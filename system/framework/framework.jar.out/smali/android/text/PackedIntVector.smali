.class Landroid/text/PackedIntVector;
.super Ljava/lang/Object;
.source "PackedIntVector.java"


# instance fields
.field private final mColumns:I

.field private mRowGapLength:I

.field private mRowGapStart:I

.field private mRows:I

.field private mValueGap:[I

.field private mValues:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "columns"    # I

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 45
    iput v0, p0, Landroid/text/PackedIntVector;->mRows:I

    .line 47
    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 48
    iget v0, p0, Landroid/text/PackedIntVector;->mRows:I

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 51
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 52
    return-void
.end method

.method private final growBuffer()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 254
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 255
    .local v1, "columns":I
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 256
    .local v3, "newsize":I
    mul-int v7, v3, v1

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v7

    div-int v3, v7, v1

    .line 257
    mul-int v7, v3, v1

    new-array v4, v7, [I

    .line 259
    .local v4, "newvalues":[I
    iget-object v6, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 260
    .local v6, "valuegap":[I
    iget v5, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 262
    .local v5, "rowgapstart":I
    iget v7, p0, Landroid/text/PackedIntVector;->mRows:I

    iget v8, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v8, v5

    sub-int v0, v7, v8

    .line 264
    .local v0, "after":I
    iget-object v7, p0, Landroid/text/PackedIntVector;->mValues:[I

    if-eqz v7, :cond_0

    .line 265
    iget-object v7, p0, Landroid/text/PackedIntVector;->mValues:[I

    mul-int v8, v1, v5

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    iget-object v7, p0, Landroid/text/PackedIntVector;->mValues:[I

    iget v8, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int/2addr v8, v0

    mul-int/2addr v8, v1

    sub-int v9, v3, v0

    mul-int/2addr v9, v1

    mul-int v10, v0, v1

    invoke-static {v7, v8, v4, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 272
    aget v7, v6, v2

    if-lt v7, v5, :cond_1

    .line 273
    aget v7, v6, v2

    iget v8, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int v8, v3, v8

    add-int/2addr v7, v8

    aput v7, v6, v2

    .line 275
    aget v7, v6, v2

    if-ge v7, v5, :cond_1

    .line 276
    aput v5, v6, v2

    .line 271
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    :cond_2
    iget v7, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    iget v8, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int v8, v3, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 282
    iput v3, p0, Landroid/text/PackedIntVector;->mRows:I

    .line 283
    iput-object v4, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 284
    return-void
.end method

.method private final moveRowGapTo(I)V
    .locals 12
    .param p1, "where"    # I

    .prologue
    .line 314
    iget v9, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-ne p1, v9, :cond_0

    .line 367
    :goto_0
    return-void

    .line 316
    :cond_0
    iget v9, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-le p1, v9, :cond_4

    .line 317
    iget v9, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v9, p1

    iget v10, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    iget v11, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v10, v11

    sub-int v5, v9, v10

    .line 318
    .local v5, "moving":I
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 319
    .local v0, "columns":I
    iget-object v7, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 320
    .local v7, "valuegap":[I
    iget-object v8, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 321
    .local v8, "values":[I
    iget v9, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    iget v10, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int v2, v9, v10

    .line 323
    .local v2, "gapend":I
    move v3, v2

    .local v3, "i":I
    :goto_1
    add-int v9, v2, v5

    if-ge v3, v9, :cond_8

    .line 324
    sub-int v9, v3, v2

    iget v10, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    add-int v1, v9, v10

    .line 326
    .local v1, "destrow":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v0, :cond_3

    .line 327
    mul-int v9, v3, v0

    add-int/2addr v9, v4

    aget v6, v8, v9

    .line 329
    .local v6, "val":I
    aget v9, v7, v4

    if-lt v3, v9, :cond_1

    .line 330
    add-int v9, v4, v0

    aget v9, v7, v9

    add-int/2addr v6, v9

    .line 333
    :cond_1
    aget v9, v7, v4

    if-lt v1, v9, :cond_2

    .line 334
    add-int v9, v4, v0

    aget v9, v7, v9

    sub-int/2addr v6, v9

    .line 337
    :cond_2
    mul-int v9, v1, v0

    add-int/2addr v9, v4

    aput v6, v8, v9

    .line 326
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 323
    .end local v6    # "val":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 341
    .end local v0    # "columns":I
    .end local v1    # "destrow":I
    .end local v2    # "gapend":I
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "moving":I
    .end local v7    # "valuegap":[I
    .end local v8    # "values":[I
    :cond_4
    iget v9, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    sub-int v5, v9, p1

    .line 342
    .restart local v5    # "moving":I
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 343
    .restart local v0    # "columns":I
    iget-object v7, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 344
    .restart local v7    # "valuegap":[I
    iget-object v8, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 345
    .restart local v8    # "values":[I
    iget v9, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    iget v10, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int v2, v9, v10

    .line 347
    .restart local v2    # "gapend":I
    add-int v9, p1, v5

    add-int/lit8 v3, v9, -0x1

    .restart local v3    # "i":I
    :goto_3
    if-lt v3, p1, :cond_8

    .line 348
    sub-int v9, v3, p1

    add-int/2addr v9, v2

    sub-int v1, v9, v5

    .line 350
    .restart local v1    # "destrow":I
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_4
    if-ge v4, v0, :cond_7

    .line 351
    mul-int v9, v3, v0

    add-int/2addr v9, v4

    aget v6, v8, v9

    .line 353
    .restart local v6    # "val":I
    aget v9, v7, v4

    if-lt v3, v9, :cond_5

    .line 354
    add-int v9, v4, v0

    aget v9, v7, v9

    add-int/2addr v6, v9

    .line 357
    :cond_5
    aget v9, v7, v4

    if-lt v1, v9, :cond_6

    .line 358
    add-int v9, v4, v0

    aget v9, v7, v9

    sub-int/2addr v6, v9

    .line 361
    :cond_6
    mul-int v9, v1, v0

    add-int/2addr v9, v4

    aput v6, v8, v9

    .line 350
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 347
    .end local v6    # "val":I
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 366
    .end local v1    # "destrow":I
    .end local v4    # "j":I
    :cond_8
    iput p1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    goto/16 :goto_0
.end method

.method private final moveValueGapTo(II)V
    .locals 7
    .param p1, "column"    # I
    .param p2, "where"    # I

    .prologue
    .line 291
    iget-object v2, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 292
    .local v2, "valuegap":[I
    iget-object v3, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 293
    .local v3, "values":[I
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 295
    .local v0, "columns":I
    aget v4, v2, p1

    if-ne p2, v4, :cond_0

    .line 308
    :goto_0
    return-void

    .line 297
    :cond_0
    aget v4, v2, p1

    if-le p2, v4, :cond_1

    .line 298
    aget v1, v2, p1

    .local v1, "i":I
    :goto_1
    if-ge v1, p2, :cond_2

    .line 299
    mul-int v4, v1, v0

    add-int/2addr v4, p1

    aget v5, v3, v4

    add-int v6, p1, v0

    aget v6, v2, v6

    add-int/2addr v5, v6

    aput v5, v3, v4

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 302
    .end local v1    # "i":I
    :cond_1
    move v1, p2

    .restart local v1    # "i":I
    :goto_2
    aget v4, v2, p1

    if-ge v1, v4, :cond_2

    .line 303
    mul-int v4, v1, v0

    add-int/2addr v4, p1

    aget v5, v3, v4

    add-int v6, p1, v0

    aget v6, v2, v6

    sub-int/2addr v5, v6

    aput v5, v3, v4

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 307
    :cond_2
    aput p2, v2, p1

    goto :goto_0
.end method

.method private setValueInternal(III)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # I

    .prologue
    .line 123
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v1, :cond_0

    .line 124
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v1

    .line 127
    :cond_0
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 128
    .local v0, "valuegap":[I
    aget v1, v0, p2

    if-lt p1, v1, :cond_1

    .line 129
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/2addr v1, p2

    aget v1, v0, v1

    sub-int/2addr p3, v1

    .line 132
    :cond_1
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    iget v2, p0, Landroid/text/PackedIntVector;->mColumns:I

    mul-int/2addr v2, p1

    add-int/2addr v2, p2

    aput p3, v1, v2

    .line 133
    return-void
.end method


# virtual methods
.method public adjustValuesBelow(III)V
    .locals 3
    .param p1, "startRow"    # I
    .param p2, "column"    # I
    .param p3, "delta"    # I

    .prologue
    .line 149
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->width()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v0, :cond_2

    .line 155
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 158
    :cond_2
    invoke-direct {p0, p2, p1}, Landroid/text/PackedIntVector;->moveValueGapTo(II)V

    .line 159
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/2addr v1, p2

    aget v2, v0, v1

    add-int/2addr v2, p3

    aput v2, v0, v1

    .line 160
    return-void
.end method

.method public deleteAt(II)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "count"    # I

    .prologue
    .line 216
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    add-int v0, p1, p2

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    add-int v0, p1, p2

    invoke-direct {p0, v0}, Landroid/text/PackedIntVector;->moveRowGapTo(I)V

    .line 222
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 223
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 227
    return-void
.end method

.method public getValue(II)I
    .locals 6
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 67
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 69
    .local v0, "columns":I
    or-int v3, p1, p2

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    if-lt p2, v0, :cond_1

    .line 70
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 73
    :cond_1
    iget v3, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v3, :cond_2

    .line 74
    iget v3, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v3

    .line 77
    :cond_2
    iget-object v3, p0, Landroid/text/PackedIntVector;->mValues:[I

    mul-int v4, p1, v0

    add-int/2addr v4, p2

    aget v1, v3, v4

    .line 79
    .local v1, "value":I
    iget-object v2, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 80
    .local v2, "valuegap":[I
    aget v3, v2, p2

    if-lt p1, v3, :cond_3

    .line 81
    add-int v3, p2, v0

    aget v3, v2, v3

    add-int/2addr v1, v3

    .line 84
    :cond_3
    return v1
.end method

.method public insertAt(I[I)V
    .locals 4
    .param p1, "row"    # I
    .param p2, "values"    # [I

    .prologue
    .line 176
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 177
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "row "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_1
    if-eqz p2, :cond_2

    array-length v1, p2

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->width()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 181
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_2
    invoke-direct {p0, p1}, Landroid/text/PackedIntVector;->moveRowGapTo(I)V

    .line 186
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    if-nez v1, :cond_3

    .line 187
    invoke-direct {p0}, Landroid/text/PackedIntVector;->growBuffer()V

    .line 190
    :cond_3
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 191
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 193
    if-nez p2, :cond_4

    .line 194
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 195
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/text/PackedIntVector;->setValueInternal(III)V

    .line 194
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 198
    .end local v0    # "i":I
    :cond_4
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 199
    aget v1, p2, v0

    invoke-direct {p0, p1, v0, v1}, Landroid/text/PackedIntVector;->setValueInternal(III)V

    .line 198
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 202
    :cond_5
    return-void
.end method

.method public setValue(III)V
    .locals 4
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # I

    .prologue
    .line 98
    or-int v1, p1, p2

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    if-lt p2, v1, :cond_1

    .line 99
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_1
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v1, :cond_2

    .line 103
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v1

    .line 106
    :cond_2
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 107
    .local v0, "valuegap":[I
    aget v1, v0, p2

    if-lt p1, v1, :cond_3

    .line 108
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/2addr v1, p2

    aget v1, v0, v1

    sub-int/2addr p3, v1

    .line 111
    :cond_3
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    iget v2, p0, Landroid/text/PackedIntVector;->mColumns:I

    mul-int/2addr v2, p1

    add-int/2addr v2, p2

    aput p3, v1, v2

    .line 112
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 236
    iget v0, p0, Landroid/text/PackedIntVector;->mRows:I

    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public width()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    return v0
.end method
