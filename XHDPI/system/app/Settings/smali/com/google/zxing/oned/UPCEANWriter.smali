.class public abstract Lcom/google/zxing/oned/UPCEANWriter;
.super Ljava/lang/Object;
.source "UPCEANWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static appendPattern([BI[II)I
    .locals 7
    .parameter "target"
    .parameter "pos"
    .parameter "pattern"
    .parameter "startColor"

    .prologue
    .line 83
    if-eqz p3, :cond_0

    const/4 v4, 0x1

    if-eq p3, v4, :cond_0

    .line 84
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "startColor must be either 0 or 1, but got: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 88
    :cond_0
    int-to-byte v0, p3

    .line 89
    .local v0, color:B
    const/4 v3, 0x0

    .line 90
    .local v3, numAdded:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_2

    .line 91
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    aget v4, p2, v1

    if-ge v2, v4, :cond_1

    .line 92
    aput-byte v0, p0, p1

    .line 93
    add-int/lit8 p1, p1, 0x1

    .line 94
    add-int/lit8 v3, v3, 0x1

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 96
    :cond_1
    xor-int/lit8 v4, v0, 0x1

    int-to-byte v0, v4

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v2           #j:I
    :cond_2
    return v3
.end method

.method private static renderResult([BII)Lcom/google/zxing/common/BitMatrix;
    .locals 11
    .parameter "code"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v10, 0x1

    .line 56
    array-length v1, p0

    .line 58
    .local v1, inputWidth:I
    sget-object v9, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    array-length v9, v9

    shl-int/lit8 v9, v9, 0x1

    add-int v0, v1, v9

    .line 59
    .local v0, fullWidth:I
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 60
    .local v7, outputWidth:I
    invoke-static {v10, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 62
    .local v6, outputHeight:I
    div-int v4, v7, v0

    .line 63
    .local v4, multiple:I
    mul-int v9, v1, v4

    sub-int v9, v7, v9

    div-int/lit8 v3, v9, 0x2

    .line 65
    .local v3, leftPadding:I
    new-instance v5, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v5, v7, v6}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 66
    .local v5, output:Lcom/google/zxing/common/BitMatrix;
    const/4 v2, 0x0

    .local v2, inputX:I
    move v8, v3

    .local v8, outputX:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 67
    aget-byte v9, p0, v2

    if-ne v9, v10, :cond_0

    .line 68
    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9, v4, v6}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 66
    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v8, v4

    goto :goto_0

    .line 71
    :cond_1
    return-object v5
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;
    .locals 4
    .parameter "contents"
    .parameter "format"
    .parameter "width"
    .parameter "height"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 41
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 42
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Found empty contents"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_1
    if-ltz p3, :cond_2

    if-gez p4, :cond_3

    .line 46
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Requested dimensions are too small: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;)[B

    move-result-object v0

    .line 51
    .local v0, code:[B
    invoke-static {v0, p3, p4}, Lcom/google/zxing/oned/UPCEANWriter;->renderResult([BII)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1
.end method

.method public abstract encode(Ljava/lang/String;)[B
.end method
