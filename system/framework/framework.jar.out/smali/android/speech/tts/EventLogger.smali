.class Landroid/speech/tts/EventLogger;
.super Ljava/lang/Object;
.source "EventLogger.java"


# instance fields
.field private final mCallerPid:I

.field private final mCallerUid:I

.field private volatile mEngineCompleteTime:J

.field private volatile mEngineStartTime:J

.field private volatile mError:Z

.field private mLogWritten:Z

.field private mPlaybackStartTime:J

.field private final mReceivedTime:J

.field private final mRequest:Landroid/speech/tts/SynthesisRequest;

.field private volatile mRequestProcessingStartTime:J

.field private final mServiceApp:Ljava/lang/String;

.field private volatile mStopped:Z


# direct methods
.method constructor <init>(Landroid/speech/tts/SynthesisRequest;IILjava/lang/String;)V
    .locals 3
    .param p1, "request"    # Landroid/speech/tts/SynthesisRequest;
    .param p2, "callerUid"    # I
    .param p3, "callerPid"    # I
    .param p4, "serviceApp"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mPlaybackStartTime:J

    .line 39
    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mRequestProcessingStartTime:J

    .line 40
    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mEngineStartTime:J

    .line 41
    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mEngineCompleteTime:J

    .line 43
    iput-boolean v2, p0, Landroid/speech/tts/EventLogger;->mError:Z

    .line 44
    iput-boolean v2, p0, Landroid/speech/tts/EventLogger;->mStopped:Z

    .line 45
    iput-boolean v2, p0, Landroid/speech/tts/EventLogger;->mLogWritten:Z

    .line 48
    iput-object p1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    .line 49
    iput p2, p0, Landroid/speech/tts/EventLogger;->mCallerUid:I

    .line 50
    iput p3, p0, Landroid/speech/tts/EventLogger;->mCallerPid:I

    .line 51
    iput-object p4, p0, Landroid/speech/tts/EventLogger;->mServiceApp:Ljava/lang/String;

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mReceivedTime:J

    .line 53
    return-void
.end method

.method private getLocaleString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2d

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getUtteranceLength()I
    .locals 2

    .prologue
    .line 155
    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getText()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "utterance":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onAudioDataWritten()V
    .locals 4

    .prologue
    .line 91
    iget-wide v0, p0, Landroid/speech/tts/EventLogger;->mPlaybackStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mPlaybackStartTime:J

    .line 94
    :cond_0
    return-void
.end method

.method public onEngineComplete()V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mEngineCompleteTime:J

    .line 80
    return-void
.end method

.method public onEngineDataReceived()V
    .locals 4

    .prologue
    .line 69
    iget-wide v0, p0, Landroid/speech/tts/EventLogger;->mEngineStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mEngineStartTime:J

    .line 72
    :cond_0
    return-void
.end method

.method public onError()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/speech/tts/EventLogger;->mError:Z

    .line 110
    return-void
.end method

.method public onRequestProcessingStart()V
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/speech/tts/EventLogger;->mRequestProcessingStartTime:J

    .line 62
    return-void
.end method

.method public onStopped()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/EventLogger;->mStopped:Z

    .line 102
    return-void
.end method

.method public onWriteData()V
    .locals 15

    .prologue
    const-wide/16 v2, -0x1

    .line 117
    iget-boolean v0, p0, Landroid/speech/tts/EventLogger;->mLogWritten:Z

    if-eqz v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/speech/tts/EventLogger;->mLogWritten:Z

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 126
    .local v13, "completionTime":J
    iget-boolean v0, p0, Landroid/speech/tts/EventLogger;->mError:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Landroid/speech/tts/EventLogger;->mPlaybackStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroid/speech/tts/EventLogger;->mEngineCompleteTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 127
    :cond_2
    iget-object v0, p0, Landroid/speech/tts/EventLogger;->mServiceApp:Ljava/lang/String;

    iget v1, p0, Landroid/speech/tts/EventLogger;->mCallerUid:I

    iget v2, p0, Landroid/speech/tts/EventLogger;->mCallerPid:I

    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getUtteranceLength()I

    move-result v3

    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getLocaleString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v5}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v5

    iget-object v6, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v6}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/speech/tts/EventLogTags;->writeTtsSpeakFailure(Ljava/lang/String;IIILjava/lang/String;II)V

    goto :goto_0

    .line 136
    :cond_3
    iget-boolean v0, p0, Landroid/speech/tts/EventLogger;->mStopped:Z

    if-nez v0, :cond_0

    .line 140
    iget-wide v0, p0, Landroid/speech/tts/EventLogger;->mPlaybackStartTime:J

    iget-wide v2, p0, Landroid/speech/tts/EventLogger;->mReceivedTime:J

    sub-long v11, v0, v2

    .line 141
    .local v11, "audioLatency":J
    iget-wide v0, p0, Landroid/speech/tts/EventLogger;->mEngineStartTime:J

    iget-wide v2, p0, Landroid/speech/tts/EventLogger;->mRequestProcessingStartTime:J

    sub-long v7, v0, v2

    .line 142
    .local v7, "engineLatency":J
    iget-wide v0, p0, Landroid/speech/tts/EventLogger;->mEngineCompleteTime:J

    iget-wide v2, p0, Landroid/speech/tts/EventLogger;->mRequestProcessingStartTime:J

    sub-long v9, v0, v2

    .line 144
    .local v9, "engineTotal":J
    iget-object v0, p0, Landroid/speech/tts/EventLogger;->mServiceApp:Ljava/lang/String;

    iget v1, p0, Landroid/speech/tts/EventLogger;->mCallerUid:I

    iget v2, p0, Landroid/speech/tts/EventLogger;->mCallerPid:I

    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getUtteranceLength()I

    move-result v3

    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getLocaleString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v5}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v5

    iget-object v6, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v6}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result v6

    invoke-static/range {v0 .. v12}, Landroid/speech/tts/EventLogTags;->writeTtsSpeakSuccess(Ljava/lang/String;IIILjava/lang/String;IIJJJ)V

    goto :goto_0
.end method
