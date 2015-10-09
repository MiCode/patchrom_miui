.class public Landroid/util/Base64OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64OutputStream.java"


# static fields
.field private static EMPTY:[B


# instance fields
.field private bpos:I

.field private buffer:[B

.field private final coder:Landroid/util/Base64$Coder;

.field private final flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/util/Base64OutputStream;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "flags"    # I

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "flags"    # I
    .param p3, "encode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 31
    iput-object v1, p0, Landroid/util/Base64OutputStream;->buffer:[B

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/Base64OutputStream;->bpos:I

    .line 62
    iput p2, p0, Landroid/util/Base64OutputStream;->flags:I

    .line 63
    if-eqz p3, :cond_0

    .line 64
    new-instance v0, Landroid/util/Base64$Encoder;

    invoke-direct {v0, p2, v1}, Landroid/util/Base64$Encoder;-><init>(I[B)V

    iput-object v0, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v0, Landroid/util/Base64$Decoder;

    invoke-direct {v0, p2, v1}, Landroid/util/Base64$Decoder;-><init>(I[B)V

    iput-object v0, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    goto :goto_0
.end method

.method private embiggen([BI)[B
    .locals 1
    .param p1, "b"    # [B
    .param p2, "len"    # I

    .prologue
    .line 149
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, p2, :cond_1

    .line 150
    :cond_0
    new-array p1, p2, [B

    .line 152
    .end local p1    # "b":[B
    :cond_1
    return-object p1
.end method

.method private flushBuffer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 92
    iget v0, p0, Landroid/util/Base64OutputStream;->bpos:I

    if-lez v0, :cond_0

    .line 93
    iget-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    iget v1, p0, Landroid/util/Base64OutputStream;->bpos:I

    invoke-direct {p0, v0, v2, v1, v2}, Landroid/util/Base64OutputStream;->internalWrite([BIIZ)V

    .line 94
    iput v2, p0, Landroid/util/Base64OutputStream;->bpos:I

    .line 96
    :cond_0
    return-void
.end method

.method private internalWrite([BIIZ)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v1, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v1, v1, Landroid/util/Base64$Coder;->output:[B

    iget-object v2, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    invoke-virtual {v2, p3}, Landroid/util/Base64$Coder;->maxOutputSize(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/util/Base64OutputStream;->embiggen([BI)[B

    move-result-object v1

    iput-object v1, v0, Landroid/util/Base64$Coder;->output:[B

    .line 138
    iget-object v0, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/util/Base64$Coder;->process([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Landroid/util/Base64DataException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Landroid/util/Base64DataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iget-object v0, p0, Landroid/util/Base64OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v1, v1, Landroid/util/Base64$Coder;->output:[B

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/util/Base64OutputStream;->coder:Landroid/util/Base64$Coder;

    iget v3, v3, Landroid/util/Base64$Coder;->op:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 142
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 107
    .local v1, "thrown":Ljava/io/IOException;
    :try_start_0
    invoke-direct {p0}, Landroid/util/Base64OutputStream;->flushBuffer()V

    .line 108
    sget-object v2, Landroid/util/Base64OutputStream;->EMPTY:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/util/Base64OutputStream;->internalWrite([BIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    :try_start_1
    iget v2, p0, Landroid/util/Base64OutputStream;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_1

    .line 115
    iget-object v2, p0, Landroid/util/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    :cond_0
    :goto_1
    if-eqz v1, :cond_2

    .line 126
    throw v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v0

    goto :goto_0

    .line 117
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/util/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 119
    :catch_1
    move-exception v0

    .line 120
    .restart local v0    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 121
    move-object v1, v0

    goto :goto_1

    .line 128
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 76
    iget-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    if-nez v0, :cond_0

    .line 77
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    .line 79
    :cond_0
    iget v0, p0, Landroid/util/Base64OutputStream;->bpos:I

    iget-object v1, p0, Landroid/util/Base64OutputStream;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    iget v1, p0, Landroid/util/Base64OutputStream;->bpos:I

    invoke-direct {p0, v0, v2, v1, v2}, Landroid/util/Base64OutputStream;->internalWrite([BIIZ)V

    .line 82
    iput v2, p0, Landroid/util/Base64OutputStream;->bpos:I

    .line 84
    :cond_1
    iget-object v0, p0, Landroid/util/Base64OutputStream;->buffer:[B

    iget v1, p0, Landroid/util/Base64OutputStream;->bpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/Base64OutputStream;->bpos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 85
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    if-gtz p3, :cond_0

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-direct {p0}, Landroid/util/Base64OutputStream;->flushBuffer()V

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/util/Base64OutputStream;->internalWrite([BIIZ)V

    goto :goto_0
.end method
