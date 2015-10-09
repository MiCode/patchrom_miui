.class public Landroid/util/LongSparseLongArray;
.super Ljava/lang/Object;
.source "LongSparseLongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mKeys:[J

.field private mSize:I

.field private mValues:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/LongSparseLongArray;-><init>(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p1, :cond_0

    .line 67
    sget-object v0, Landroid/util/ContainerHelpers;->EMPTY_LONGS:[J

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 68
    sget-object v0, Landroid/util/ContainerHelpers;->EMPTY_LONGS:[J

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    .line 74
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 75
    return-void

    .line 70
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealLongArraySize(I)I

    move-result p1

    .line 71
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 72
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    goto :goto_0
.end method

.method private growKeyAndValueArrays(I)V
    .locals 6
    .param p1, "minNeededSize"    # I

    .prologue
    const/4 v5, 0x0

    .line 250
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealLongArraySize(I)I

    move-result v0

    .line 252
    .local v0, "n":I
    new-array v1, v0, [J

    .line 253
    .local v1, "nkeys":[J
    new-array v2, v0, [J

    .line 255
    .local v2, "nvalues":[J
    iget-object v3, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget-object v4, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iget-object v3, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    iget-object v4, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    iput-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 259
    iput-object v2, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    .line 260
    return-void
.end method


# virtual methods
.method public append(JJ)V
    .locals 3
    .param p1, "key"    # J
    .param p3, "value"    # J

    .prologue
    .line 234
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 235
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 247
    :goto_0
    return-void

    .line 239
    :cond_0
    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 240
    .local v0, "pos":I
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 241
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Landroid/util/LongSparseLongArray;->growKeyAndValueArrays(I)V

    .line 244
    :cond_1
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 245
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aput-wide p3, v1, v0

    .line 246
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 227
    return-void
.end method

.method public clone()Landroid/util/LongSparseLongArray;
    .locals 3

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 81
    .local v1, "clone":Landroid/util/LongSparseLongArray;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/LongSparseLongArray;

    move-object v1, v0

    .line 82
    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v1, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 83
    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v1, Landroid/util/LongSparseLongArray;->mValues:[J
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-object v1

    .line 84
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
    .line 46
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(J)V
    .locals 3
    .param p1, "key"    # J

    .prologue
    .line 116
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 118
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Landroid/util/LongSparseLongArray;->removeAt(I)V

    .line 121
    :cond_0
    return-void
.end method

.method public get(J)J
    .locals 2
    .param p1, "key"    # J

    .prologue
    .line 95
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/util/LongSparseLongArray;->get(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(JJ)J
    .locals 3
    .param p1, "key"    # J
    .param p3, "valueIfKeyNotFound"    # J

    .prologue
    .line 103
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 105
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 108
    .end local p3    # "valueIfKeyNotFound":J
    :goto_0
    return-wide p3

    .restart local p3    # "valueIfKeyNotFound":J
    :cond_0
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aget-wide p3, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(J)I
    .locals 2
    .param p1, "key"    # J

    .prologue
    .line 203
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(J)I
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 215
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    if-ge v0, v1, :cond_1

    .line 216
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 219
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 215
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 179
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JJ)V
    .locals 5
    .param p1, "key"    # J
    .param p3, "value"    # J

    .prologue
    .line 138
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 140
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 141
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aput-wide p3, v1, v0

    .line 158
    :goto_0
    return-void

    .line 143
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 145
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 146
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Landroid/util/LongSparseLongArray;->growKeyAndValueArrays(I)V

    .line 149
    :cond_1
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/util/LongSparseLongArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/util/LongSparseLongArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    :cond_2
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 155
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aput-wide p3, v1, v0

    .line 156
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    goto :goto_0
.end method

.method public removeAt(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 127
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v3, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    iget v3, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 130
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v6

    if-gtz v6, :cond_0

    .line 270
    const-string/jumbo v6, "{}"

    .line 286
    :goto_0
    return-object v6

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/util/LongSparseLongArray;->mSize:I

    mul-int/lit8 v6, v6, 0x1c

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 274
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v6, 0x7b

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v6, p0, Landroid/util/LongSparseLongArray;->mSize:I

    if-ge v1, v6, :cond_2

    .line 276
    if-lez v1, :cond_1

    .line 277
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v2

    .line 280
    .local v2, "key":J
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 281
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v4

    .line 283
    .local v4, "value":J
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 285
    .end local v2    # "key":J
    .end local v4    # "value":J
    :cond_2
    const/16 v6, 0x7d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public valueAt(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 194
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method
