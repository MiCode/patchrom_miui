.class Landroid/media/SubtitleTrack$1;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/SubtitleTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/SubtitleTrack;

.field final synthetic val$thenMs:J

.field final synthetic val$track:Landroid/media/SubtitleTrack;


# direct methods
.method constructor <init>(Landroid/media/SubtitleTrack;Landroid/media/SubtitleTrack;J)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    iput-object p2, p0, Landroid/media/SubtitleTrack$1;->val$track:Landroid/media/SubtitleTrack;

    iput-wide p3, p0, Landroid/media/SubtitleTrack$1;->val$thenMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 339
    iget-object v1, p0, Landroid/media/SubtitleTrack$1;->val$track:Landroid/media/SubtitleTrack;

    monitor-enter v1

    .line 340
    :try_start_0
    iget-object v0, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    const/4 v2, 0x0

    # setter for: Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Landroid/media/SubtitleTrack;->access$102(Landroid/media/SubtitleTrack;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 341
    iget-object v0, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    const/4 v2, 0x1

    iget-wide v3, p0, Landroid/media/SubtitleTrack$1;->val$thenMs:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/SubtitleTrack;->updateActiveCues(ZJ)V

    .line 342
    iget-object v0, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    iget-object v2, p0, Landroid/media/SubtitleTrack$1;->this$0:Landroid/media/SubtitleTrack;

    iget-object v2, v2, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    .line 343
    monitor-exit v1

    .line 344
    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
