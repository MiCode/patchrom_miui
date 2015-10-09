.class public Landroid/speech/srec/WaveHeader;
.super Ljava/lang/Object;
.source "WaveHeader.java"


# static fields
.field public static final FORMAT_ALAW:S = 0x6s

.field public static final FORMAT_PCM:S = 0x1s

.field public static final FORMAT_ULAW:S = 0x7s

.field private static final HEADER_LENGTH:I = 0x2c

.field private static final TAG:Ljava/lang/String; = "WaveHeader"


# instance fields
.field private mBitsPerSample:S

.field private mFormat:S

.field private mNumBytes:I

.field private mNumChannels:S

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(SSISI)V
    .locals 0
    .param p1, "format"    # S
    .param p2, "numChannels"    # S
    .param p3, "sampleRate"    # I
    .param p4, "bitsPerSample"    # S
    .param p5, "numBytes"    # I

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-short p1, p0, Landroid/speech/srec/WaveHeader;->mFormat:S

    .line 75
    iput p3, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    .line 76
    iput-short p2, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    .line 77
    iput-short p4, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    .line 78
    iput p5, p0, Landroid/speech/srec/WaveHeader;->mNumBytes:I

    .line 79
    return-void
.end method

.method private static readId(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tag not present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_1
    return-void
.end method

.method private static readInt(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private static readShort(Ljava/io/InputStream;)S
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private static writeId(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_0
    return-void
.end method

.method private static writeInt(Ljava/io/OutputStream;I)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    shr-int/lit8 v0, p1, 0x0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 259
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 260
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 261
    shr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 262
    return-void
.end method

.method private static writeShort(Ljava/io/OutputStream;S)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "val"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    shr-int/lit8 v0, p1, 0x0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 266
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 267
    return-void
.end method


# virtual methods
.method public getBitsPerSample()S
    .locals 1

    .prologue
    .line 143
    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    return v0
.end method

.method public getFormat()S
    .locals 1

    .prologue
    .line 87
    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mFormat:S

    return v0
.end method

.method public getNumBytes()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Landroid/speech/srec/WaveHeader;->mNumBytes:I

    return v0
.end method

.method public getNumChannels()S
    .locals 1

    .prologue
    .line 106
    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    return v0
.end method

.method public read(Ljava/io/InputStream;)I
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    const-string v3, "RIFF"

    invoke-static {p1, v3}, Landroid/speech/srec/WaveHeader;->readId(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 184
    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readInt(Ljava/io/InputStream;)I

    move-result v3

    add-int/lit8 v2, v3, -0x24

    .line 185
    .local v2, "numBytes":I
    const-string v3, "WAVE"

    invoke-static {p1, v3}, Landroid/speech/srec/WaveHeader;->readId(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 188
    const-string v3, "fmt "

    invoke-static {p1, v3}, Landroid/speech/srec/WaveHeader;->readId(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 189
    const/16 v3, 0x10

    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readInt(Ljava/io/InputStream;)I

    move-result v4

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "fmt chunk length not 16"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 190
    :cond_0
    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readShort(Ljava/io/InputStream;)S

    move-result v3

    iput-short v3, p0, Landroid/speech/srec/WaveHeader;->mFormat:S

    .line 191
    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readShort(Ljava/io/InputStream;)S

    move-result v3

    iput-short v3, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    .line 192
    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    .line 193
    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 194
    .local v1, "byteRate":I
    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readShort(Ljava/io/InputStream;)S

    move-result v0

    .line 195
    .local v0, "blockAlign":S
    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readShort(Ljava/io/InputStream;)S

    move-result v3

    iput-short v3, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    .line 196
    iget-short v3, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    iget v4, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    mul-int/2addr v3, v4

    iget-short v4, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x8

    if-eq v1, v3, :cond_1

    .line 197
    new-instance v3, Ljava/io/IOException;

    const-string v4, "fmt.ByteRate field inconsistent"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 199
    :cond_1
    iget-short v3, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    iget-short v4, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x8

    if-eq v0, v3, :cond_2

    .line 200
    new-instance v3, Ljava/io/IOException;

    const-string v4, "fmt.BlockAlign field inconsistent"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 204
    :cond_2
    const-string v3, "data"

    invoke-static {p1, v3}, Landroid/speech/srec/WaveHeader;->readId(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 205
    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, p0, Landroid/speech/srec/WaveHeader;->mNumBytes:I

    .line 207
    const/16 v3, 0x2c

    return v3
.end method

.method public setBitsPerSample(S)Landroid/speech/srec/WaveHeader;
    .locals 0
    .param p1, "bitsPerSample"    # S

    .prologue
    .line 153
    iput-short p1, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    .line 154
    return-object p0
.end method

.method public setFormat(S)Landroid/speech/srec/WaveHeader;
    .locals 0
    .param p1, "format"    # S

    .prologue
    .line 97
    iput-short p1, p0, Landroid/speech/srec/WaveHeader;->mFormat:S

    .line 98
    return-object p0
.end method

.method public setNumBytes(I)Landroid/speech/srec/WaveHeader;
    .locals 0
    .param p1, "numBytes"    # I

    .prologue
    .line 171
    iput p1, p0, Landroid/speech/srec/WaveHeader;->mNumBytes:I

    .line 172
    return-object p0
.end method

.method public setNumChannels(S)Landroid/speech/srec/WaveHeader;
    .locals 0
    .param p1, "numChannels"    # S

    .prologue
    .line 115
    iput-short p1, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    .line 116
    return-object p0
.end method

.method public setSampleRate(I)Landroid/speech/srec/WaveHeader;
    .locals 0
    .param p1, "sampleRate"    # I

    .prologue
    .line 133
    iput p1, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    .line 134
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 271
    const-string v0, "WaveHeader format=%d numChannels=%d sampleRate=%d bitsPerSample=%d numBytes=%d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-short v3, p0, Landroid/speech/srec/WaveHeader;->mFormat:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-short v3, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-short v3, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Landroid/speech/srec/WaveHeader;->mNumBytes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)I
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    const-string v0, "RIFF"

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 233
    iget v0, p0, Landroid/speech/srec/WaveHeader;->mNumBytes:I

    add-int/lit8 v0, v0, 0x24

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    .line 234
    const-string v0, "WAVE"

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 237
    const-string v0, "fmt "

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 238
    const/16 v0, 0x10

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    .line 239
    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mFormat:S

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeShort(Ljava/io/OutputStream;S)V

    .line 240
    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeShort(Ljava/io/OutputStream;S)V

    .line 241
    iget v0, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    .line 242
    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    iget v1, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    mul-int/2addr v0, v1

    iget-short v1, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    .line 243
    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    iget-short v1, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeShort(Ljava/io/OutputStream;S)V

    .line 244
    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeShort(Ljava/io/OutputStream;S)V

    .line 247
    const-string v0, "data"

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 248
    iget v0, p0, Landroid/speech/srec/WaveHeader;->mNumBytes:I

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    .line 250
    const/16 v0, 0x2c

    return v0
.end method
