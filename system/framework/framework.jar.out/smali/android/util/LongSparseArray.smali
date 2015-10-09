.class public Landroid/util/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 62
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 72
    if-nez p1, :cond_0

    .line 73
    sget-object v0, Landroid/util/ContainerHelpers;->EMPTY_LONGS:[J

    iput-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 74
    sget-object v0, Landroid/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 80
    :goto_0
    iput v1, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 81
    return-void

    .line 76
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealLongArraySize(I)I

    move-result p1

    .line 77
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 78
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private gc()V
    .locals 8

    .prologue
    .line 154
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 155
    .local v2, "n":I
    const/4 v3, 0x0

    .line 156
    .local v3, "o":I
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 157
    .local v1, "keys":[J
    iget-object v5, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 159
    .local v5, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 160
    aget-object v4, v5, v0

    .line 162
    .local v4, "val":Ljava/lang/Object;
    sget-object v6, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_1

    .line 163
    if-eq v0, v3, :cond_0

    .line 164
    aget-wide v6, v1, v0

    aput-wide v6, v1, v3

    .line 165
    aput-object v4, v5, v3

    .line 166
    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 169
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 159
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v4    # "val":Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 174
    iput v3, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 177
    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .locals 7
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    .line 347
    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v5, p0, Landroid/util/LongSparseArray;->mSize:I

    add-int/lit8 v5, v5, -0x1

    aget-wide v4, v4, v5

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    .line 348
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 374
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-boolean v4, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    iget-object v5, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 353
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 356
    :cond_1
    iget v3, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 357
    .local v3, "pos":I
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 358
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealLongArraySize(I)I

    move-result v0

    .line 360
    .local v0, "n":I
    new-array v1, v0, [J

    .line 361
    .local v1, "nkeys":[J
    new-array v2, v0, [Ljava/lang/Object;

    .line 364
    .local v2, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    iput-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 368
    iput-object v2, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 371
    .end local v0    # "n":I
    .end local v1    # "nkeys":[J
    .end local v2    # "nvalues":[Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v3

    .line 372
    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v3

    .line 373
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/util/LongSparseArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    .prologue
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    const/4 v4, 0x0

    .line 331
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 332
    .local v1, "n":I
    iget-object v2, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 334
    .local v2, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 335
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_0
    iput v4, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 339
    iput-boolean v4, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 340
    return-void
.end method

.method public clone()Landroid/util/LongSparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    const/4 v1, 0x0

    .line 88
    .local v1, "clone":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/LongSparseArray;

    move-object v1, v0

    .line 89
    iget-object v2, p0, Landroid/util/LongSparseArray;->mKeys:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v1, Landroid/util/LongSparseArray;->mKeys:[J

    .line 90
    iget-object v2, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-object v1

    .line 91
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
    .line 49
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(J)V
    .locals 3
    .param p1, "key"    # J

    .prologue
    .line 124
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 126
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 127
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 128
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 129
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 132
    :cond_0
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    .local p3, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 113
    .local v0, "i":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 116
    .end local p3    # "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    :cond_0
    :goto_0
    return-object p3

    .restart local p3    # "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    :cond_1
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object p3, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(J)I
    .locals 2
    .param p1, "key"    # J

    .prologue
    .line 300
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 301
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 304
    :cond_0
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_0

    .line 317
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 320
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_2

    .line 321
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 324
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 320
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 254
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 255
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 258
    :cond_0
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JLjava/lang/Object;)V
    .locals 8
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    .line 185
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v5, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v4, v5, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    .line 187
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 188
    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    .line 229
    :goto_0
    return-void

    .line 190
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 192
    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 193
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 194
    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    goto :goto_0

    .line 198
    :cond_1
    iget-boolean v4, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    iget-object v5, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 199
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 202
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v5, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v4, v5, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    .line 205
    :cond_2
    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    iget-object v5, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 206
    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealLongArraySize(I)I

    move-result v1

    .line 208
    .local v1, "n":I
    new-array v2, v1, [J

    .line 209
    .local v2, "nkeys":[J
    new-array v3, v1, [Ljava/lang/Object;

    .line 212
    .local v3, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    iput-object v2, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 216
    iput-object v3, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 219
    .end local v1    # "n":I
    .end local v2    # "nkeys":[J
    .end local v3    # "nvalues":[Ljava/lang/Object;
    :cond_3
    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_4

    .line 221
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Landroid/util/LongSparseArray;->mKeys:[J

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/util/LongSparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/util/LongSparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    :cond_4
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 226
    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    .line 227
    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/util/LongSparseArray;->mSize:I

    goto/16 :goto_0
.end method

.method public remove(J)V
    .locals 0
    .param p1, "key"    # J

    .prologue
    .line 138
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 139
    return-void
.end method

.method public removeAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 145
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 149
    :cond_0
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 291
    :cond_0
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 292
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 236
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 240
    :cond_0
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 385
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 386
    const-string/jumbo v5, "{}"

    .line 406
    :goto_0
    return-object v5

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/LongSparseArray;->mSize:I

    mul-int/lit8 v5, v5, 0x1c

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 390
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v5, 0x7b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v5, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v1, v5, :cond_3

    .line 392
    if-lez v1, :cond_1

    .line 393
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 396
    .local v2, "key":J
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 397
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {p0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 399
    .local v4, "value":Ljava/lang/Object;
    if-eq v4, p0, :cond_2

    .line 400
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 391
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 402
    :cond_2
    const-string v5, "(this Map)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 405
    .end local v2    # "key":J
    .end local v4    # "value":Ljava/lang/Object;
    :cond_3
    const/16 v5, 0x7d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 275
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 278
    :cond_0
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
