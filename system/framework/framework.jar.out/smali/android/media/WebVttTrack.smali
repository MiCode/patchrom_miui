.class Landroid/media/WebVttTrack;
.super Landroid/media/SubtitleTrack;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttCueListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WebVttTrack"


# instance fields
.field private mCurrentRunID:Ljava/lang/Long;

.field private final mExtractor:Landroid/media/UnstyledTextExtractor;

.field private final mParser:Landroid/media/WebVttParser;

.field private final mRegions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/TextTrackRegion;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenderingWidget:Landroid/media/WebVttRenderingWidget;

.field private final mTimestamps:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mTokenizer:Landroid/media/Tokenizer;


# direct methods
.method constructor <init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V
    .locals 2
    .param p1, "renderingWidget"    # Landroid/media/WebVttRenderingWidget;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 992
    invoke-direct {p0, p2}, Landroid/media/SubtitleTrack;-><init>(Landroid/media/MediaFormat;)V

    .line 980
    new-instance v0, Landroid/media/WebVttParser;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser;-><init>(Landroid/media/WebVttCueListener;)V

    iput-object v0, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    .line 981
    new-instance v0, Landroid/media/UnstyledTextExtractor;

    invoke-direct {v0}, Landroid/media/UnstyledTextExtractor;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttTrack;->mExtractor:Landroid/media/UnstyledTextExtractor;

    .line 983
    new-instance v0, Landroid/media/Tokenizer;

    iget-object v1, p0, Landroid/media/WebVttTrack;->mExtractor:Landroid/media/UnstyledTextExtractor;

    invoke-direct {v0, v1}, Landroid/media/Tokenizer;-><init>(Landroid/media/Tokenizer$OnTokenListener;)V

    iput-object v0, p0, Landroid/media/WebVttTrack;->mTokenizer:Landroid/media/Tokenizer;

    .line 984
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    .line 987
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    .line 994
    iput-object p1, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    .line 995
    return-void
.end method


# virtual methods
.method public bridge synthetic getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .locals 1

    .prologue
    .line 977
    invoke-virtual {p0}, Landroid/media/WebVttTrack;->getRenderingWidget()Landroid/media/WebVttRenderingWidget;

    move-result-object v0

    return-object v0
.end method

.method public getRenderingWidget()Landroid/media/WebVttRenderingWidget;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    return-object v0
.end method

.method public onCueParsed(Landroid/media/TextTrackCue;)V
    .locals 17
    .param p1, "cue"    # Landroid/media/TextTrackCue;

    .prologue
    .line 1024
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    monitor-enter v12

    .line 1026
    :try_start_0
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    .line 1027
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/TextTrackRegion;

    move-object/from16 v0, p1

    iput-object v11, v0, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    .line 1030
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/media/WebVttTrack;->DEBUG:Z

    if-eqz v11, :cond_1

    const-string v11, "WebVttTrack"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adding cue "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/WebVttTrack;->mTokenizer:Landroid/media/Tokenizer;

    invoke-virtual {v11}, Landroid/media/Tokenizer;->reset()V

    .line 1034
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v9, v1, v3

    .line 1035
    .local v9, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/WebVttTrack;->mTokenizer:Landroid/media/Tokenizer;

    invoke-virtual {v11, v9}, Landroid/media/Tokenizer;->tokenize(Ljava/lang/String;)V

    .line 1034
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1037
    .end local v9    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/WebVttTrack;->mExtractor:Landroid/media/UnstyledTextExtractor;

    invoke-virtual {v11}, Landroid/media/UnstyledTextExtractor;->getText()[[Landroid/media/TextTrackCueSpan;

    move-result-object v11

    move-object/from16 v0, p1

    iput-object v11, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 1038
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/media/WebVttTrack;->DEBUG:Z

    if-eqz v11, :cond_3

    const-string v11, "WebVttTrack"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/media/TextTrackCue;->appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " simplified to: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/media/TextTrackCue;->appendLinesToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_3
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .local v1, "arr$":[[Landroid/media/TextTrackCueSpan;
    array-length v6, v1

    const/4 v3, 0x0

    move v4, v3

    .end local v1    # "arr$":[[Landroid/media/TextTrackCueSpan;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_6

    aget-object v8, v1, v4

    .line 1045
    .local v8, "line":[Landroid/media/TextTrackCueSpan;
    move-object v2, v8

    .local v2, "arr$":[Landroid/media/TextTrackCueSpan;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v7, :cond_5

    aget-object v10, v2, v3

    .line 1046
    .local v10, "span":Landroid/media/TextTrackCueSpan;
    iget-wide v13, v10, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    move-object/from16 v0, p1

    iget-wide v15, v0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    cmp-long v11, v13, v15

    if-lez v11, :cond_4

    iget-wide v13, v10, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    move-object/from16 v0, p1

    iget-wide v15, v0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    cmp-long v11, v13, v15

    if-gez v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    iget-wide v13, v10, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1049
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    iget-wide v13, v10, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1045
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1044
    .end local v10    # "span":Landroid/media/TextTrackCueSpan;
    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_1

    .line 1054
    .end local v2    # "arr$":[Landroid/media/TextTrackCueSpan;
    .end local v7    # "len$":I
    .end local v8    # "line":[Landroid/media/TextTrackCueSpan;
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    if-lez v11, :cond_8

    .line 1055
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    new-array v11, v11, [J

    move-object/from16 v0, p1

    iput-object v11, v0, Landroid/media/TextTrackCue;->mInnerTimesMs:[J

    .line 1056
    const/4 v5, 0x0

    .local v5, "ix":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    if-ge v5, v11, :cond_7

    .line 1057
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/media/TextTrackCue;->mInnerTimesMs:[J

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v11, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    aput-wide v14, v13, v5

    .line 1056
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1059
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->clear()V

    .line 1064
    .end local v5    # "ix":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object/from16 v0, p1

    iput-wide v13, v0, Landroid/media/TextTrackCue;->mRunID:J

    .line 1065
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1067
    invoke-virtual/range {p0 .. p1}, Landroid/media/WebVttTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z

    .line 1068
    return-void

    .line 1061
    :cond_8
    const/4 v11, 0x0

    :try_start_1
    move-object/from16 v0, p1

    iput-object v11, v0, Landroid/media/TextTrackCue;->mInnerTimesMs:[J

    goto :goto_4

    .line 1065
    .end local v4    # "i$":I
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11
.end method

.method public onData(Ljava/lang/String;ZJ)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "eos"    # Z
    .param p3, "runID"    # J

    .prologue
    .line 1005
    iget-object v1, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    monitor-enter v1

    .line 1006
    :try_start_0
    iget-object v0, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, p3, v2

    if-eqz v0, :cond_0

    .line 1007
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Run #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in progress.  Cannot process run #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1019
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1011
    :cond_0
    :try_start_1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    .line 1012
    iget-object v0, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    invoke-virtual {v0, p1}, Landroid/media/WebVttParser;->parse(Ljava/lang/String;)V

    .line 1013
    if-eqz p2, :cond_1

    .line 1014
    invoke-virtual {p0, p3, p4}, Landroid/media/WebVttTrack;->finishedRun(J)V

    .line 1015
    iget-object v0, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    invoke-virtual {v0}, Landroid/media/WebVttParser;->eos()V

    .line 1016
    iget-object v0, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1017
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    .line 1019
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1020
    return-void
.end method

.method public onRegionParsed(Landroid/media/TextTrackRegion;)V
    .locals 3
    .param p1, "region"    # Landroid/media/TextTrackRegion;

    .prologue
    .line 1072
    iget-object v1, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    monitor-enter v1

    .line 1073
    :try_start_0
    iget-object v0, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    iget-object v2, p1, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    monitor-exit v1

    .line 1075
    return-void

    .line 1074
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateView(Ljava/util/Vector;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1079
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    iget-boolean v1, p0, Landroid/media/WebVttTrack;->mVisible:Z

    if-nez v1, :cond_0

    .line 1095
    :goto_0
    return-void

    .line 1084
    :cond_0
    iget-boolean v1, p0, Landroid/media/WebVttTrack;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/WebVttTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v1, :cond_1

    .line 1086
    :try_start_0
    const-string v1, "WebVttTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/WebVttTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/media/MediaTimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms the active cues are:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    invoke-virtual {v1, p1}, Landroid/media/WebVttRenderingWidget;->setActiveCues(Ljava/util/Vector;)V

    goto :goto_0

    .line 1089
    :catch_0
    move-exception v0

    .line 1090
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "WebVttTrack"

    const-string v2, "at (illegal state) the active cues are:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
