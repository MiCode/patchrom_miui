.class Landroid/speech/tts/PlaybackSynthesisCallback;
.super Landroid/speech/tts/AbstractSynthesisCallback;
.source "PlaybackSynthesisCallback.java"


# static fields
.field private static final DBG:Z = false

.field private static final MIN_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "PlaybackSynthesisRequest"


# instance fields
.field private final mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

.field private final mCallerIdentity:Ljava/lang/Object;

.field private final mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

.field private volatile mDone:Z

.field private mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

.field private final mLogger:Landroid/speech/tts/EventLogger;

.field private final mPan:F

.field private final mStateLock:Ljava/lang/Object;

.field private mStopped:Z

.field private final mStreamType:I

.field private final mVolume:F


# direct methods
.method constructor <init>(IFFLandroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/EventLogger;)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "volume"    # F
    .param p3, "pan"    # F
    .param p4, "audioTrackHandler"    # Landroid/speech/tts/AudioPlaybackHandler;
    .param p5, "dispatcher"    # Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .param p6, "callerIdentity"    # Ljava/lang/Object;
    .param p7, "logger"    # Landroid/speech/tts/EventLogger;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/speech/tts/AbstractSynthesisCallback;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    .line 61
    iput-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStopped:Z

    .line 63
    iput-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    .line 72
    iput p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStreamType:I

    .line 73
    iput p2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mVolume:F

    .line 74
    iput p3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mPan:F

    .line 75
    iput-object p4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    .line 76
    iput-object p5, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 77
    iput-object p6, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mCallerIdentity:Ljava/lang/Object;

    .line 78
    iput-object p7, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/EventLogger;

    .line 79
    return-void
.end method


# virtual methods
.method public audioAvailable([BII)I
    .locals 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 171
    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->getMaxBufferSize()I

    move-result v5

    if-gt p3, v5, :cond_0

    if-gtz p3, :cond_1

    .line 172
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buffer is too large or of zero length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 176
    :cond_1
    const/4 v2, 0x0

    .line 177
    .local v2, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    iget-object v5, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v5

    .line 178
    :try_start_0
    iget-object v6, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStopped:Z

    if-eqz v6, :cond_3

    .line 179
    :cond_2
    monitor-exit v5

    move v3, v4

    .line 198
    :goto_0
    return v3

    .line 181
    :cond_3
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    .line 182
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    new-array v0, p3, [B

    .line 186
    .local v0, "bufferCopy":[B
    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->put([B)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    iget-object v4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v4}, Landroid/speech/tts/EventLogger;->onEngineDataReceived()V

    goto :goto_0

    .line 182
    .end local v0    # "bufferCopy":[B
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 192
    .restart local v0    # "bufferCopy":[B
    :catch_0
    move-exception v1

    .local v1, "ie":Ljava/lang/InterruptedException;
    move v3, v4

    .line 193
    goto :goto_0
.end method

.method public done()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 207
    :try_start_0
    iget-boolean v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    if-eqz v3, :cond_0

    .line 208
    const-string v3, "PlaybackSynthesisRequest"

    const-string v4, "Duplicate call to done()"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    monitor-exit v2

    .line 224
    :goto_0
    return v1

    .line 212
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    .line 214
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    if-nez v3, :cond_1

    .line 215
    monitor-exit v2

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 218
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    .line 219
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    invoke-virtual {v0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->done()V

    .line 222
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v1}, Landroid/speech/tts/EventLogger;->onEngineComplete()V

    .line 224
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public error()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v0}, Landroid/speech/tts/EventLogger;->onError()V

    .line 233
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/speech/tts/PlaybackSynthesisCallback;->stopImpl(Z)V

    .line 234
    return-void
.end method

.method public getMaxBufferSize()I
    .locals 1

    .prologue
    .line 128
    const/16 v0, 0x2000

    return v0
.end method

.method isDone()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    return v0
.end method

.method public start(III)I
    .locals 12
    .param p1, "sampleRateInHz"    # I
    .param p2, "audioFormat"    # I
    .param p3, "channelCount"    # I

    .prologue
    const/4 v1, -0x1

    .line 143
    invoke-static {p3}, Landroid/speech/tts/BlockingAudioTrack;->getChannelConfig(I)I

    move-result v10

    .line 144
    .local v10, "channelConfig":I
    if-nez v10, :cond_0

    .line 145
    const-string v2, "PlaybackSynthesisRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported number of channels :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return v1

    .line 149
    :cond_0
    iget-object v11, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v11

    .line 150
    :try_start_0
    iget-boolean v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStopped:Z

    if-eqz v2, :cond_1

    .line 152
    monitor-exit v11

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 154
    :cond_1
    :try_start_1
    new-instance v0, Landroid/speech/tts/SynthesisPlaybackQueueItem;

    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStreamType:I

    iget v5, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mVolume:F

    iget v6, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mPan:F

    iget-object v7, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    iget-object v8, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mCallerIdentity:Ljava/lang/Object;

    iget-object v9, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/EventLogger;

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v9}, Landroid/speech/tts/SynthesisPlaybackQueueItem;-><init>(IIIIFFLandroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/EventLogger;)V

    .line 157
    .local v0, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-virtual {v1, v0}, Landroid/speech/tts/AudioPlaybackHandler;->enqueue(Landroid/speech/tts/PlaybackQueueItem;)V

    .line 158
    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    .line 159
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    const/4 v1, 0x0

    goto :goto_0
.end method

.method stop()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/speech/tts/PlaybackSynthesisCallback;->stopImpl(Z)V

    .line 84
    return-void
.end method

.method stopImpl(Z)V
    .locals 4
    .param p1, "wasError"    # Z

    .prologue
    .line 90
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v1}, Landroid/speech/tts/EventLogger;->onStopped()V

    .line 93
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 94
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStopped:Z

    if-eqz v1, :cond_1

    .line 95
    const-string v1, "PlaybackSynthesisRequest"

    const-string/jumbo v3, "stop() called twice"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    monitor-exit v2

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    .line 100
    .local v0, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStopped:Z

    .line 101
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {v0, p1}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->stop(Z)V

    goto :goto_0

    .line 101
    .end local v0    # "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 115
    .restart local v0    # "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :cond_2
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v1}, Landroid/speech/tts/EventLogger;->onWriteData()V

    .line 117
    if-eqz p1, :cond_0

    .line 119
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError()V

    goto :goto_0
.end method
