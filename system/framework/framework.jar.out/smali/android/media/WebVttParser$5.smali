.class Landroid/media/WebVttParser$5;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttParser$Phase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Landroid/media/WebVttParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 833
    const-class v0, Landroid/media/WebVttParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/media/WebVttParser$5;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/media/WebVttParser;)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 21
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 836
    const-string v18, "-->"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 837
    .local v5, "arrowAt":I
    if-gez v5, :cond_0

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v18 .. v19}, Landroid/media/WebVttParser;->access$902(Landroid/media/WebVttParser;Landroid/media/TextTrackCue;)Landroid/media/TextTrackCue;

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v19, v0

    # getter for: Landroid/media/WebVttParser;->mParseCueId:Landroid/media/WebVttParser$Phase;
    invoke-static/range {v19 .. v19}, Landroid/media/WebVttParser;->access$600(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v19

    # setter for: Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;
    invoke-static/range {v18 .. v19}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    .line 935
    :goto_0
    return-void

    .line 843
    :cond_0
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 845
    .local v16, "start":Ljava/lang/String;
    add-int/lit8 v18, v5, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "^\\s+"

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "\\s+"

    const-string v20, " "

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 847
    .local v13, "rest":Ljava/lang/String;
    const/16 v18, 0x20

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 848
    .local v15, "spaceAt":I
    if-lez v15, :cond_2

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 849
    .local v8, "end":Ljava/lang/String;
    :goto_1
    if-lez v15, :cond_3

    add-int/lit8 v18, v15, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 851
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v18 .. v18}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v18

    invoke-static/range {v16 .. v16}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v18 .. v18}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v18

    invoke-static {v8}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 853
    const-string v18, " +"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/String;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3
    if-ge v9, v10, :cond_15

    aget-object v14, v4, v9

    .line 854
    .local v14, "setting":Ljava/lang/String;
    const/16 v18, 0x3a

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 855
    .local v6, "colonAt":I
    if-lez v6, :cond_1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_4

    .line 853
    :cond_1
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "colonAt":I
    .end local v8    # "end":Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v14    # "setting":Ljava/lang/String;
    :cond_2
    move-object v8, v13

    .line 848
    goto :goto_1

    .line 849
    .restart local v8    # "end":Ljava/lang/String;
    :cond_3
    const-string v13, ""

    goto :goto_2

    .line 858
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v6    # "colonAt":I
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    .restart local v14    # "setting":Ljava/lang/String;
    :cond_4
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 859
    .local v12, "name":Ljava/lang/String;
    add-int/lit8 v18, v6, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 861
    .local v17, "value":Ljava/lang/String;
    const-string/jumbo v18, "region"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v18 .. v18}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    goto :goto_4

    .line 863
    :cond_5
    const-string/jumbo v18, "vertical"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 864
    const-string/jumbo v18, "rl"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v18 .. v18}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v18

    const/16 v19, 0x65

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/media/TextTrackCue;->mWritingDirection:I

    goto :goto_4

    .line 867
    :cond_6
    const-string v18, "lr"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v18 .. v18}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v18

    const/16 v19, 0x66

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/media/TextTrackCue;->mWritingDirection:I

    goto :goto_4

    .line 871
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    const-string v19, "cue setting"

    const-string v20, "has invalid value"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v17

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v12, v2, v3}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 873
    :cond_8
    const-string v18, "line"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 877
    :try_start_0
    sget-boolean v18, Landroid/media/WebVttParser$5;->$assertionsDisabled:Z

    if-nez v18, :cond_9

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-ltz v18, :cond_9

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :catch_0
    move-exception v7

    .line 892
    .local v7, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    const-string v19, "cue setting"

    const-string v20, "is not numeric or percentage"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v17

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v12, v2, v3}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 878
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    :try_start_1
    const-string v18, "%"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 879
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 881
    .local v11, "linePosition":I
    if-ltz v11, :cond_a

    const/16 v18, 0x64

    move/from16 v0, v18

    if-le v11, v0, :cond_b

    .line 882
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    const-string v19, "cue setting"

    const-string v20, "is out of range"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v17

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v12, v2, v3}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 885
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v18 .. v18}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v18 .. v18}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v18

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    goto/16 :goto_4

    .line 888
    .end local v11    # "linePosition":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v18 .. v18}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v18 .. v18}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 895
    :cond_d
    const-string/jumbo v18, "position"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 897
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v18 .. v18}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v18

    invoke-static/range {v17 .. v17}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/media/TextTrackCue;->mTextPosition:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 898
    :catch_1
    move-exception v7

    .line 899
    .restart local v7    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    const-string v19, "cue setting"

    const-string v20, "is not numeric or percentage"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v17

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v12, v2, v3}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 902
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    const-string/jumbo v18, "size"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 904
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v18 .. v18}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v18

    invoke-static/range {v17 .. v17}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/media/TextTrackCue;->mSize:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    .line 905
    :catch_2
    move-exception v7

    .line 906
    .restart local v7    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    const-string v19, "cue setting"

    const-string v20, "is not numeric or percentage"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v17

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v12, v2, v3}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 909
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_f
    const-string v18, "align"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 910
    const-string/jumbo v18, "start"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v18 .. v18}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v18

    const/16 v19, 0xc9

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_4

    .line 912
    :cond_10
    const-string/jumbo v18, "middle"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v18 .. v18}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v18

    const/16 v19, 0xc8

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_4

    .line 914
    :cond_11
    const-string v18, "end"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v18 .. v18}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v18

    const/16 v19, 0xca

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_4

    .line 916
    :cond_12
    const-string v18, "left"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v18 .. v18}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v18

    const/16 v19, 0xcb

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_4

    .line 918
    :cond_13
    const-string/jumbo v18, "right"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v18 .. v18}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v18

    const/16 v19, 0xcc

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_4

    .line 921
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    const-string v19, "cue setting"

    const-string v20, "has invalid value"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v17

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v12, v2, v3}, Landroid/media/WebVttParser;->access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 927
    .end local v6    # "colonAt":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "setting":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v18 .. v18}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    move-object/from16 v18, v0

    if-nez v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v18 .. v18}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/media/TextTrackCue;->mSize:I

    move/from16 v18, v0

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v18 .. v18}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/media/TextTrackCue;->mWritingDirection:I

    move/from16 v18, v0

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_17

    .line 931
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static/range {v18 .. v18}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v18

    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 934
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v19, v0

    # getter for: Landroid/media/WebVttParser;->mParseCueText:Landroid/media/WebVttParser$Phase;
    invoke-static/range {v19 .. v19}, Landroid/media/WebVttParser;->access$1000(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v19

    # setter for: Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;
    invoke-static/range {v18 .. v19}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    goto/16 :goto_0
.end method
