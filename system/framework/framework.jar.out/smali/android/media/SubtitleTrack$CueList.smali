.class Landroid/media/SubtitleTrack$CueList;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SubtitleTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CueList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SubtitleTrack$CueList$EntryIterator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CueList"


# instance fields
.field public DEBUG:Z

.field private mCues:Ljava/util/SortedMap;
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


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SubtitleTrack$CueList;->DEBUG:Z

    .line 561
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    .line 562
    return-void
.end method

.method static synthetic access$200(Landroid/media/SubtitleTrack$CueList;)Ljava/util/SortedMap;
    .locals 1
    .param p0, "x0"    # Landroid/media/SubtitleTrack$CueList;

    .prologue
    .line 381
    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/SubtitleTrack$CueList;Landroid/media/SubtitleTrack$Cue;J)V
    .locals 0
    .param p0, "x0"    # Landroid/media/SubtitleTrack$CueList;
    .param p1, "x1"    # Landroid/media/SubtitleTrack$Cue;
    .param p2, "x2"    # J

    .prologue
    .line 381
    invoke-direct {p0, p1, p2, p3}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    return-void
.end method

.method private addEvent(Landroid/media/SubtitleTrack$Cue;J)Z
    .locals 3
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;
    .param p2, "timeMs"    # J

    .prologue
    .line 388
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 389
    .local v0, "cues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    if-nez v0, :cond_1

    .line 390
    new-instance v0, Ljava/util/Vector;

    .end local v0    # "cues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 391
    .restart local v0    # "cues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 398
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 392
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeEvent(Landroid/media/SubtitleTrack$Cue;J)V
    .locals 3
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;
    .param p2, "timeMs"    # J

    .prologue
    .line 402
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 403
    .local v0, "cues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 406
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Landroid/media/SubtitleTrack$Cue;)V
    .locals 11
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;

    .prologue
    .line 413
    iget-wide v7, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    iget-wide v9, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-wide v7, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    invoke-direct {p0, p1, v7, v8}, Landroid/media/SubtitleTrack$CueList;->addEvent(Landroid/media/SubtitleTrack$Cue;J)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 420
    iget-wide v2, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    .line 421
    .local v2, "lastTimeMs":J
    iget-object v7, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v7, :cond_3

    .line 422
    iget-object v0, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v4, :cond_3

    aget-wide v5, v0, v1

    .line 423
    .local v5, "timeMs":J
    cmp-long v7, v5, v2

    if-lez v7, :cond_2

    iget-wide v7, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_2

    .line 424
    invoke-direct {p0, p1, v5, v6}, Landroid/media/SubtitleTrack$CueList;->addEvent(Landroid/media/SubtitleTrack$Cue;J)Z

    .line 425
    move-wide v2, v5

    .line 422
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 430
    .end local v0    # "arr$":[J
    .end local v1    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "timeMs":J
    :cond_3
    iget-wide v7, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    invoke-direct {p0, p1, v7, v8}, Landroid/media/SubtitleTrack$CueList;->addEvent(Landroid/media/SubtitleTrack$Cue;J)Z

    goto :goto_0
.end method

.method public entriesBetween(JJ)Ljava/lang/Iterable;
    .locals 6
    .param p1, "lastTimeMs"    # J
    .param p3, "timeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 445
    new-instance v0, Landroid/media/SubtitleTrack$CueList$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/SubtitleTrack$CueList$1;-><init>(Landroid/media/SubtitleTrack$CueList;JJ)V

    return-object v0
.end method

.method public nextTimeAfter(J)J
    .locals 7
    .param p1, "timeMs"    # J

    .prologue
    const-wide/16 v3, -0x1

    .line 460
    const/4 v1, 0x0

    .line 462
    .local v1, "tail":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;>;"
    :try_start_0
    iget-object v2, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    const-wide/16 v5, 0x1

    add-long/2addr v5, p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    .line 463
    if-eqz v1, :cond_0

    .line 464
    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 471
    :goto_0
    return-wide v2

    :cond_0
    move-wide v2, v3

    .line 466
    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    move-wide v2, v3

    .line 469
    goto :goto_0

    .line 470
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/util/NoSuchElementException;
    move-wide v2, v3

    .line 471
    goto :goto_0
.end method

.method public remove(Landroid/media/SubtitleTrack$Cue;)V
    .locals 7
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;

    .prologue
    .line 434
    iget-wide v5, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    invoke-direct {p0, p1, v5, v6}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    .line 435
    iget-object v5, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v5, :cond_0

    .line 436
    iget-object v0, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v3, v0, v1

    .line 437
    .local v3, "timeMs":J
    invoke-direct {p0, p1, v3, v4}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    .end local v0    # "arr$":[J
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "timeMs":J
    :cond_0
    iget-wide v5, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    invoke-direct {p0, p1, v5, v6}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    .line 441
    return-void
.end method
