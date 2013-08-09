.class public final Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
.super Ljava/lang/Object;
.source "ReedSolomonEncoder.java"


# instance fields
.field private final cachedGenerators:Ljava/util/Vector;

.field private final field:Lcom/google/zxing/common/reedsolomon/GF256;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GF256;)V
    .locals 5
    .parameter "field"

    .prologue
    const/4 v4, 0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GF256;->QR_CODE_FIELD:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only QR Code is supported at this time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/Vector;

    .line 38
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    new-array v2, v4, [I

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-direct {v1, p1, v2}, Lcom/google/zxing/common/reedsolomon/GF256Poly;-><init>(Lcom/google/zxing/common/reedsolomon/GF256;[I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method private buildGenerator(I)Lcom/google/zxing/common/reedsolomon/GF256Poly;
    .locals 9
    .parameter "degree"

    .prologue
    const/4 v8, 0x1

    .line 42
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 43
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/Vector;

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    .line 44
    .local v1, lastGenerator:Lcom/google/zxing/common/reedsolomon/GF256Poly;
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    .local v0, d:I
    :goto_0
    if-gt v0, p1, :cond_0

    .line 45
    new-instance v3, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v8, v5, v6

    iget-object v6, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Lcom/google/zxing/common/reedsolomon/GF256;->exp(I)I

    move-result v6

    aput v6, v5, v8

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/common/reedsolomon/GF256Poly;-><init>(Lcom/google/zxing/common/reedsolomon/GF256;[I)V

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->multiply(Lcom/google/zxing/common/reedsolomon/GF256Poly;)Lcom/google/zxing/common/reedsolomon/GF256Poly;

    move-result-object v2

    .line 46
    .local v2, nextGenerator:Lcom/google/zxing/common/reedsolomon/GF256Poly;
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 47
    move-object v1, v2

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    .end local v0           #d:I
    .end local v1           #lastGenerator:Lcom/google/zxing/common/reedsolomon/GF256Poly;
    .end local v2           #nextGenerator:Lcom/google/zxing/common/reedsolomon/GF256Poly;
    :cond_0
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    return-object v3
.end method


# virtual methods
.method public encode([II)V
    .locals 11
    .parameter "toEncode"
    .parameter "ecBytes"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 54
    if-nez p2, :cond_0

    .line 55
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "No error correction bytes"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 57
    :cond_0
    array-length v8, p1

    sub-int v1, v8, p2

    .line 58
    .local v1, dataBytes:I
    if-gtz v1, :cond_1

    .line 59
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "No data bytes provided"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 61
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->buildGenerator(I)Lcom/google/zxing/common/reedsolomon/GF256Poly;

    move-result-object v2

    .line 62
    .local v2, generator:Lcom/google/zxing/common/reedsolomon/GF256Poly;
    new-array v5, v1, [I

    .line 63
    .local v5, infoCoefficients:[I
    invoke-static {p1, v10, v5, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    new-instance v4, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-direct {v4, v8, v5}, Lcom/google/zxing/common/reedsolomon/GF256Poly;-><init>(Lcom/google/zxing/common/reedsolomon/GF256;[I)V

    .line 65
    .local v4, info:Lcom/google/zxing/common/reedsolomon/GF256Poly;
    invoke-virtual {v4, p2, v9}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GF256Poly;

    move-result-object v4

    .line 66
    invoke-virtual {v4, v2}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->divide(Lcom/google/zxing/common/reedsolomon/GF256Poly;)[Lcom/google/zxing/common/reedsolomon/GF256Poly;

    move-result-object v8

    aget-object v7, v8, v9

    .line 67
    .local v7, remainder:Lcom/google/zxing/common/reedsolomon/GF256Poly;
    invoke-virtual {v7}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->getCoefficients()[I

    move-result-object v0

    .line 68
    .local v0, coefficients:[I
    array-length v8, v0

    sub-int v6, p2, v8

    .line 69
    .local v6, numZeroCoefficients:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_2

    .line 70
    add-int v8, v1, v3

    aput v10, p1, v8

    .line 69
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    :cond_2
    add-int v8, v1, v6

    array-length v9, v0

    invoke-static {v0, v10, p1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    return-void
.end method
