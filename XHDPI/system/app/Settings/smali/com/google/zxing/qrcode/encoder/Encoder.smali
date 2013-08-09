.class public final Lcom/google/zxing/qrcode/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final ALPHANUMERIC_TABLE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    return-void

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x24t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method static append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
    .locals 5
    .parameter "content"
    .parameter "bits"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 516
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 520
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 521
    aget-byte v3, v0, v1

    const/16 v4, 0x8

    invoke-virtual {p1, v3, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    .end local v0           #bytes:[B
    .end local v1           #i:I
    :catch_0
    move-exception v2

    .line 518
    .local v2, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/google/zxing/WriterException;

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 523
    .end local v2           #uee:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #bytes:[B
    .restart local v1       #i:I
    :cond_0
    return-void
.end method

.method static appendAlphanumericBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V
    .locals 7
    .parameter "content"
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 489
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 490
    .local v3, length:I
    const/4 v2, 0x0

    .line 491
    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 492
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v0

    .line 493
    .local v0, code1:I
    if-ne v0, v6, :cond_0

    .line 494
    new-instance v4, Lcom/google/zxing/WriterException;

    invoke-direct {v4}, Lcom/google/zxing/WriterException;-><init>()V

    throw v4

    .line 496
    :cond_0
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_2

    .line 497
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v1

    .line 498
    .local v1, code2:I
    if-ne v1, v6, :cond_1

    .line 499
    new-instance v4, Lcom/google/zxing/WriterException;

    invoke-direct {v4}, Lcom/google/zxing/WriterException;-><init>()V

    throw v4

    .line 502
    :cond_1
    mul-int/lit8 v4, v0, 0x2d

    add-int/2addr v4, v1

    const/16 v5, 0xb

    invoke-virtual {p1, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 503
    add-int/lit8 v2, v2, 0x2

    .line 504
    goto :goto_0

    .line 506
    .end local v1           #code2:I
    :cond_2
    const/4 v4, 0x6

    invoke-virtual {p1, v0, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 507
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 510
    .end local v0           #code1:I
    :cond_3
    return-void
.end method

.method static appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
    .locals 3
    .parameter "content"
    .parameter "mode"
    .parameter "bits"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 451
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendNumericBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V

    .line 462
    :goto_0
    return-void

    .line 453
    :cond_0
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendAlphanumericBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V

    goto :goto_0

    .line 455
    :cond_1
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    invoke-static {p0, p2, p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_2
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 458
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V

    goto :goto_0

    .line 460
    :cond_3
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static appendECI(Lcom/google/zxing/common/ECI;Lcom/google/zxing/common/BitArray;)V
    .locals 2
    .parameter "eci"
    .parameter "bits"

    .prologue
    .line 552
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 554
    invoke-virtual {p0}, Lcom/google/zxing/common/ECI;->getValue()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 555
    return-void
.end method

.method static appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V
    .locals 12
    .parameter "content"
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const v11, 0x8140

    .line 528
    :try_start_0
    const-string v9, "Shift_JIS"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 532
    .local v2, bytes:[B
    array-length v6, v2

    .line 533
    .local v6, length:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_3

    .line 534
    aget-byte v9, v2, v5

    and-int/lit16 v0, v9, 0xff

    .line 535
    .local v0, byte1:I
    add-int/lit8 v9, v5, 0x1

    aget-byte v9, v2, v9

    and-int/lit16 v1, v9, 0xff

    .line 536
    .local v1, byte2:I
    shl-int/lit8 v9, v0, 0x8

    or-int v3, v9, v1

    .line 537
    .local v3, code:I
    const/4 v7, -0x1

    .line 538
    .local v7, subtracted:I
    if-lt v3, v11, :cond_1

    const v9, 0x9ffc

    if-gt v3, v9, :cond_1

    .line 539
    sub-int v7, v3, v11

    .line 543
    :cond_0
    :goto_1
    const/4 v9, -0x1

    if-ne v7, v9, :cond_2

    .line 544
    new-instance v9, Lcom/google/zxing/WriterException;

    const-string v10, "Invalid byte sequence"

    invoke-direct {v9, v10}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 529
    .end local v0           #byte1:I
    .end local v1           #byte2:I
    .end local v2           #bytes:[B
    .end local v3           #code:I
    .end local v5           #i:I
    .end local v6           #length:I
    .end local v7           #subtracted:I
    :catch_0
    move-exception v8

    .line 530
    .local v8, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v9, Lcom/google/zxing/WriterException;

    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 540
    .end local v8           #uee:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #byte1:I
    .restart local v1       #byte2:I
    .restart local v2       #bytes:[B
    .restart local v3       #code:I
    .restart local v5       #i:I
    .restart local v6       #length:I
    .restart local v7       #subtracted:I
    :cond_1
    const v9, 0xe040

    if-lt v3, v9, :cond_0

    const v9, 0xebbf

    if-gt v3, v9, :cond_0

    .line 541
    const v9, 0xc140

    sub-int v7, v3, v9

    goto :goto_1

    .line 546
    :cond_2
    shr-int/lit8 v9, v7, 0x8

    mul-int/lit16 v9, v9, 0xc0

    and-int/lit16 v10, v7, 0xff

    add-int v4, v9, v10

    .line 547
    .local v4, encoded:I
    const/16 v9, 0xd

    invoke-virtual {p1, v4, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 533
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 549
    .end local v0           #byte1:I
    .end local v1           #byte2:I
    .end local v3           #code:I
    .end local v4           #encoded:I
    .end local v7           #subtracted:I
    :cond_3
    return-void
.end method

.method static appendLengthInfo(IILcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .locals 5
    .parameter "numLetters"
    .parameter "version"
    .parameter "mode"
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 439
    invoke-static {p1}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    .line 440
    .local v0, numBits:I
    shl-int v1, v4, v0

    add-int/lit8 v1, v1, -0x1

    if-le p0, v1, :cond_0

    .line 441
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "is bigger than"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    shl-int v3, v4, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :cond_0
    invoke-virtual {p3, p0, v0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 444
    return-void
.end method

.method static appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .locals 2
    .parameter "mode"
    .parameter "bits"

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 431
    return-void
.end method

.method static appendNumericBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V
    .locals 7
    .parameter "content"
    .parameter "bits"

    .prologue
    .line 465
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 466
    .local v1, length:I
    const/4 v0, 0x0

    .line 467
    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 468
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v2, v5, -0x30

    .line 469
    .local v2, num1:I
    add-int/lit8 v5, v0, 0x2

    if-ge v5, v1, :cond_0

    .line 471
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v5, -0x30

    .line 472
    .local v3, num2:I
    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v4, v5, -0x30

    .line 473
    .local v4, num3:I
    mul-int/lit8 v5, v2, 0x64

    mul-int/lit8 v6, v3, 0xa

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    const/16 v6, 0xa

    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 474
    add-int/lit8 v0, v0, 0x3

    .line 475
    goto :goto_0

    .end local v3           #num2:I
    .end local v4           #num3:I
    :cond_0
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v1, :cond_1

    .line 477
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v5, -0x30

    .line 478
    .restart local v3       #num2:I
    mul-int/lit8 v5, v2, 0xa

    add-int/2addr v5, v3

    const/4 v6, 0x7

    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 479
    add-int/lit8 v0, v0, 0x2

    .line 480
    goto :goto_0

    .line 482
    .end local v3           #num2:I
    :cond_1
    const/4 v5, 0x4

    invoke-virtual {p1, v2, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 486
    .end local v2           #num1:I
    :cond_2
    return-void
.end method

.method private static calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 2
    .parameter "matrix"

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, penalty:I
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    return v0
.end method

.method private static chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 5
    .parameter "bits"
    .parameter "ecLevel"
    .parameter "version"
    .parameter "matrix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 207
    const v2, 0x7fffffff

    .line 208
    .local v2, minPenalty:I
    const/4 v0, -0x1

    .line 210
    .local v0, bestMaskPattern:I
    const/4 v1, 0x0

    .local v1, maskPattern:I
    :goto_0
    const/16 v4, 0x8

    if-ge v1, v4, :cond_1

    .line 211
    invoke-static {p0, p1, p2, v1, p3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 212
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v3

    .line 213
    .local v3, penalty:I
    if-ge v3, v2, :cond_0

    .line 214
    move v2, v3

    .line 215
    move v0, v1

    .line 210
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v3           #penalty:I
    :cond_1
    return v0
.end method

.method public static chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 6
    .parameter "content"
    .parameter "encoding"

    .prologue
    .line 160
    const-string v4, "Shift_JIS"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 181
    :goto_0
    return-object v4

    .line 162
    :cond_0
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    .line 164
    :cond_1
    const/4 v2, 0x0

    .line 165
    .local v2, hasNumeric:Z
    const/4 v1, 0x0

    .line 166
    .local v1, hasAlphanumeric:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 167
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 168
    .local v0, c:C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_2

    const/16 v4, 0x39

    if-gt v0, v4, :cond_2

    .line 169
    const/4 v2, 0x1

    .line 166
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 170
    :cond_2
    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 171
    const/4 v1, 0x1

    goto :goto_2

    .line 173
    :cond_3
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    .line 176
    .end local v0           #c:C
    :cond_4
    if-eqz v1, :cond_5

    .line 177
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    .line 178
    :cond_5
    if-eqz v2, :cond_6

    .line 179
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    .line 181
    :cond_6
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Hashtable;Lcom/google/zxing/qrcode/encoder/QRCode;)V
    .locals 12
    .parameter "content"
    .parameter "ecLevel"
    .parameter "hints"
    .parameter "qrCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 85
    if-nez p2, :cond_2

    const/4 v2, 0x0

    .line 86
    .local v2, encoding:Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_0

    .line 87
    const-string v2, "UTF-8"

    .line 91
    :cond_0
    invoke-static {p0, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v6

    .line 94
    .local v6, mode:Lcom/google/zxing/qrcode/decoder/Mode;
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 95
    .local v0, dataBits:Lcom/google/zxing/common/BitArray;
    invoke-static {p0, v6, v0, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v7

    .line 98
    .local v7, numInputBytes:I
    invoke-static {v7, p1, v6, p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->initQRCode(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/qrcode/encoder/QRCode;)V

    .line 101
    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 104
    .local v4, headerAndDataBits:Lcom/google/zxing/common/BitArray;
    sget-object v9, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v6, v9, :cond_1

    const-string v9, "UTF-8"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 105
    invoke-static {v2}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v1

    .line 106
    .local v1, eci:Lcom/google/zxing/common/CharacterSetECI;
    if-eqz v1, :cond_1

    .line 107
    invoke-static {v1, v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendECI(Lcom/google/zxing/common/ECI;Lcom/google/zxing/common/BitArray;)V

    .line 111
    .end local v1           #eci:Lcom/google/zxing/common/CharacterSetECI;
    :cond_1
    invoke-static {v6, v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 113
    sget-object v9, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v8

    .line 114
    .local v8, numLetters:I
    :goto_1
    invoke-virtual {p3}, Lcom/google/zxing/qrcode/encoder/QRCode;->getVersion()I

    move-result v9

    invoke-static {v8, v9, v6, v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendLengthInfo(IILcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 115
    invoke-virtual {v4, v0}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    .line 118
    invoke-virtual {p3}, Lcom/google/zxing/qrcode/encoder/QRCode;->getNumDataBytes()I

    move-result v9

    invoke-static {v9, v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->terminateBits(ILcom/google/zxing/common/BitArray;)V

    .line 121
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 122
    .local v3, finalBits:Lcom/google/zxing/common/BitArray;
    invoke-virtual {p3}, Lcom/google/zxing/qrcode/encoder/QRCode;->getNumTotalBytes()I

    move-result v9

    invoke-virtual {p3}, Lcom/google/zxing/qrcode/encoder/QRCode;->getNumDataBytes()I

    move-result v10

    invoke-virtual {p3}, Lcom/google/zxing/qrcode/encoder/QRCode;->getNumRSBlocks()I

    move-result v11

    invoke-static {v4, v9, v10, v11, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->interleaveWithECBytes(Lcom/google/zxing/common/BitArray;IIILcom/google/zxing/common/BitArray;)V

    .line 126
    new-instance v5, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {p3}, Lcom/google/zxing/qrcode/encoder/QRCode;->getMatrixWidth()I

    move-result v9

    invoke-virtual {p3}, Lcom/google/zxing/qrcode/encoder/QRCode;->getMatrixWidth()I

    move-result v10

    invoke-direct {v5, v9, v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    .line 127
    .local v5, matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    invoke-virtual {p3}, Lcom/google/zxing/qrcode/encoder/QRCode;->getECLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v9

    invoke-virtual {p3}, Lcom/google/zxing/qrcode/encoder/QRCode;->getVersion()I

    move-result v10

    invoke-static {v3, v9, v10, v5}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v9

    invoke-virtual {p3, v9}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMaskPattern(I)V

    .line 131
    invoke-virtual {p3}, Lcom/google/zxing/qrcode/encoder/QRCode;->getECLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v9

    invoke-virtual {p3}, Lcom/google/zxing/qrcode/encoder/QRCode;->getVersion()I

    move-result v10

    invoke-virtual {p3}, Lcom/google/zxing/qrcode/encoder/QRCode;->getMaskPattern()I

    move-result v11

    invoke-static {v3, v9, v10, v11, v5}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 133
    invoke-virtual {p3, v5}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 135
    invoke-virtual {p3}, Lcom/google/zxing/qrcode/encoder/QRCode;->isValid()Z

    move-result v9

    if-nez v9, :cond_4

    .line 136
    new-instance v9, Lcom/google/zxing/WriterException;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Invalid QR code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {p3}, Lcom/google/zxing/qrcode/encoder/QRCode;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 85
    .end local v0           #dataBits:Lcom/google/zxing/common/BitArray;
    .end local v2           #encoding:Ljava/lang/String;
    .end local v3           #finalBits:Lcom/google/zxing/common/BitArray;
    .end local v4           #headerAndDataBits:Lcom/google/zxing/common/BitArray;
    .end local v5           #matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .end local v6           #mode:Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v7           #numInputBytes:I
    .end local v8           #numLetters:I
    :cond_2
    sget-object v9, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {p2, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v2, v9

    goto/16 :goto_0

    .line 113
    .restart local v0       #dataBits:Lcom/google/zxing/common/BitArray;
    .restart local v2       #encoding:Ljava/lang/String;
    .restart local v4       #headerAndDataBits:Lcom/google/zxing/common/BitArray;
    .restart local v6       #mode:Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v7       #numInputBytes:I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    goto/16 :goto_1

    .line 138
    .restart local v3       #finalBits:Lcom/google/zxing/common/BitArray;
    .restart local v5       #matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .restart local v8       #numLetters:I
    :cond_4
    return-void
.end method

.method static generateECBytes([BI)[B
    .locals 6
    .parameter "dataBytes"
    .parameter "numEcBytesInBlock"

    .prologue
    .line 412
    array-length v2, p0

    .line 413
    .local v2, numDataBytes:I
    add-int v4, v2, p1

    new-array v3, v4, [I

    .line 414
    .local v3, toEncode:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 415
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    :cond_0
    new-instance v4, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    sget-object v5, Lcom/google/zxing/common/reedsolomon/GF256;->QR_CODE_FIELD:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-direct {v4, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GF256;)V

    invoke-virtual {v4, v3, p1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 419
    new-array v0, p1, [B

    .line 420
    .local v0, ecBytes:[B
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    .line 421
    add-int v4, v2, v1

    aget v4, v3, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 423
    :cond_1
    return-object v0
.end method

.method static getAlphanumericCode(I)I
    .locals 1
    .parameter "code"

    .prologue
    .line 145
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 146
    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    aget v0, v0, p0

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V
    .locals 10
    .parameter "numTotalBytes"
    .parameter "numDataBytes"
    .parameter "numRSBlocks"
    .parameter "blockID"
    .parameter "numDataBytesInBlock"
    .parameter "numECBytesInBlock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 299
    if-lt p3, p2, :cond_0

    .line 300
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "Block ID too large"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 303
    :cond_0
    rem-int v5, p0, p2

    .line 305
    .local v5, numRsBlocksInGroup2:I
    sub-int v4, p2, v5

    .line 307
    .local v4, numRsBlocksInGroup1:I
    div-int v6, p0, p2

    .line 309
    .local v6, numTotalBytesInGroup1:I
    add-int/lit8 v7, v6, 0x1

    .line 311
    .local v7, numTotalBytesInGroup2:I
    div-int v0, p1, p2

    .line 313
    .local v0, numDataBytesInGroup1:I
    add-int/lit8 v1, v0, 0x1

    .line 315
    .local v1, numDataBytesInGroup2:I
    sub-int v2, v6, v0

    .line 317
    .local v2, numEcBytesInGroup1:I
    sub-int v3, v7, v1

    .line 320
    .local v3, numEcBytesInGroup2:I
    if-eq v2, v3, :cond_1

    .line 321
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "EC bytes mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 324
    :cond_1
    add-int v8, v4, v5

    if-eq p2, v8, :cond_2

    .line 325
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "RS blocks mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 328
    :cond_2
    add-int v8, v0, v2

    mul-int/2addr v8, v4

    add-int v9, v1, v3

    mul-int/2addr v9, v5

    add-int/2addr v8, v9

    if-eq p0, v8, :cond_3

    .line 333
    new-instance v8, Lcom/google/zxing/WriterException;

    const-string v9, "Total bytes mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 336
    :cond_3
    if-ge p3, v4, :cond_4

    .line 337
    const/4 v8, 0x0

    aput v0, p4, v8

    .line 338
    const/4 v8, 0x0

    aput v2, p5, v8

    .line 343
    :goto_0
    return-void

    .line 340
    :cond_4
    const/4 v8, 0x0

    aput v1, p4, v8

    .line 341
    const/4 v8, 0x0

    aput v3, p5, v8

    goto :goto_0
.end method

.method private static initQRCode(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/qrcode/encoder/QRCode;)V
    .locals 9
    .parameter "numInputBytes"
    .parameter "ecLevel"
    .parameter "mode"
    .parameter "qrCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-virtual {p3, p1}, Lcom/google/zxing/qrcode/encoder/QRCode;->setECLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    .line 228
    invoke-virtual {p3, p2}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMode(Lcom/google/zxing/qrcode/decoder/Mode;)V

    .line 231
    const/4 v6, 0x1

    .local v6, versionNum:I
    :goto_0
    const/16 v7, 0x28

    if-gt v6, v7, :cond_1

    .line 232
    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    .line 234
    .local v5, version:Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v1

    .line 236
    .local v1, numBytes:I
    invoke-virtual {v5, p1}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v0

    .line 237
    .local v0, ecBlocks:Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v3

    .line 239
    .local v3, numEcBytes:I
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result v4

    .line 241
    .local v4, numRSBlocks:I
    sub-int v2, v1, v3

    .line 245
    .local v2, numDataBytes:I
    add-int/lit8 v7, p0, 0x3

    if-lt v2, v7, :cond_0

    .line 247
    invoke-virtual {p3, v6}, Lcom/google/zxing/qrcode/encoder/QRCode;->setVersion(I)V

    .line 248
    invoke-virtual {p3, v1}, Lcom/google/zxing/qrcode/encoder/QRCode;->setNumTotalBytes(I)V

    .line 249
    invoke-virtual {p3, v2}, Lcom/google/zxing/qrcode/encoder/QRCode;->setNumDataBytes(I)V

    .line 250
    invoke-virtual {p3, v4}, Lcom/google/zxing/qrcode/encoder/QRCode;->setNumRSBlocks(I)V

    .line 252
    invoke-virtual {p3, v3}, Lcom/google/zxing/qrcode/encoder/QRCode;->setNumECBytes(I)V

    .line 254
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v7

    invoke-virtual {p3, v7}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMatrixWidth(I)V

    .line 255
    return-void

    .line 231
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 258
    .end local v0           #ecBlocks:Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    .end local v1           #numBytes:I
    .end local v2           #numDataBytes:I
    .end local v3           #numEcBytes:I
    .end local v4           #numRSBlocks:I
    .end local v5           #version:Lcom/google/zxing/qrcode/decoder/Version;
    :cond_1
    new-instance v7, Lcom/google/zxing/WriterException;

    const-string v8, "Cannot find proper rs block info (input data too big?)"

    invoke-direct {v7, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method static interleaveWithECBytes(Lcom/google/zxing/common/BitArray;IIILcom/google/zxing/common/BitArray;)V
    .locals 15
    .parameter "bits"
    .parameter "numTotalBytes"
    .parameter "numDataBytes"
    .parameter "numRSBlocks"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v1

    move/from16 v0, p2

    if-eq v1, v0, :cond_0

    .line 354
    new-instance v1, Lcom/google/zxing/WriterException;

    const-string v2, "Number of bits and data bytes does not match"

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    :cond_0
    const/4 v9, 0x0

    .line 360
    .local v9, dataBytesOffset:I
    const/4 v12, 0x0

    .line 361
    .local v12, maxNumDataBytes:I
    const/4 v13, 0x0

    .line 364
    .local v13, maxNumEcBytes:I
    new-instance v7, Ljava/util/Vector;

    move/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/util/Vector;-><init>(I)V

    .line 366
    .local v7, blocks:Ljava/util/Vector;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move/from16 v0, p3

    if-ge v4, v0, :cond_1

    .line 367
    const/4 v1, 0x1

    new-array v5, v1, [I

    .line 368
    .local v5, numDataBytesInBlock:[I
    const/4 v1, 0x1

    new-array v6, v1, [I

    .local v6, numEcBytesInBlock:[I
    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 369
    invoke-static/range {v1 .. v6}, Lcom/google/zxing/qrcode/encoder/Encoder;->getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V

    .line 373
    const/4 v1, 0x0

    aget v14, v5, v1

    .line 374
    .local v14, size:I
    new-array v8, v14, [B

    .line 375
    .local v8, dataBytes:[B
    mul-int/lit8 v1, v9, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v8, v2, v14}, Lcom/google/zxing/common/BitArray;->toBytes(I[BII)V

    .line 376
    const/4 v1, 0x0

    aget v1, v6, v1

    invoke-static {v8, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->generateECBytes([BI)[B

    move-result-object v10

    .line 377
    .local v10, ecBytes:[B
    new-instance v1, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-direct {v1, v8, v10}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 379
    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 380
    array-length v1, v10

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 381
    const/4 v1, 0x0

    aget v1, v5, v1

    add-int/2addr v9, v1

    .line 366
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 383
    .end local v5           #numDataBytesInBlock:[I
    .end local v6           #numEcBytesInBlock:[I
    .end local v8           #dataBytes:[B
    .end local v10           #ecBytes:[B
    .end local v14           #size:I
    :cond_1
    move/from16 v0, p2

    if-eq v0, v9, :cond_2

    .line 384
    new-instance v1, Lcom/google/zxing/WriterException;

    const-string v2, "Data bytes does not match offset"

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 388
    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v12, :cond_5

    .line 389
    const/4 v11, 0x0

    .local v11, j:I
    :goto_2
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v11, v1, :cond_4

    .line 390
    invoke-virtual {v7, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getDataBytes()[B

    move-result-object v8

    .line 391
    .restart local v8       #dataBytes:[B
    array-length v1, v8

    if-ge v4, v1, :cond_3

    .line 392
    aget-byte v1, v8, v4

    const/16 v2, 0x8

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 389
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 388
    .end local v8           #dataBytes:[B
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 397
    .end local v11           #j:I
    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v13, :cond_8

    .line 398
    const/4 v11, 0x0

    .restart local v11       #j:I
    :goto_4
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v11, v1, :cond_7

    .line 399
    invoke-virtual {v7, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getErrorCorrectionBytes()[B

    move-result-object v10

    .line 400
    .restart local v10       #ecBytes:[B
    array-length v1, v10

    if-ge v4, v1, :cond_6

    .line 401
    aget-byte v1, v10, v4

    const/16 v2, 0x8

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 398
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 397
    .end local v10           #ecBytes:[B
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 405
    .end local v11           #j:I
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v1

    move/from16 v0, p1

    if-eq v0, v1, :cond_9

    .line 406
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Interleaving error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " differ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 409
    :cond_9
    return-void
.end method

.method private static isOnlyDoubleByteKanji(Ljava/lang/String;)Z
    .locals 7
    .parameter "content"

    .prologue
    const/4 v5, 0x0

    .line 187
    :try_start_0
    const-string v6, "Shift_JIS"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 191
    .local v1, bytes:[B
    array-length v3, v1

    .line 192
    .local v3, length:I
    rem-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1

    .line 201
    .end local v1           #bytes:[B
    .end local v3           #length:I
    :cond_0
    :goto_0
    return v5

    .line 188
    :catch_0
    move-exception v4

    .line 189
    .local v4, uee:Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 195
    .end local v4           #uee:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #bytes:[B
    .restart local v3       #length:I
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 196
    aget-byte v6, v1, v2

    and-int/lit16 v0, v6, 0xff

    .line 197
    .local v0, byte1:I
    const/16 v6, 0x81

    if-lt v0, v6, :cond_2

    const/16 v6, 0x9f

    if-le v0, v6, :cond_3

    :cond_2
    const/16 v6, 0xe0

    if-lt v0, v6, :cond_0

    const/16 v6, 0xeb

    if-gt v0, v6, :cond_0

    .line 195
    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 201
    .end local v0           #byte1:I
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method static terminateBits(ILcom/google/zxing/common/BitArray;)V
    .locals 7
    .parameter "numDataBytes"
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 265
    shl-int/lit8 v0, p0, 0x3

    .line 266
    .local v0, capacity:I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-le v4, v0, :cond_0

    .line 267
    new-instance v4, Lcom/google/zxing/WriterException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "data bits cannot fit in the QR Code"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 270
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_1

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-ge v4, v0, :cond_1

    .line 271
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    and-int/lit8 v2, v4, 0x7

    .line 276
    .local v2, numBitsInLastByte:I
    if-lez v2, :cond_2

    .line 277
    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_2

    .line 278
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 282
    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v4

    sub-int v3, p0, v4

    .line 283
    .local v3, numPaddingBytes:I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_4

    .line 284
    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_3

    const/16 v4, 0xec

    :goto_3
    invoke-virtual {p1, v4, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 284
    :cond_3
    const/16 v4, 0x11

    goto :goto_3

    .line 286
    :cond_4
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-eq v4, v0, :cond_5

    .line 287
    new-instance v4, Lcom/google/zxing/WriterException;

    const-string v5, "Bits size does not equal capacity"

    invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 289
    :cond_5
    return-void
.end method
