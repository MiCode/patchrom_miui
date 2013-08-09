.class public final Lcom/google/zxing/common/BitMatrix;
.super Ljava/lang/Object;
.source "BitMatrix.java"


# instance fields
.field public final bits:[I

.field public final height:I

.field public final rowSize:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-lt p1, v0, :cond_0

    if-ge p2, v0, :cond_1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 52
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 53
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 54
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    .line 188
    instance-of v3, p1, Lcom/google/zxing/common/BitMatrix;

    if-nez v3, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 191
    check-cast v1, Lcom/google/zxing/common/BitMatrix;

    .line 192
    .local v1, other:Lcom/google/zxing/common/BitMatrix;
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v4, v1, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v4, v1, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget v4, v1, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v3, v3

    iget-object v4, v1, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 196
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 197
    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v3, v3, v0

    iget-object v4, v1, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_0

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public get(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 65
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    shr-int/lit8 v2, p1, 0x5

    add-int v0, v1, v2

    .line 66
    .local v0, offset:I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v1, v1, v0

    and-int/lit8 v2, p1, 0x1f

    ushr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 205
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 206
    .local v0, hash:I
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int v0, v2, v3

    .line 207
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int v0, v2, v3

    .line 208
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    add-int v0, v2, v3

    .line 209
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 210
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v3, v3, v1

    add-int v0, v2, v3

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_0
    return v0
.end method

.method public setRegion(IIII)V
    .locals 10
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x1

    .line 110
    if-ltz p2, :cond_0

    if-gez p1, :cond_1

    .line 111
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Left and top must be nonnegative"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 113
    :cond_1
    if-lt p4, v9, :cond_2

    if-ge p3, v9, :cond_3

    .line 114
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Height and width must be at least 1"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 116
    :cond_3
    add-int v2, p1, p3

    .line 117
    .local v2, right:I
    add-int v0, p2, p4

    .line 118
    .local v0, bottom:I
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-gt v0, v5, :cond_4

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-le v2, v5, :cond_5

    .line 119
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The region must fit inside the matrix"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 121
    :cond_5
    move v4, p2

    .local v4, y:I
    :goto_0
    if-ge v4, v0, :cond_7

    .line 122
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v1, v4, v5

    .line 123
    .local v1, offset:I
    move v3, p1

    .local v3, x:I
    :goto_1
    if-ge v3, v2, :cond_6

    .line 124
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    shr-int/lit8 v6, v3, 0x5

    add-int/2addr v6, v1

    aget v7, v5, v6

    and-int/lit8 v8, v3, 0x1f

    shl-int v8, v9, v8

    or-int/2addr v7, v8

    aput v7, v5, v6

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 121
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    .end local v1           #offset:I
    .end local v3           #x:I
    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 217
    .local v0, result:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, y:I
    :goto_0
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v2, v3, :cond_2

    .line 218
    const/4 v1, 0x0

    .local v1, x:I
    :goto_1
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v1, v3, :cond_1

    .line 219
    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "X "

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 219
    :cond_0
    const-string v3, "  "

    goto :goto_2

    .line 221
    :cond_1
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    .end local v1           #x:I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
