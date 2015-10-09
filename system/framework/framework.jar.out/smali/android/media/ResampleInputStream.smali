.class public final Landroid/media/ResampleInputStream;
.super Ljava/io/InputStream;
.source "ResampleInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResampleInputStream"

.field private static final mFirLength:I = 0x1d


# instance fields
.field private mBuf:[B

.field private mBufCount:I

.field private mInputStream:Ljava/io/InputStream;

.field private final mOneByte:[B

.field private final mRateIn:I

.field private final mRateOut:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "rateIn"    # I
    .param p3, "rateOut"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    .line 63
    mul-int/lit8 v0, p3, 0x2

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only support 2:1 at the moment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    const/4 p2, 0x2

    .line 65
    const/4 p3, 0x1

    .line 67
    iput-object p1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    .line 68
    iput p2, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    .line 69
    iput p3, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    .line 70
    return-void
.end method

.method private static native fir21([BI[BII)V
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 132
    :try_start_0
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    iput-object v1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    .line 136
    return-void

    .line 134
    :catchall_0
    move-exception v0

    iput-object v1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Landroid/media/ResampleInputStream;->close()V

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "someone forgot to close ResampleInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    iget-object v1, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    invoke-virtual {p0, v1, v2, v3}, Landroid/media/ResampleInputStream;->read([BII)I

    move-result v0

    .line 75
    .local v0, "rtn":I
    if-ne v0, v3, :cond_0

    iget-object v1, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/ResampleInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 12
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v11, 0x0

    .line 85
    iget-object v6, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-nez v6, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "not open"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 88
    :cond_0
    div-int/lit8 v6, p3, 0x2

    iget v7, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    mul-int/2addr v6, v7

    iget v7, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    div-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1d

    mul-int/lit8 v4, v6, 0x2

    .line 89
    .local v4, "nIn":I
    iget-object v6, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    if-nez v6, :cond_4

    .line 90
    new-array v6, v4, [B

    iput-object v6, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    .line 99
    :cond_1
    :goto_0
    iget v6, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x1d

    iget v7, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    mul-int/2addr v6, v7

    iget v7, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    div-int/2addr v6, v7

    mul-int/lit8 v1, v6, 0x2

    .line 100
    .local v1, "len":I
    if-lez v1, :cond_6

    .line 101
    if-ge v1, p3, :cond_5

    move p3, v1

    .line 111
    :goto_1
    iget-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    div-int/lit8 v6, p3, 0x2

    invoke-static {v5, v11, p1, p2, v6}, Landroid/media/ResampleInputStream;->fir21([BI[BII)V

    .line 114
    iget v5, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    mul-int/2addr v5, p3

    iget v6, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    div-int v3, v5, v6

    .line 115
    .local v3, "nFwd":I
    iget v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    sub-int/2addr v5, v3

    iput v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    .line 116
    iget v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    if-lez v5, :cond_2

    iget-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget-object v6, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v7, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    invoke-static {v5, v3, v6, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move v5, p3

    .line 118
    .end local v3    # "nFwd":I
    :cond_3
    return v5

    .line 91
    .end local v1    # "len":I
    :cond_4
    iget-object v6, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    array-length v6, v6

    if-le v4, v6, :cond_1

    .line 92
    new-array v0, v4, [B

    .line 93
    .local v0, "bf":[B
    iget-object v6, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v7, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    invoke-static {v6, v11, v0, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iput-object v0, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    goto :goto_0

    .line 101
    .end local v0    # "bf":[B
    .restart local v1    # "len":I
    :cond_5
    div-int/lit8 v5, p3, 0x2

    mul-int/lit8 p3, v5, 0x2

    goto :goto_1

    .line 105
    :cond_6
    iget-object v6, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v7, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v8, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    iget-object v9, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    array-length v9, v9

    iget v10, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 106
    .local v2, "n":I
    if-eq v2, v5, :cond_3

    .line 107
    iget v6, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    add-int/2addr v6, v2

    iput v6, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    goto :goto_0
.end method
