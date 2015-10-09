.class public Landroid/util/SparseIntArray;
.super Ljava/lang/Object;
.source "SparseIntArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mKeys:[I

.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-nez p1, :cond_0

    .line 63
    sget-object v0, Landroid/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    .line 64
    sget-object v0, Landroid/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    .line 70
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    .line 71
    return-void

    .line 66
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result p1

    .line 67
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    .line 68
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    goto :goto_0
.end method


# virtual methods
.method public append(II)V
    .locals 7
    .param p1, "key"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v6, 0x0

    .line 241
    iget v4, p0, Landroid/util/SparseIntArray;->mSize:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v5, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-gt p1, v4, :cond_0

    .line 242
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 264
    :goto_0
    return-void

    .line 246
    :cond_0
    iget v3, p0, Landroid/util/SparseIntArray;->mSize:I

    .line 247
    .local v3, "pos":I
    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 248
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .line 250
    .local v0, "n":I
    new-array v1, v0, [I

    .line 251
    .local v1, "nkeys":[I
    new-array v2, v0, [I

    .line 254
    .local v2, "nvalues":[I
    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget-object v5, p0, Landroid/util/SparseIntArray;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    iget-object v4, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget-object v5, p0, Landroid/util/SparseIntArray;->mValues:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    iput-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    .line 258
    iput-object v2, p0, Landroid/util/SparseIntArray;->mValues:[I

    .line 261
    .end local v0    # "n":I
    .end local v1    # "nkeys":[I
    .end local v2    # "nvalues":[I
    :cond_1
    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    aput p1, v4, v3

    .line 262
    iget-object v4, p0, Landroid/util/SparseIntArray;->mValues:[I

    aput p2, v4, v3

    .line 263
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/util/SparseIntArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    .line 234
    return-void
.end method

.method public clone()Landroid/util/SparseIntArray;
    .locals 3

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 77
    .local v1, "clone":Landroid/util/SparseIntArray;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/SparseIntArray;

    move-object v1, v0

    .line 78
    iget-object v2, p0, Landroid/util/SparseIntArray;->mKeys:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Landroid/util/SparseIntArray;->mKeys:[I

    .line 79
    iget-object v2, p0, Landroid/util/SparseIntArray;->mValues:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Landroid/util/SparseIntArray;->mValues:[I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-object v1

    .line 80
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 112
    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 114
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 115
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 117
    :cond_0
    return-void
.end method

.method public get(I)I
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public get(II)I
    .locals 3
    .param p1, "key"    # I
    .param p2, "valueIfKeyNotFound"    # I

    .prologue
    .line 99
    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 101
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 104
    .end local p2    # "valueIfKeyNotFound":I
    :goto_0
    return p2

    .restart local p2    # "valueIfKeyNotFound":I
    :cond_0
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    aget p2, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(I)I
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 210
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public indexOfValue(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    if-ge v0, v1, :cond_1

    .line 223
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 226
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 222
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 186
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(II)V
    .locals 8
    .param p1, "key"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v6, 0x0

    .line 134
    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v5, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v4, v5, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 136
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 137
    iget-object v4, p0, Landroid/util/SparseIntArray;->mValues:[I

    aput p2, v4, v0

    .line 165
    :goto_0
    return-void

    .line 139
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 141
    iget v4, p0, Landroid/util/SparseIntArray;->mSize:I

    iget-object v5, p0, Landroid/util/SparseIntArray;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 142
    iget v4, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    .line 144
    .local v1, "n":I
    new-array v2, v1, [I

    .line 145
    .local v2, "nkeys":[I
    new-array v3, v1, [I

    .line 148
    .local v3, "nvalues":[I
    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget-object v5, p0, Landroid/util/SparseIntArray;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget-object v4, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget-object v5, p0, Landroid/util/SparseIntArray;->mValues:[I

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iput-object v2, p0, Landroid/util/SparseIntArray;->mKeys:[I

    .line 152
    iput-object v3, p0, Landroid/util/SparseIntArray;->mValues:[I

    .line 155
    .end local v1    # "n":I
    .end local v2    # "nkeys":[I
    .end local v3    # "nvalues":[I
    :cond_1
    iget v4, p0, Landroid/util/SparseIntArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_2

    .line 157
    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget-object v5, p0, Landroid/util/SparseIntArray;->mKeys:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/util/SparseIntArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget-object v4, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget-object v5, p0, Landroid/util/SparseIntArray;->mValues:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/util/SparseIntArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    :cond_2
    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    aput p1, v4, v0

    .line 162
    iget-object v4, p0, Landroid/util/SparseIntArray;->mValues:[I

    aput p2, v4, v0

    .line 163
    iget v4, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/util/SparseIntArray;->mSize:I

    goto :goto_0
.end method

.method public removeAt(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 123
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v3, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget v3, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    .line 126
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 274
    const-string/jumbo v4, "{}"

    .line 290
    :goto_0
    return-object v4

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/SparseIntArray;->mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 278
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Landroid/util/SparseIntArray;->mSize:I

    if-ge v1, v4, :cond_2

    .line 280
    if-lez v1, :cond_1

    .line 281
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 284
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 287
    .local v3, "value":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 289
    .end local v2    # "key":I
    .end local v3    # "value":I
    :cond_2
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public valueAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 201
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    aget v0, v0, p1

    return v0
.end method
