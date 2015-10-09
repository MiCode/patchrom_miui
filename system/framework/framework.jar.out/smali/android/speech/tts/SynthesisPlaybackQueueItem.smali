.class final Landroid/speech/tts/SynthesisPlaybackQueueItem;
.super Landroid/speech/tts/PlaybackQueueItem;
.source "SynthesisPlaybackQueueItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MAX_UNCONSUMED_AUDIO_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "TTS.SynthQueueItem"


# instance fields
.field private final mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

.field private final mDataBufferList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDone:Z

.field private volatile mIsError:Z

.field private final mListLock:Ljava/util/concurrent/locks/Lock;

.field private final mLogger:Landroid/speech/tts/EventLogger;

.field private final mNotFull:Ljava/util/concurrent/locks/Condition;

.field private final mReadReady:Ljava/util/concurrent/locks/Condition;

.field private volatile mStopped:Z

.field private mUnconsumedBytes:I


# direct methods
.method constructor <init>(IIIIFFLandroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/EventLogger;)V
    .locals 8
    .param p1, "streamType"    # I
    .param p2, "sampleRate"    # I
    .param p3, "audioFormat"    # I
    .param p4, "channelCount"    # I
    .param p5, "volume"    # F
    .param p6, "pan"    # F
    .param p7, "dispatcher"    # Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .param p8, "callerIdentity"    # Ljava/lang/Object;
    .param p9, "logger"    # Landroid/speech/tts/EventLogger;

    .prologue
    .line 70
    move-object/from16 v0, p8

    invoke-direct {p0, p7, v0}, Landroid/speech/tts/PlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;)V

    .line 44
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    .line 45
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    .line 46
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    .line 49
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    .line 72
    const/4 v1, 0x0

    iput v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    .line 74
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDone:Z

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mIsError:Z

    .line 78
    new-instance v1, Landroid/speech/tts/BlockingAudioTrack;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/speech/tts/BlockingAudioTrack;-><init>(IIIIFF)V

    iput-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    .line 80
    move-object/from16 v0, p9

    iput-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mLogger:Landroid/speech/tts/EventLogger;

    .line 81
    return-void
.end method

.method private take()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 205
    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 209
    :goto_0
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDone:Z

    if-nez v2, :cond_0

    .line 210
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 215
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 236
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-object v1

    .line 220
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    .local v0, "entry":Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;
    if-nez v0, :cond_2

    .line 236
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 228
    :cond_2
    :try_start_3
    iget v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    iget-object v2, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;->mBytes:[B

    array-length v2, v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    .line 232
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 234
    iget-object v1, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;->mBytes:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1
.end method


# virtual methods
.method done()V
    .locals 2

    .prologue
    .line 156
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDone:Z

    .line 164
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 170
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 174
    return-void

    .line 172
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method put([B)V
    .locals 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 179
    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 180
    const-wide/16 v0, 0x0

    .line 183
    .local v0, "unconsumedAudioMs":J
    :goto_0
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    iget v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    invoke-virtual {v2, v3}, Landroid/speech/tts/BlockingAudioTrack;->getAudioLengthMs(I)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-boolean v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    if-nez v2, :cond_0

    .line 184
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 199
    .end local v0    # "unconsumedAudioMs":J
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 191
    .restart local v0    # "unconsumedAudioMs":J
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 199
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 201
    :goto_1
    return-void

    .line 195
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    new-instance v3, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;

    invoke-direct {v3, p1}, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 196
    iget v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    array-length v3, p1

    add-int/2addr v2, v3

    iput v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    .line 197
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1
.end method

.method public run()V
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v1

    .line 87
    .local v1, "dispatcher":Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    .line 90
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    invoke-virtual {v2}, Landroid/speech/tts/BlockingAudioTrack;->init()Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError()V

    .line 122
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    .line 104
    .local v0, "buffer":[B
    :goto_1
    :try_start_0
    invoke-direct {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->take()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    invoke-virtual {v2, v0}, Landroid/speech/tts/BlockingAudioTrack;->write([B)I

    .line 106
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v2}, Landroid/speech/tts/EventLogger;->onAudioDataWritten()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 109
    :catch_0
    move-exception v2

    .line 113
    :cond_1
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    invoke-virtual {v2}, Landroid/speech/tts/BlockingAudioTrack;->waitAndRelease()V

    .line 115
    iget-boolean v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mIsError:Z

    if-eqz v2, :cond_2

    .line 116
    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError()V

    .line 121
    :goto_2
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v2}, Landroid/speech/tts/EventLogger;->onWriteData()V

    goto :goto_0

    .line 118
    :cond_2
    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnDone()V

    goto :goto_2
.end method

.method stop(Z)V
    .locals 2
    .param p1, "isError"    # Z

    .prologue
    .line 127
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    .line 131
    iput-boolean p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mIsError:Z

    .line 136
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 143
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 151
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    invoke-virtual {v0}, Landroid/speech/tts/BlockingAudioTrack;->stop()V

    .line 152
    return-void

    .line 145
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
