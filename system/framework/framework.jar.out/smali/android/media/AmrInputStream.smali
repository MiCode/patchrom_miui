.class public final Landroid/media/AmrInputStream;
.super Ljava/io/InputStream;
.source "AmrInputStream.java"


# static fields
.field private static final SAMPLES_PER_FRAME:I = 0xa0

.field private static final TAG:Ljava/lang/String; = "AmrInputStream"


# instance fields
.field private final mBuf:[B

.field private mBufIn:I

.field private mBufOut:I

.field private mGae:I

.field private mInputStream:Ljava/io/InputStream;

.field private mOneByte:[B


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

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 47
    const/16 v0, 0x140

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/AmrInputStream;->mBuf:[B

    .line 48
    iput v1, p0, Landroid/media/AmrInputStream;->mBufIn:I

    .line 49
    iput v1, p0, Landroid/media/AmrInputStream;->mBufOut:I

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    .line 59
    iput-object p1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    .line 60
    invoke-static {}, Landroid/media/AmrInputStream;->GsmAmrEncoderNew()I

    move-result v0

    iput v0, p0, Landroid/media/AmrInputStream;->mGae:I

    .line 61
    iget v0, p0, Landroid/media/AmrInputStream;->mGae:I

    invoke-static {v0}, Landroid/media/AmrInputStream;->GsmAmrEncoderInitialize(I)V

    .line 62
    return-void
.end method

.method private static native GsmAmrEncoderCleanup(I)V
.end method

.method private static native GsmAmrEncoderDelete(I)V
.end method

.method private static native GsmAmrEncoderEncode(I[BI[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native GsmAmrEncoderInitialize(I)V
.end method

.method private static native GsmAmrEncoderNew()I
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 107
    :try_start_0
    iget-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 109
    :cond_0
    iput-object v1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    .line 111
    :try_start_1
    iget v0, p0, Landroid/media/AmrInputStream;->mGae:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/media/AmrInputStream;->mGae:I

    invoke-static {v0}, Landroid/media/AmrInputStream;->GsmAmrEncoderCleanup(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    :cond_1
    :try_start_2
    iget v0, p0, Landroid/media/AmrInputStream;->mGae:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/media/AmrInputStream;->mGae:I

    invoke-static {v0}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    :cond_2
    iput v2, p0, Landroid/media/AmrInputStream;->mGae:I

    .line 120
    return-void

    .line 116
    :catchall_0
    move-exception v0

    iput v2, p0, Landroid/media/AmrInputStream;->mGae:I

    throw v0

    .line 113
    :catchall_1
    move-exception v0

    .line 114
    :try_start_3
    iget v1, p0, Landroid/media/AmrInputStream;->mGae:I

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/media/AmrInputStream;->mGae:I

    invoke-static {v1}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 116
    :cond_3
    iput v2, p0, Landroid/media/AmrInputStream;->mGae:I

    throw v0

    :catchall_2
    move-exception v0

    iput v2, p0, Landroid/media/AmrInputStream;->mGae:I

    throw v0

    .line 109
    :catchall_3
    move-exception v0

    iput-object v1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    .line 111
    :try_start_4
    iget v1, p0, Landroid/media/AmrInputStream;->mGae:I

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/media/AmrInputStream;->mGae:I

    invoke-static {v1}, Landroid/media/AmrInputStream;->GsmAmrEncoderCleanup(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 114
    :cond_4
    :try_start_5
    iget v1, p0, Landroid/media/AmrInputStream;->mGae:I

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/media/AmrInputStream;->mGae:I

    invoke-static {v1}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 116
    :cond_5
    iput v2, p0, Landroid/media/AmrInputStream;->mGae:I

    throw v0

    :catchall_4
    move-exception v0

    iput v2, p0, Landroid/media/AmrInputStream;->mGae:I

    throw v0

    .line 113
    :catchall_5
    move-exception v0

    .line 114
    :try_start_6
    iget v1, p0, Landroid/media/AmrInputStream;->mGae:I

    if-eqz v1, :cond_6

    iget v1, p0, Landroid/media/AmrInputStream;->mGae:I

    invoke-static {v1}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 116
    :cond_6
    iput v2, p0, Landroid/media/AmrInputStream;->mGae:I

    throw v0

    :catchall_6
    move-exception v0

    iput v2, p0, Landroid/media/AmrInputStream;->mGae:I

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
    .line 124
    iget v0, p0, Landroid/media/AmrInputStream;->mGae:I

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Landroid/media/AmrInputStream;->close()V

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "someone forgot to close AmrInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
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

    .line 66
    iget-object v1, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    invoke-virtual {p0, v1, v2, v3}, Landroid/media/AmrInputStream;->read([BII)I

    move-result v0

    .line 67
    .local v0, "rtn":I
    if-ne v0, v3, :cond_0

    iget-object v1, p0, Landroid/media/AmrInputStream;->mOneByte:[B

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
    .line 72
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/AmrInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 7
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v6, 0x0

    .line 77
    iget v3, p0, Landroid/media/AmrInputStream;->mGae:I

    if-nez v3, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "not open"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_0
    iget v3, p0, Landroid/media/AmrInputStream;->mBufOut:I

    iget v4, p0, Landroid/media/AmrInputStream;->mBufIn:I

    if-lt v3, v4, :cond_3

    .line 82
    iput v6, p0, Landroid/media/AmrInputStream;->mBufOut:I

    .line 83
    iput v6, p0, Landroid/media/AmrInputStream;->mBufIn:I

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x140

    if-ge v0, v3, :cond_2

    .line 87
    iget-object v3, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v4, p0, Landroid/media/AmrInputStream;->mBuf:[B

    rsub-int v5, v0, 0x140

    invoke-virtual {v3, v4, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 88
    .local v1, "n":I
    if-ne v1, v2, :cond_1

    .line 101
    .end local v0    # "i":I
    .end local v1    # "n":I
    :goto_1
    return v2

    .line 89
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    :cond_1
    add-int/2addr v0, v1

    .line 90
    goto :goto_0

    .line 93
    .end local v1    # "n":I
    :cond_2
    iget v2, p0, Landroid/media/AmrInputStream;->mGae:I

    iget-object v3, p0, Landroid/media/AmrInputStream;->mBuf:[B

    iget-object v4, p0, Landroid/media/AmrInputStream;->mBuf:[B

    invoke-static {v2, v3, v6, v4, v6}, Landroid/media/AmrInputStream;->GsmAmrEncoderEncode(I[BI[BI)I

    move-result v2

    iput v2, p0, Landroid/media/AmrInputStream;->mBufIn:I

    .line 97
    .end local v0    # "i":I
    :cond_3
    iget v2, p0, Landroid/media/AmrInputStream;->mBufIn:I

    iget v3, p0, Landroid/media/AmrInputStream;->mBufOut:I

    sub-int/2addr v2, v3

    if-le p3, v2, :cond_4

    iget v2, p0, Landroid/media/AmrInputStream;->mBufIn:I

    iget v3, p0, Landroid/media/AmrInputStream;->mBufOut:I

    sub-int p3, v2, v3

    .line 98
    :cond_4
    iget-object v2, p0, Landroid/media/AmrInputStream;->mBuf:[B

    iget v3, p0, Landroid/media/AmrInputStream;->mBufOut:I

    invoke-static {v2, v3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iget v2, p0, Landroid/media/AmrInputStream;->mBufOut:I

    add-int/2addr v2, p3

    iput v2, p0, Landroid/media/AmrInputStream;->mBufOut:I

    move v2, p3

    .line 101
    goto :goto_1
.end method
