.class Landroid/speech/tts/FileSynthesisCallback;
.super Landroid/speech/tts/AbstractSynthesisCallback;
.source "FileSynthesisCallback.java"


# static fields
.field private static final DBG:Z = false

.field private static final MAX_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "FileSynthesisRequest"

.field private static final WAV_FORMAT_PCM:S = 0x1s

.field private static final WAV_HEADER_LENGTH:I = 0x2c


# instance fields
.field private mAudioFormat:I

.field private mChannelCount:I

.field private mDone:Z

.field private mFileChannel:Ljava/nio/channels/FileChannel;

.field private mSampleRateInHz:I

.field private mStarted:Z

.field private final mStateLock:Ljava/lang/Object;

.field private mStopped:Z


# direct methods
.method constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 2
    .param p1, "fileChannel"    # Ljava/nio/channels/FileChannel;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/speech/tts/AbstractSynthesisCallback;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    .line 51
    iput-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    .line 52
    iput-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStopped:Z

    .line 53
    iput-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    .line 56
    iput-object p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 57
    return-void
.end method

.method private cleanUp()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->closeFile()V

    .line 72
    return-void
.end method

.method private closeFile()V
    .locals 3

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "FileSynthesisRequest"

    const-string v2, "Failed to close output file descriptor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private makeWavHeader(IIII)Ljava/nio/ByteBuffer;
    .locals 9
    .param p1, "sampleRateInHz"    # I
    .param p2, "audioFormat"    # I
    .param p3, "channelCount"    # I
    .param p4, "dataLength"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x4

    .line 201
    const/4 v7, 0x3

    if-ne p2, v7, :cond_0

    move v5, v6

    .line 202
    .local v5, "sampleSizeInBytes":I
    :goto_0
    mul-int v7, p1, v5

    mul-int v2, v7, p3

    .line 203
    .local v2, "byteRate":I
    mul-int v7, v5, p3

    int-to-short v1, v7

    .line 204
    .local v1, "blockAlign":S
    mul-int/lit8 v7, v5, 0x8

    int-to-short v0, v7

    .line 206
    .local v0, "bitsPerSample":S
    const/16 v7, 0x2c

    new-array v4, v7, [B

    .line 207
    .local v4, "headerBuf":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 208
    .local v3, "header":Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 210
    new-array v7, v8, [B

    fill-array-data v7, :array_0

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 211
    add-int/lit8 v7, p4, 0x2c

    add-int/lit8 v7, v7, -0x8

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 212
    new-array v7, v8, [B

    fill-array-data v7, :array_1

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 213
    new-array v7, v8, [B

    fill-array-data v7, :array_2

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 214
    const/16 v7, 0x10

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 215
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 216
    int-to-short v6, p3

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 217
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 218
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 219
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 220
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 221
    new-array v6, v8, [B

    fill-array-data v6, :array_3

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 222
    invoke-virtual {v3, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 223
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 225
    return-object v3

    .line 201
    .end local v0    # "bitsPerSample":S
    .end local v1    # "blockAlign":S
    .end local v2    # "byteRate":I
    .end local v3    # "header":Ljava/nio/ByteBuffer;
    .end local v4    # "headerBuf":[B
    .end local v5    # "sampleSizeInBytes":I
    :cond_0
    const/4 v5, 0x2

    goto :goto_0

    .line 210
    nop

    :array_0
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    .line 212
    :array_1
    .array-data 1
        0x57t
        0x41t
        0x56t
        0x45t
    .end array-data

    .line 213
    :array_2
    .array-data 1
        0x66t
        0x6dt
        0x74t
        0x20t
    .end array-data

    .line 221
    :array_3
    .array-data 1
        0x64t
        0x61t
        0x74t
        0x61t
    .end array-data
.end method


# virtual methods
.method public audioAvailable([BII)I
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, -0x1

    .line 135
    iget-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 136
    :try_start_0
    iget-boolean v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStopped:Z

    if-eqz v3, :cond_0

    .line 138
    monitor-exit v2

    .line 150
    :goto_0
    return v1

    .line 140
    :cond_0
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-nez v3, :cond_1

    .line 141
    const-string v3, "FileSynthesisRequest"

    const-string v4, "File not open"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    monitor-exit v2

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 145
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    const/4 v1, 0x0

    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "ex":Ljava/io/IOException;
    const-string v3, "FileSynthesisRequest"

    const-string v4, "Failed to write to output file descriptor"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 150
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public done()I
    .locals 8

    .prologue
    const/4 v2, -0x1

    .line 158
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 159
    :try_start_0
    iget-boolean v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    if-eqz v4, :cond_0

    .line 163
    monitor-exit v3

    .line 185
    :goto_0
    return v2

    .line 165
    :cond_0
    iget-boolean v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mStopped:Z

    if-eqz v4, :cond_1

    .line 167
    monitor-exit v3

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 169
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-nez v4, :cond_2

    .line 170
    const-string v4, "FileSynthesisRequest"

    const-string v5, "File not open"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 175
    :cond_2
    :try_start_2
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 176
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x2c

    sub-long/2addr v4, v6

    long-to-int v0, v4

    .line 177
    .local v0, "dataLength":I
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    iget v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mSampleRateInHz:I

    iget v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mAudioFormat:I

    iget v7, p0, Landroid/speech/tts/FileSynthesisCallback;->mChannelCount:I

    invoke-direct {p0, v5, v6, v7, v0}, Landroid/speech/tts/FileSynthesisCallback;->makeWavHeader(IIII)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 179
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->closeFile()V

    .line 180
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    const/4 v2, 0x0

    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 182
    .end local v0    # "dataLength":I
    :catch_0
    move-exception v1

    .line 183
    .local v1, "ex":Ljava/io/IOException;
    const-string v4, "FileSynthesisRequest"

    const-string v5, "Failed to write to output file descriptor"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 185
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public error()V
    .locals 2

    .prologue
    .line 193
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_0
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 195
    monitor-exit v1

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMaxBufferSize()I
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0x2000

    return v0
.end method

.method isDone()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    return v0
.end method

.method public start(III)I
    .locals 6
    .param p1, "sampleRateInHz"    # I
    .param p2, "audioFormat"    # I
    .param p3, "channelCount"    # I

    .prologue
    const/4 v1, -0x1

    .line 104
    iget-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 105
    :try_start_0
    iget-boolean v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStopped:Z

    if-eqz v3, :cond_0

    .line 107
    monitor-exit v2

    .line 124
    :goto_0
    return v1

    .line 109
    :cond_0
    iget-boolean v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    if-eqz v3, :cond_1

    .line 110
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 111
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "FileSynthesisRequest.start() called twice"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 113
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    .line 114
    iput p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mSampleRateInHz:I

    .line 115
    iput p2, p0, Landroid/speech/tts/FileSynthesisCallback;->mAudioFormat:I

    .line 116
    iput p3, p0, Landroid/speech/tts/FileSynthesisCallback;->mChannelCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :try_start_2
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    const/16 v4, 0x2c

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    const/4 v1, 0x0

    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "ex":Ljava/io/IOException;
    const-string v3, "FileSynthesisRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write wav header to output file descriptor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 124
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method stop()V
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStopped:Z

    .line 63
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
