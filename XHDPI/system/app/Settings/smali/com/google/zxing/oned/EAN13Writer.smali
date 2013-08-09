.class public final Lcom/google/zxing/oned/EAN13Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "EAN13Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
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
    .line 41
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can only encode EAN_13, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[B
    .locals 10
    .parameter "contents"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_0

    .line 50
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Requested contents should be 13 digits long, but got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 54
    :cond_0
    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 55
    .local v1, firstDigit:I
    sget-object v6, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    aget v3, v6, v1

    .line 56
    .local v3, parities:I
    const/16 v6, 0x5f

    new-array v5, v6, [B

    .line 57
    .local v5, result:[B
    const/4 v4, 0x0

    .line 59
    .local v4, pos:I
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v5, v4, v6, v8}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([BI[II)I

    move-result v6

    add-int/2addr v4, v6

    .line 62
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    const/4 v6, 0x6

    if-gt v2, v6, :cond_2

    .line 63
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, digit:I
    rsub-int/lit8 v6, v2, 0x6

    shr-int v6, v3, v6

    and-int/lit8 v6, v6, 0x1

    if-ne v6, v8, :cond_1

    .line 65
    add-int/lit8 v0, v0, 0xa

    .line 67
    :cond_1
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aget-object v6, v6, v0

    invoke-static {v5, v4, v6, v9}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([BI[II)I

    move-result v6

    add-int/2addr v4, v6

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v0           #digit:I
    :cond_2
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    invoke-static {v5, v4, v6, v9}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([BI[II)I

    move-result v6

    add-int/2addr v4, v6

    .line 72
    const/4 v2, 0x7

    :goto_1
    const/16 v6, 0xc

    if-gt v2, v6, :cond_3

    .line 73
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 74
    .restart local v0       #digit:I
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v6, v6, v0

    invoke-static {v5, v4, v6, v8}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([BI[II)I

    move-result v6

    add-int/2addr v4, v6

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 76
    .end local v0           #digit:I
    :cond_3
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v5, v4, v6, v8}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([BI[II)I

    move-result v6

    add-int/2addr v4, v6

    .line 78
    return-object v5
.end method
