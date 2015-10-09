.class Landroid/media/SubtitleTrack$CueList$1;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/SubtitleTrack$CueList;->entriesBetween(JJ)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Long;",
        "Landroid/media/SubtitleTrack$Cue;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/SubtitleTrack$CueList;

.field final synthetic val$lastTimeMs:J

.field final synthetic val$timeMs:J


# direct methods
.method constructor <init>(Landroid/media/SubtitleTrack$CueList;JJ)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Landroid/media/SubtitleTrack$CueList$1;->this$0:Landroid/media/SubtitleTrack$CueList;

    iput-wide p2, p0, Landroid/media/SubtitleTrack$CueList$1;->val$lastTimeMs:J

    iput-wide p4, p0, Landroid/media/SubtitleTrack$CueList$1;->val$timeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x1

    .line 448
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$1;->this$0:Landroid/media/SubtitleTrack$CueList;

    iget-boolean v1, v1, Landroid/media/SubtitleTrack$CueList;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CueList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "slice ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/media/SubtitleTrack$CueList$1;->val$lastTimeMs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/media/SubtitleTrack$CueList$1;->val$timeMs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_0
    :try_start_0
    new-instance v1, Landroid/media/SubtitleTrack$CueList$EntryIterator;

    iget-object v2, p0, Landroid/media/SubtitleTrack$CueList$1;->this$0:Landroid/media/SubtitleTrack$CueList;

    iget-object v3, p0, Landroid/media/SubtitleTrack$CueList$1;->this$0:Landroid/media/SubtitleTrack$CueList;

    # getter for: Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;
    invoke-static {v3}, Landroid/media/SubtitleTrack$CueList;->access$200(Landroid/media/SubtitleTrack$CueList;)Ljava/util/SortedMap;

    move-result-object v3

    iget-wide v4, p0, Landroid/media/SubtitleTrack$CueList$1;->val$lastTimeMs:J

    add-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Landroid/media/SubtitleTrack$CueList$1;->val$timeMs:J

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/media/SubtitleTrack$CueList$EntryIterator;-><init>(Landroid/media/SubtitleTrack$CueList;Ljava/util/SortedMap;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_0
    return-object v1

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Landroid/media/SubtitleTrack$CueList$EntryIterator;

    iget-object v2, p0, Landroid/media/SubtitleTrack$CueList$1;->this$0:Landroid/media/SubtitleTrack$CueList;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/media/SubtitleTrack$CueList$EntryIterator;-><init>(Landroid/media/SubtitleTrack$CueList;Ljava/util/SortedMap;)V

    goto :goto_0
.end method
