.class public Landroid/util/SparseLongArray;
.super Ljava/lang/Object;
.source "SparseLongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mKeys:[I

.field private mSize:I

.field private mValues:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/SparseLongArray;-><init>(I)V

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

    iput-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    .line 64
    sget-object v0, Landroid/util/ContainerHelpers;->EMPTY_LONGS:[J

    iput-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    .line 70
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    .line 71
    return-void

    .line 66
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealLongArraySize(I)I

    move-result p1

    .line 67
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    .line 68
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    goto :goto_0
.end method

.method private growKeyAndValueArrays(I)V
    .locals 6
    .param p1, "minNeededSize"    # I

    .prologue
    const/4 v5, 0x0

    .line 246
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealLongArraySize(I)I

    move-result v0

    .line 248
    .local v0, "n":I
    new-array v1, v0, [I

    .line 249
    .local v1, "nkeys":[I
    new-array v2, v0, [J

    .line 251
    .local v2, "nvalues":[J
    iget-object v3, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget-object v4, p0, Landroid/util/SparseLongArray;->mKeys:[I

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    iget-object v3, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget-object v4, p0, Landroid/util/SparseLongArray;->mValues:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    iput-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    .line 255
    iput-object v2, p0, Landroid/util/SparseLongArray;->mValues:[J

    .line 256
    return-void
.end method


# virtual methods
.method public append(IJ)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # J

    .prologue
    .line 230
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_0

    .line 231
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 243
    :goto_0
    return-void

    .line 235
    :cond_0
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    .line 236
    .local v0, "pos":I
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 237
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Landroid/util/SparseLongArray;->growKeyAndValueArrays(I)V

    .line 240
    :cond_1
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    aput p1, v1, v0

    .line 241
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aput-wide p2, v1, v0

    .line 242
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/util/SparseLongArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    .line 223
    return-void
.end method

.method public clone()Landroid/util/SparseLongArray;
    .locals 3

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 77
    .local v1, "clone":Landroid/util/SparseLongArray;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/SparseLongArray;

    move-object v1, v0

    .line 78
    iget-object v2, p0, Landroid/util/SparseLongArray;->mKeys:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Landroid/util/SparseLongArray;->mKeys:[I

    .line 79
    iget-object v2, p0, Landroid/util/SparseLongArray;->mValues:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v1, Landroid/util/SparseLongArray;->mValues:[J
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
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->clone()Landroid/util/SparseLongArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 112
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 114
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 115
    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 117
    :cond_0
    return-void
.end method

.method public get(I)J
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 91
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(IJ)J
    .locals 3
    .param p1, "key"    # I
    .param p2, "valueIfKeyNotFound"    # J

    .prologue
    .line 99
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 101
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 104
    .end local p2    # "valueIfKeyNotFound":J
    :goto_0
    return-wide p2

    .restart local p2    # "valueIfKeyNotFound":J
    :cond_0
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide p2, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(I)I
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 199
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public indexOfValue(J)I
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    if-ge v0, v1, :cond_1

    .line 212
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 215
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 211
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 175
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(IJ)V
    .locals 5
    .param p1, "key"    # I
    .param p2, "value"    # J

    .prologue
    .line 134
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 136
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 137
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aput-wide p2, v1, v0

    .line 154
    :goto_0
    return-void

    .line 139
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 141
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    iget-object v2, p0, Landroid/util/SparseLongArray;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 142
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Landroid/util/SparseLongArray;->growKeyAndValueArrays(I)V

    .line 145
    :cond_1
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget-object v2, p0, Landroid/util/SparseLongArray;->mKeys:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/util/SparseLongArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget-object v2, p0, Landroid/util/SparseLongArray;->mValues:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/util/SparseLongArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    :cond_2
    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    aput p1, v1, v0

    .line 151
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aput-wide p2, v1, v0

    .line 152
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/SparseLongArray;->mSize:I

    goto :goto_0
.end method

.method public removeAt(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 123
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v3, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget v3, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    .line 126
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 266
    const-string/jumbo v5, "{}"

    .line 282
    :goto_0
    return-object v5

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/SparseLongArray;->mSize:I

    mul-int/lit8 v5, v5, 0x1c

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 270
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v5, 0x7b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v5, p0, Landroid/util/SparseLongArray;->mSize:I

    if-ge v1, v5, :cond_2

    .line 272
    if-lez v1, :cond_1

    .line 273
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    .line 276
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p0, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    .line 279
    .local v3, "value":J
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 281
    .end local v2    # "key":I
    .end local v3    # "value":J
    :cond_2
    const/16 v5, 0x7d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public valueAt(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 190
    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method
