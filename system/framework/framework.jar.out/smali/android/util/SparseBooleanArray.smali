.class public Landroid/util/SparseBooleanArray;
.super Ljava/lang/Object;
.source "SparseBooleanArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mKeys:[I

.field private mSize:I

.field private mValues:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-nez p1, :cond_0

    .line 60
    sget-object v0, Landroid/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    .line 61
    sget-object v0, Landroid/util/ContainerHelpers;->EMPTY_BOOLEANS:[Z

    iput-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    .line 67
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    .line 68
    return-void

    .line 63
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result p1

    .line 64
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    .line 65
    new-array v0, p1, [Z

    iput-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    goto :goto_0
.end method


# virtual methods
.method public append(IZ)V
    .locals 7
    .param p1, "key"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x0

    .line 231
    iget v4, p0, Landroid/util/SparseBooleanArray;->mSize:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v5, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-gt p1, v4, :cond_0

    .line 232
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 254
    :goto_0
    return-void

    .line 236
    :cond_0
    iget v3, p0, Landroid/util/SparseBooleanArray;->mSize:I

    .line 237
    .local v3, "pos":I
    iget-object v4, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 238
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .line 240
    .local v0, "n":I
    new-array v1, v0, [I

    .line 241
    .local v1, "nkeys":[I
    new-array v2, v0, [Z

    .line 244
    .local v2, "nvalues":[Z
    iget-object v4, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget-object v5, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    iget-object v4, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    iget-object v5, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    iput-object v1, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    .line 248
    iput-object v2, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    .line 251
    .end local v0    # "n":I
    .end local v1    # "nkeys":[I
    .end local v2    # "nvalues":[Z
    :cond_1
    iget-object v4, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    aput p1, v4, v3

    .line 252
    iget-object v4, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    aput-boolean p2, v4, v3

    .line 253
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/util/SparseBooleanArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    .line 224
    return-void
.end method

.method public clone()Landroid/util/SparseBooleanArray;
    .locals 3

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 74
    .local v1, "clone":Landroid/util/SparseBooleanArray;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/SparseBooleanArray;

    move-object v1, v0

    .line 75
    iget-object v2, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Landroid/util/SparseBooleanArray;->mKeys:[I

    .line 76
    iget-object v2, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    invoke-virtual {v2}, [Z->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    iput-object v2, v1, Landroid/util/SparseBooleanArray;->mValues:[Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-object v1

    .line 77
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
    .line 43
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .locals 6
    .param p1, "key"    # I

    .prologue
    .line 109
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseBooleanArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 111
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 112
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v4, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    iget v4, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    .line 116
    :cond_0
    return-void
.end method

.method public get(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public get(IZ)Z
    .locals 3
    .param p1, "key"    # I
    .param p2, "valueIfKeyNotFound"    # Z

    .prologue
    .line 96
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseBooleanArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 98
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 101
    .end local p2    # "valueIfKeyNotFound":Z
    :goto_0
    return p2

    .restart local p2    # "valueIfKeyNotFound":Z
    :cond_0
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    aget-boolean p2, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(I)I
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 200
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Z)I
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/util/SparseBooleanArray;->mSize:I

    if-ge v0, v1, :cond_1

    .line 213
    iget-object v1, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    aget-boolean v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 216
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 212
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 176
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(IZ)V
    .locals 8
    .param p1, "key"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x0

    .line 124
    iget-object v4, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget v5, p0, Landroid/util/SparseBooleanArray;->mSize:I

    invoke-static {v4, v5, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 126
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 127
    iget-object v4, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    aput-boolean p2, v4, v0

    .line 155
    :goto_0
    return-void

    .line 129
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 131
    iget v4, p0, Landroid/util/SparseBooleanArray;->mSize:I

    iget-object v5, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 132
    iget v4, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    .line 134
    .local v1, "n":I
    new-array v2, v1, [I

    .line 135
    .local v2, "nkeys":[I
    new-array v3, v1, [Z

    .line 138
    .local v3, "nvalues":[Z
    iget-object v4, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget-object v5, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    iget-object v4, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    iget-object v5, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iput-object v2, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    .line 142
    iput-object v3, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    .line 145
    .end local v1    # "n":I
    .end local v2    # "nkeys":[I
    .end local v3    # "nvalues":[Z
    :cond_1
    iget v4, p0, Landroid/util/SparseBooleanArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_2

    .line 147
    iget-object v4, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    iget-object v5, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/util/SparseBooleanArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    iget-object v4, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    iget-object v5, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/util/SparseBooleanArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    :cond_2
    iget-object v4, p0, Landroid/util/SparseBooleanArray;->mKeys:[I

    aput p1, v4, v0

    .line 152
    iget-object v4, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    aput-boolean p2, v4, v0

    .line 153
    iget v4, p0, Landroid/util/SparseBooleanArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/util/SparseBooleanArray;->mSize:I

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Landroid/util/SparseBooleanArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 263
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 264
    const-string/jumbo v4, "{}"

    .line 280
    :goto_0
    return-object v4

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/SparseBooleanArray;->mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 268
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Landroid/util/SparseBooleanArray;->mSize:I

    if-ge v1, v4, :cond_2

    .line 270
    if-lez v1, :cond_1

    .line 271
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 274
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    .line 277
    .local v3, "value":Z
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 279
    .end local v2    # "key":I
    .end local v3    # "value":Z
    :cond_2
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public valueAt(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 191
    iget-object v0, p0, Landroid/util/SparseBooleanArray;->mValues:[Z

    aget-boolean v0, v0, p1

    return v0
.end method
