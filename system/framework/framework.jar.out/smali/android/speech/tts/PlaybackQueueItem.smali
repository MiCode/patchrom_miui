.class abstract Landroid/speech/tts/PlaybackQueueItem;
.super Ljava/lang/Object;
.source "PlaybackQueueItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mCallerIdentity:Ljava/lang/Object;

.field private final mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;)V
    .locals 0
    .param p1, "dispatcher"    # Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .param p2, "callerIdentity"    # Ljava/lang/Object;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Landroid/speech/tts/PlaybackQueueItem;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 14
    iput-object p2, p0, Landroid/speech/tts/PlaybackQueueItem;->mCallerIdentity:Ljava/lang/Object;

    .line 15
    return-void
.end method


# virtual methods
.method getCallerIdentity()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Landroid/speech/tts/PlaybackQueueItem;->mCallerIdentity:Ljava/lang/Object;

    return-object v0
.end method

.method protected getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Landroid/speech/tts/PlaybackQueueItem;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    return-object v0
.end method

.method public abstract run()V
.end method

.method abstract stop(Z)V
.end method
