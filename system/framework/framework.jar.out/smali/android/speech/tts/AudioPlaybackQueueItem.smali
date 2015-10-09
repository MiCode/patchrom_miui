.class Landroid/speech/tts/AudioPlaybackQueueItem;
.super Landroid/speech/tts/PlaybackQueueItem;
.source "AudioPlaybackQueueItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TTS.AudioQueueItem"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDone:Landroid/os/ConditionVariable;

.field private volatile mFinished:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private final mStreamType:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 1
    .param p1, "dispatcher"    # Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "streamType"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/speech/tts/PlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;)V

    .line 41
    iput-object p3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mContext:Landroid/content/Context;

    .line 42
    iput-object p4, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mUri:Landroid/net/Uri;

    .line 43
    iput p5, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mStreamType:I

    .line 45
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mFinished:Z

    .line 48
    return-void
.end method

.method static synthetic access$000(Landroid/speech/tts/AudioPlaybackQueueItem;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/AudioPlaybackQueueItem;

    .prologue
    .line 25
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$102(Landroid/speech/tts/AudioPlaybackQueueItem;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/speech/tts/AudioPlaybackQueueItem;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mFinished:Z

    return p1
.end method

.method private finish()V
    .locals 1

    .prologue
    .line 94
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 99
    return-void

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/speech/tts/AudioPlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v0

    .line 53
    .local v0, "dispatcher":Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    .line 54
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v2

    iput-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    .line 55
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    .line 56
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError()V

    .line 90
    :goto_0
    return-void

    .line 61
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Landroid/speech/tts/AudioPlaybackQueueItem$1;

    invoke-direct {v3, p0}, Landroid/speech/tts/AudioPlaybackQueueItem$1;-><init>(Landroid/speech/tts/AudioPlaybackQueueItem;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 69
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Landroid/speech/tts/AudioPlaybackQueueItem$2;

    invoke-direct {v3, p0}, Landroid/speech/tts/AudioPlaybackQueueItem$2;-><init>(Landroid/speech/tts/AudioPlaybackQueueItem;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 76
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    iget v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 77
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 78
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    .line 79
    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackQueueItem;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_1
    iget-boolean v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mFinished:Z

    if-eqz v2, :cond_1

    .line 86
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnDone()V

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v2, "TTS.AudioQueueItem"

    const-string v3, "MediaPlayer failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    goto :goto_1

    .line 88
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError()V

    goto :goto_0
.end method

.method stop(Z)V
    .locals 1
    .param p1, "isError"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 104
    return-void
.end method
