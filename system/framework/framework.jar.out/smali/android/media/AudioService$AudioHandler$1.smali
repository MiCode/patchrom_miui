.class Landroid/media/AudioService$AudioHandler$1;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioService$AudioHandler;->onPlaySoundEffect(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/AudioService$AudioHandler;


# direct methods
.method constructor <init>(Landroid/media/AudioService$AudioHandler;)V
    .locals 0

    .prologue
    .line 3535
    iput-object p1, p0, Landroid/media/AudioService$AudioHandler$1;->this$1:Landroid/media/AudioService$AudioHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 3537
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler$1;->this$1:Landroid/media/AudioService$AudioHandler;

    # invokes: Landroid/media/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V
    invoke-static {v0, p1}, Landroid/media/AudioService$AudioHandler;->access$5200(Landroid/media/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V

    .line 3538
    return-void
.end method
