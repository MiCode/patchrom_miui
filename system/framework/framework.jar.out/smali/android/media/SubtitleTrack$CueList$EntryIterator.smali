.class Landroid/media/SubtitleTrack$CueList$EntryIterator;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SubtitleTrack$CueList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Long;",
        "Landroid/media/SubtitleTrack$Cue;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mCurrentTimeMs:J

.field private mDone:Z

.field private mLastEntry:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field private mLastListIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field private mListIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field private mRemainingCues:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/media/SubtitleTrack$CueList;


# direct methods
.method public constructor <init>(Landroid/media/SubtitleTrack$CueList;Ljava/util/SortedMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 520
    .local p2, "cues":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;>;"
    iput-object p1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->this$0:Landroid/media/SubtitleTrack$CueList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iget-boolean v0, p1, Landroid/media/SubtitleTrack$CueList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CueList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    iput-object p2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    .line 524
    invoke-direct {p0}, Landroid/media/SubtitleTrack$CueList$EntryIterator;->nextKey()V

    .line 525
    return-void
.end method

.method private nextKey()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 530
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    if-nez v1, :cond_1

    .line 531
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Ljava/util/NoSuchElementException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mDone:Z

    .line 545
    iput-object v6, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    .line 546
    iput-object v6, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    .line 550
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    return-void

    .line 533
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mCurrentTimeMs:J

    .line 534
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    iget-wide v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mCurrentTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 537
    :try_start_2
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;

    iget-wide v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mCurrentTimeMs:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iput-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 542
    :goto_1
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mDone:Z
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0

    .line 549
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 539
    :catch_1
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mRemainingCues:Ljava/util/SortedMap;
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mDone:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    iget-boolean v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mDone:Z

    if-eqz v0, :cond_0

    .line 484
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_0
    new-instance v0, Landroid/util/Pair;

    iget-wide v1, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mCurrentTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    .line 488
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    .line 489
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mListIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 490
    invoke-direct {p0}, Landroid/media/SubtitleTrack$CueList$EntryIterator;->nextKey()V

    .line 492
    :cond_1
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 475
    invoke-virtual {p0}, Landroid/media/SubtitleTrack$CueList$EntryIterator;->next()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 11

    .prologue
    .line 498
    iget-object v6, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/media/SubtitleTrack$Cue;

    iget-wide v7, v6, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-object v6, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v6, v7, v9

    if-eqz v6, :cond_1

    .line 500
    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 504
    :cond_1
    iget-object v6, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 505
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastListIterator:Ljava/util/Iterator;

    .line 506
    iget-object v6, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->this$0:Landroid/media/SubtitleTrack$CueList;

    # getter for: Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;
    invoke-static {v6}, Landroid/media/SubtitleTrack$CueList;->access$200(Landroid/media/SubtitleTrack$CueList;)Ljava/util/SortedMap;

    move-result-object v6

    iget-object v7, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v6, v7}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 507
    iget-object v6, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->this$0:Landroid/media/SubtitleTrack$CueList;

    # getter for: Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;
    invoke-static {v6}, Landroid/media/SubtitleTrack$CueList;->access$200(Landroid/media/SubtitleTrack$CueList;)Ljava/util/SortedMap;

    move-result-object v6

    iget-object v7, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v6, v7}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_2
    iget-object v6, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->mLastEntry:Landroid/util/Pair;

    iget-object v1, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/media/SubtitleTrack$Cue;

    .line 512
    .local v1, "cue":Landroid/media/SubtitleTrack$Cue;
    iget-object v6, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->this$0:Landroid/media/SubtitleTrack$CueList;

    iget-wide v7, v1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    # invokes: Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V
    invoke-static {v6, v1, v7, v8}, Landroid/media/SubtitleTrack$CueList;->access$300(Landroid/media/SubtitleTrack$CueList;Landroid/media/SubtitleTrack$Cue;J)V

    .line 513
    iget-object v6, v1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v6, :cond_3

    .line 514
    iget-object v0, v1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    .local v0, "arr$":[J
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-wide v4, v0, v2

    .line 515
    .local v4, "timeMs":J
    iget-object v6, p0, Landroid/media/SubtitleTrack$CueList$EntryIterator;->this$0:Landroid/media/SubtitleTrack$CueList;

    # invokes: Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V
    invoke-static {v6, v1, v4, v5}, Landroid/media/SubtitleTrack$CueList;->access$300(Landroid/media/SubtitleTrack$CueList;Landroid/media/SubtitleTrack$Cue;J)V

    .line 514
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 518
    .end local v0    # "arr$":[J
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "timeMs":J
    :cond_3
    return-void
.end method
