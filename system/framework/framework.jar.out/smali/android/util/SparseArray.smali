.class public Landroid/util/SparseArray;
.super Ljava/lang/Object;
.source "SparseArray.java"

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

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 62
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 72
    if-nez p1, :cond_0

    .line 73
    sget-object v0, Landroid/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 74
    sget-object v0, Landroid/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 80
    :goto_0
    iput v1, p0, Landroid/util/SparseArray;->mSize:I

    .line 81
    return-void

    .line 76
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result p1

    .line 77
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 78
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private gc()V
    .locals 7

    .prologue
    .line 167
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    .line 168
    .local v2, "n":I
    const/4 v3, 0x0

    .line 169
    .local v3, "o":I
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 170
    .local v1, "keys":[I
    iget-object v5, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 172
    .local v5, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 173
    aget-object v4, v5, v0

    .line 175
    .local v4, "val":Ljava/lang/Object;
    sget-object v6, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_1

    .line 176
    if-eq v0, v3, :cond_0

    .line 177
    aget v6, v1, v0

    aput v6, v1, v3

    .line 178
    aput-object v4, v5, v3

    .line 179
    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 182
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 172
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v4    # "val":Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 187
    iput v3, p0, Landroid/util/SparseArray;->mSize:I

    .line 190
    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .locals 7
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    .line 362
    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v5, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-gt p1, v4, :cond_0

    .line 363
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 389
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-boolean v4, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    iget-object v5, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 368
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 371
    :cond_1
    iget v3, p0, Landroid/util/SparseArray;->mSize:I

    .line 372
    .local v3, "pos":I
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 373
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .line 375
    .local v0, "n":I
    new-array v1, v0, [I

    .line 376
    .local v1, "nkeys":[I
    new-array v2, v0, [Ljava/lang/Object;

    .line 379
    .local v2, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    iget-object v5, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    iput-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 383
    iput-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 386
    .end local v0    # "n":I
    .end local v1    # "nkeys":[I
    .end local v2    # "nvalues":[Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    aput p1, v4, v3

    .line 387
    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v3

    .line 388
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/util/SparseArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    .prologue
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v4, 0x0

    .line 346
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    .line 347
    .local v1, "n":I
    iget-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 349
    .local v2, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 350
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_0
    iput v4, p0, Landroid/util/SparseArray;->mSize:I

    .line 354
    iput-boolean v4, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 355
    return-void
.end method

.method public clone()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v1, 0x0

    .line 88
    .local v1, "clone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/SparseArray;

    move-object v1, v0

    .line 89
    iget-object v2, p0, Landroid/util/SparseArray;->mKeys:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Landroid/util/SparseArray;->mKeys:[I

    .line 90
    iget-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;
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
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 124
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 126
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 127
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 128
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 129
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 132
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 113
    .local v0, "i":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 116
    .end local p2    # "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    :cond_0
    :goto_0
    return-object p2

    .restart local p2    # "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    :cond_1
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object p2, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(I)I
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 313
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 317
    :cond_0
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

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
    .line 331
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v1, :cond_0

    .line 332
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 335
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_2

    .line 336
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 339
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 335
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 267
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 268
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 271
    :cond_0
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 8
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    .line 198
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v5, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v4, v5, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 200
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 201
    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 242
    :goto_0
    return-void

    .line 203
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 205
    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 206
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    aput p1, v4, v0

    .line 207
    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    goto :goto_0

    .line 211
    :cond_1
    iget-boolean v4, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    iget-object v5, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 212
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 215
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v5, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v4, v5, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    .line 218
    :cond_2
    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    iget-object v5, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 219
    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    .line 221
    .local v1, "n":I
    new-array v2, v1, [I

    .line 222
    .local v2, "nkeys":[I
    new-array v3, v1, [Ljava/lang/Object;

    .line 225
    .local v3, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    iget-object v5, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    iput-object v2, p0, Landroid/util/SparseArray;->mKeys:[I

    .line 229
    iput-object v3, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 232
    .end local v1    # "n":I
    .end local v2    # "nkeys":[I
    .end local v3    # "nvalues":[Ljava/lang/Object;
    :cond_3
    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_4

    .line 234
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    iget-object v5, p0, Landroid/util/SparseArray;->mKeys:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/util/SparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/util/SparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    :cond_4
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    aput p1, v4, v0

    .line 239
    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 240
    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/util/SparseArray;->mSize:I

    goto/16 :goto_0
.end method

.method public remove(I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    .line 138
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 139
    return-void
.end method

.method public removeAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 145
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    .line 149
    :cond_0
    return-void
.end method

.method public removeAtRange(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "size"    # I

    .prologue
    .line 158
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    add-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 159
    .local v0, "end":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 160
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
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
    .line 300
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 301
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 304
    :cond_0
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 305
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 249
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 253
    :cond_0
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 400
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 401
    const-string/jumbo v4, "{}"

    .line 421
    :goto_0
    return-object v4

    .line 404
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 405
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v1, v4, :cond_3

    .line 407
    if-lez v1, :cond_1

    .line 408
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 411
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 412
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 414
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_2

    .line 415
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 406
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 417
    :cond_2
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 420
    .end local v2    # "key":I
    .end local v3    # "value":Ljava/lang/Object;
    :cond_3
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

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
    .line 287
    .local p0, "this":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    .line 291
    :cond_0
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
