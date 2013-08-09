.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "Code128Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
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
    .line 36
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can only encode CODE_128, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[B
    .locals 12
    .parameter "contents"

    .prologue
    const/4 v11, 0x1

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 44
    .local v4, length:I
    const/16 v8, 0x50

    if-le v4, v8, :cond_0

    .line 45
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Requested contents should be less than 80 digits long, but got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 49
    :cond_0
    const/16 v1, 0x23

    .line 51
    .local v1, codeWidth:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 52
    sget-object v8, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x20

    aget-object v5, v8, v9

    .line 53
    .local v5, patterns:[I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    array-length v8, v5

    if-ge v3, v8, :cond_1

    .line 54
    aget v8, v5, v3

    add-int/2addr v1, v8

    .line 53
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 51
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v3           #j:I
    .end local v5           #patterns:[I
    :cond_2
    new-array v7, v1, [B

    .line 58
    .local v7, result:[B
    const/4 v8, 0x0

    sget-object v9, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    const/16 v10, 0x68

    aget-object v9, v9, v10

    invoke-static {v7, v8, v9, v11}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([BI[II)I

    move-result v6

    .line 59
    .local v6, pos:I
    const/16 v0, 0x68

    .line 61
    .local v0, check:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_3

    .line 62
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x20

    add-int/lit8 v9, v2, 0x1

    mul-int/2addr v8, v9

    add-int/2addr v0, v8

    .line 63
    sget-object v8, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x20

    aget-object v8, v8, v9

    invoke-static {v7, v6, v8, v11}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([BI[II)I

    move-result v8

    add-int/2addr v6, v8

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 66
    :cond_3
    rem-int/lit8 v0, v0, 0x67

    .line 67
    sget-object v8, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v8, v8, v0

    invoke-static {v7, v6, v8, v11}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([BI[II)I

    move-result v8

    add-int/2addr v6, v8

    .line 68
    sget-object v8, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    const/16 v9, 0x6a

    aget-object v8, v8, v9

    invoke-static {v7, v6, v8, v11}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([BI[II)I

    move-result v8

    add-int/2addr v6, v8

    .line 70
    return-object v7
.end method
