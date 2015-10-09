.class Landroid/speech/tts/AudioPlaybackQueueItem$2;
.super Ljava/lang/Object;
.source "AudioPlaybackQueueItem.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/AudioPlaybackQueueItem;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/AudioPlaybackQueueItem;


# direct methods
.method constructor <init>(Landroid/speech/tts/AudioPlaybackQueueItem;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem$2;->this$0:Landroid/speech/tts/AudioPlaybackQueueItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem$2;->this$0:Landroid/speech/tts/AudioPlaybackQueueItem;

    const/4 v1, 0x1

    # setter for: Landroid/speech/tts/AudioPlaybackQueueItem;->mFinished:Z
    invoke-static {v0, v1}, Landroid/speech/tts/AudioPlaybackQueueItem;->access$102(Landroid/speech/tts/AudioPlaybackQueueItem;Z)Z

    .line 73
    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem$2;->this$0:Landroid/speech/tts/AudioPlaybackQueueItem;

    # getter for: Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;
    invoke-static {v0}, Landroid/speech/tts/AudioPlaybackQueueItem;->access$000(Landroid/speech/tts/AudioPlaybackQueueItem;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 74
    return-void
.end method
