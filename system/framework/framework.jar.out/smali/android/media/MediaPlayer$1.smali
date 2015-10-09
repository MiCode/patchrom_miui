.class Landroid/media/MediaPlayer$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSubtitleDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 1741
    iput-object p1, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V
    .locals 9
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "data"    # Landroid/media/SubtitleData;

    .prologue
    .line 1744
    invoke-virtual {p2}, Landroid/media/SubtitleData;->getTrackIndex()I

    move-result v1

    .line 1745
    .local v1, "index":I
    iget-object v5, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)[Landroid/media/SubtitleTrack;

    move-result-object v5

    array-length v5, v5

    if-lt v1, v5, :cond_1

    .line 1761
    :cond_0
    :goto_0
    return-void

    .line 1748
    :cond_1
    iget-object v5, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)[Landroid/media/SubtitleTrack;

    move-result-object v5

    aget-object v4, v5, v1

    .line 1749
    .local v4, "track":Landroid/media/SubtitleTrack;
    if-eqz v4, :cond_0

    .line 1751
    :try_start_0
    invoke-virtual {p2}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long v2, v5, v7

    .line 1753
    .local v2, "runID":J
    new-instance v5, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/media/SubtitleData;->getData()[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/media/SubtitleTrack;->onData(Ljava/lang/String;ZJ)V

    .line 1754
    invoke-virtual {p2}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/media/SubtitleData;->getDurationUs()J

    move-result-wide v7

    add-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/media/SubtitleTrack;->setRunDiscardTimeMs(JJ)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1757
    .end local v2    # "runID":J
    :catch_0
    move-exception v0

    .line 1758
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subtitle data for track "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not UTF-8 encoded: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
