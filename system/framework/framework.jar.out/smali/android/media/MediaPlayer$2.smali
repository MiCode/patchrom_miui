.class Landroid/media/MediaPlayer$2;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;

.field final synthetic val$fFormat:Landroid/media/MediaFormat;

.field final synthetic val$fIs:Ljava/io/InputStream;

.field final synthetic val$thread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V
    .locals 0

    .prologue
    .line 1811
    iput-object p1, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    iput-object p2, p0, Landroid/media/MediaPlayer$2;->val$fIs:Ljava/io/InputStream;

    iput-object p3, p0, Landroid/media/MediaPlayer$2;->val$fFormat:Landroid/media/MediaFormat;

    iput-object p4, p0, Landroid/media/MediaPlayer$2;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTrack()I
    .locals 6

    .prologue
    const/16 v3, 0x385

    .line 1813
    iget-object v4, p0, Landroid/media/MediaPlayer$2;->val$fIs:Ljava/io/InputStream;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;
    invoke-static {v4}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1831
    :cond_0
    :goto_0
    return v3

    .line 1817
    :cond_1
    iget-object v4, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;
    invoke-static {v4}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v4

    iget-object v5, p0, Landroid/media/MediaPlayer$2;->val$fFormat:Landroid/media/MediaFormat;

    invoke-virtual {v4, v5}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v2

    .line 1818
    .local v2, "track":Landroid/media/SubtitleTrack;
    if-eqz v2, :cond_0

    .line 1823
    new-instance v1, Ljava/util/Scanner;

    iget-object v3, p0, Landroid/media/MediaPlayer$2;->val$fIs:Ljava/io/InputStream;

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1824
    .local v1, "scanner":Ljava/util/Scanner;
    const-string v3, "\\A"

    invoke-virtual {v1, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 1825
    .local v0, "contents":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;
    invoke-static {v3}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v4

    monitor-enter v4

    .line 1826
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;
    invoke-static {v3}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v3

    iget-object v5, p0, Landroid/media/MediaPlayer$2;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v3, v5}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1827
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1828
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    .line 1829
    iget-object v3, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOutOfBandSubtitleTracks:Ljava/util/Vector;
    invoke-static {v3}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1830
    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/media/SubtitleTrack;->onData(Ljava/lang/String;ZJ)V

    .line 1831
    const/16 v3, 0x323

    goto :goto_0

    .line 1827
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1835
    invoke-direct {p0}, Landroid/media/MediaPlayer$2;->addTrack()I

    move-result v1

    .line 1836
    .local v1, "res":I
    iget-object v2, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1837
    iget-object v2, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    const/16 v3, 0xc8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1838
    .local v0, "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;
    invoke-static {v2}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1840
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Landroid/media/MediaPlayer$2;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quitSafely()V

    .line 1841
    return-void
.end method
