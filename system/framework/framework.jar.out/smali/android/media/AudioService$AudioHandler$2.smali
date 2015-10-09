.class Landroid/media/AudioService$AudioHandler$2;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 3540
    iput-object p1, p0, Landroid/media/AudioService$AudioHandler$2;->this$1:Landroid/media/AudioService$AudioHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 3542
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler$2;->this$1:Landroid/media/AudioService$AudioHandler;

    # invokes: Landroid/media/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V
    invoke-static {v0, p1}, Landroid/media/AudioService$AudioHandler;->access$5200(Landroid/media/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V

    .line 3543
    const/4 v0, 0x1

    return v0
.end method
