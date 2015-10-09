.class final Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;
.super Ljava/lang/Object;
.source "AudioPlaybackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/AudioPlaybackHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageLoop"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/AudioPlaybackHandler;


# direct methods
.method private constructor <init>(Landroid/speech/tts/AudioPlaybackHandler;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;->this$0:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/AudioPlaybackHandler$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/speech/tts/AudioPlaybackHandler;
    .param p2, "x1"    # Landroid/speech/tts/AudioPlaybackHandler$1;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;-><init>(Landroid/speech/tts/AudioPlaybackHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 121
    :goto_0
    const/4 v1, 0x0

    .line 123
    .local v1, "item":Landroid/speech/tts/PlaybackQueueItem;
    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;->this$0:Landroid/speech/tts/AudioPlaybackHandler;

    # getter for: Landroid/speech/tts/AudioPlaybackHandler;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v2}, Landroid/speech/tts/AudioPlaybackHandler;->access$100(Landroid/speech/tts/AudioPlaybackHandler;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Landroid/speech/tts/PlaybackQueueItem;
    check-cast v1, Landroid/speech/tts/PlaybackQueueItem;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .restart local v1    # "item":Landroid/speech/tts/PlaybackQueueItem;
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;->this$0:Landroid/speech/tts/AudioPlaybackHandler;

    # setter for: Landroid/speech/tts/AudioPlaybackHandler;->mCurrentWorkItem:Landroid/speech/tts/PlaybackQueueItem;
    invoke-static {v2, v1}, Landroid/speech/tts/AudioPlaybackHandler;->access$202(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/PlaybackQueueItem;)Landroid/speech/tts/PlaybackQueueItem;

    .line 134
    invoke-virtual {v1}, Landroid/speech/tts/PlaybackQueueItem;->run()V

    .line 135
    iget-object v2, p0, Landroid/speech/tts/AudioPlaybackHandler$MessageLoop;->this$0:Landroid/speech/tts/AudioPlaybackHandler;

    const/4 v3, 0x0

    # setter for: Landroid/speech/tts/AudioPlaybackHandler;->mCurrentWorkItem:Landroid/speech/tts/PlaybackQueueItem;
    invoke-static {v2, v3}, Landroid/speech/tts/AudioPlaybackHandler;->access$202(Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/PlaybackQueueItem;)Landroid/speech/tts/PlaybackQueueItem;

    goto :goto_0

    .line 124
    .end local v1    # "item":Landroid/speech/tts/PlaybackQueueItem;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "ie":Ljava/lang/InterruptedException;
    return-void
.end method
