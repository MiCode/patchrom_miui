.class public Landroid/media/videoeditor/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# instance fields
.field private final mAudioBitrate:I

.field private final mAudioChannels:I

.field private final mAudioSamplingFrequency:I

.field private final mAudioType:I

.field private mAudioWaveformFilename:Ljava/lang/String;

.field private mBeginBoundaryTimeMs:J

.field private mDuckedTrackVolume:I

.field private mDuckingThreshold:I

.field private final mDurationMs:J

.field private mEndBoundaryTimeMs:J

.field private final mFilename:Ljava/lang/String;

.field private mIsDuckingEnabled:Z

.field private mLoop:Z

.field private final mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

.field private mMuted:Z

.field private mStartTimeMs:J

.field private mTimelineDurationMs:J

.field private final mUniqueId:Ljava/lang/String;

.field private mVolumePercent:I

.field private mWaveformData:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/media/videoeditor/WaveformData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, v0, v0, v0}, Landroid/media/videoeditor/AudioTrack;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "editor"    # Landroid/media/videoeditor/VideoEditor;
    .param p2, "audioTrackId"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x64

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v16}, Landroid/media/videoeditor/AudioTrack;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JJJZIZZIILjava/lang/String;)V

    .line 93
    return-void
.end method

.method constructor <init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JJJZIZZIILjava/lang/String;)V
    .locals 10
    .param p1, "editor"    # Landroid/media/videoeditor/VideoEditor;
    .param p2, "audioTrackId"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "startTimeMs"    # J
    .param p6, "beginMs"    # J
    .param p8, "endMs"    # J
    .param p10, "loop"    # Z
    .param p11, "volume"    # I
    .param p12, "muted"    # Z
    .param p13, "duckingEnabled"    # Z
    .param p14, "duckThreshold"    # I
    .param p15, "duckedTrackVolume"    # I
    .param p16, "audioWaveformFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v5, 0x0

    .line 130
    .local v5, "properties":Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 132
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found ! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 136
    :cond_0
    const-wide v6, 0x80000000L

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    .line 137
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "File size is more than 2GB"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 140
    :cond_1
    instance-of v6, p1, Landroid/media/videoeditor/VideoEditorImpl;

    if-eqz v6, :cond_2

    .line 141
    check-cast p1, Landroid/media/videoeditor/VideoEditorImpl;

    .end local p1    # "editor":Landroid/media/videoeditor/VideoEditor;
    invoke-virtual {p1}, Landroid/media/videoeditor/VideoEditorImpl;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v6

    iput-object v6, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    .line 146
    :try_start_0
    iget-object v6, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v6, p3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 150
    iget-object v6, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    invoke-virtual {v6, v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getFileType(I)I

    move-result v4

    .line 151
    .local v4, "fileType":I
    packed-switch v4, :pswitch_data_0

    .line 159
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported input file type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 143
    .end local v4    # "fileType":I
    .restart local p1    # "editor":Landroid/media/videoeditor/VideoEditor;
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "editor is not of type VideoEditorImpl"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 147
    .end local p1    # "editor":Landroid/media/videoeditor/VideoEditor;
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 162
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "fileType":I
    :pswitch_0
    iget-object v6, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v7, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioFormat:I

    invoke-virtual {v6, v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 169
    :pswitch_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unsupported Audio Codec Format in Input File"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 172
    :pswitch_2
    const-wide/16 v6, -0x1

    cmp-long v6, p8, v6

    if-nez v6, :cond_3

    .line 173
    iget v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    int-to-long v0, v6

    move-wide/from16 p8, v0

    .line 176
    :cond_3
    iput-object p2, p0, Landroid/media/videoeditor/AudioTrack;->mUniqueId:Ljava/lang/String;

    .line 177
    iput-object p3, p0, Landroid/media/videoeditor/AudioTrack;->mFilename:Ljava/lang/String;

    .line 178
    iput-wide p4, p0, Landroid/media/videoeditor/AudioTrack;->mStartTimeMs:J

    .line 179
    iget v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    int-to-long v6, v6

    iput-wide v6, p0, Landroid/media/videoeditor/AudioTrack;->mDurationMs:J

    .line 180
    iget v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioChannels:I

    iput v6, p0, Landroid/media/videoeditor/AudioTrack;->mAudioChannels:I

    .line 181
    iget v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioBitrate:I

    iput v6, p0, Landroid/media/videoeditor/AudioTrack;->mAudioBitrate:I

    .line 182
    iget v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioSamplingFrequency:I

    iput v6, p0, Landroid/media/videoeditor/AudioTrack;->mAudioSamplingFrequency:I

    .line 183
    iget v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioFormat:I

    iput v6, p0, Landroid/media/videoeditor/AudioTrack;->mAudioType:I

    .line 184
    sub-long v6, p8, p6

    iput-wide v6, p0, Landroid/media/videoeditor/AudioTrack;->mTimelineDurationMs:J

    .line 185
    move/from16 v0, p11

    iput v0, p0, Landroid/media/videoeditor/AudioTrack;->mVolumePercent:I

    .line 187
    move-wide/from16 v0, p6

    iput-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mBeginBoundaryTimeMs:J

    .line 188
    move-wide/from16 v0, p8

    iput-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mEndBoundaryTimeMs:J

    .line 190
    move/from16 v0, p10

    iput-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mLoop:Z

    .line 191
    move/from16 v0, p12

    iput-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mMuted:Z

    .line 192
    move/from16 v0, p13

    iput-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mIsDuckingEnabled:Z

    .line 193
    move/from16 v0, p14

    iput v0, p0, Landroid/media/videoeditor/AudioTrack;->mDuckingThreshold:I

    .line 194
    move/from16 v0, p15

    iput v0, p0, Landroid/media/videoeditor/AudioTrack;->mDuckedTrackVolume:I

    .line 196
    move-object/from16 v0, p16

    iput-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    .line 197
    if-eqz p16, :cond_4

    .line 198
    new-instance v6, Ljava/lang/ref/SoftReference;

    new-instance v7, Landroid/media/videoeditor/WaveformData;

    move-object/from16 v0, p16

    invoke-direct {v7, v0}, Landroid/media/videoeditor/WaveformData;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Landroid/media/videoeditor/AudioTrack;->mWaveformData:Ljava/lang/ref/SoftReference;

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_4
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/media/videoeditor/AudioTrack;->mWaveformData:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 162
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public disableDucking()V
    .locals 2

    .prologue
    .line 446
    iget-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mIsDuckingEnabled:Z

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mIsDuckingEnabled:Z

    .line 453
    :cond_0
    return-void
.end method

.method public disableLoop()V
    .locals 2

    .prologue
    .line 424
    iget-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mLoop:Z

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mLoop:Z

    .line 431
    :cond_0
    return-void
.end method

.method public enableDucking(II)V
    .locals 3
    .param p1, "threshold"    # I
    .param p2, "duckedTrackVolume"    # I

    .prologue
    const/4 v1, 0x1

    .line 466
    if-ltz p1, :cond_0

    const/16 v0, 0x5a

    if-le p1, v0, :cond_1

    .line 467
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid threshold value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_1
    if-ltz p2, :cond_2

    const/16 v0, 0x64

    if-le p2, v0, :cond_3

    .line 471
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid duckedTrackVolume value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_3
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 480
    iput p1, p0, Landroid/media/videoeditor/AudioTrack;->mDuckingThreshold:I

    .line 481
    iput p2, p0, Landroid/media/videoeditor/AudioTrack;->mDuckedTrackVolume:I

    .line 482
    iput-boolean v1, p0, Landroid/media/videoeditor/AudioTrack;->mIsDuckingEnabled:Z

    .line 483
    return-void
.end method

.method public enableLoop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 411
    iget-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mLoop:Z

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 416
    iput-boolean v1, p0, Landroid/media/videoeditor/AudioTrack;->mLoop:Z

    .line 418
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 645
    instance-of v0, p1, Landroid/media/videoeditor/AudioTrack;

    if-nez v0, :cond_0

    .line 646
    const/4 v0, 0x0

    .line 648
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mUniqueId:Ljava/lang/String;

    check-cast p1, Landroid/media/videoeditor/AudioTrack;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v1, p1, Landroid/media/videoeditor/AudioTrack;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public extractAudioWaveform(Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;)V
    .locals 11
    .param p1, "listener"    # Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 526
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getProjectPath()Ljava/lang/String;

    move-result-object v10

    .line 531
    .local v10, "projectPath":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/audioWaveformFile-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 540
    .local v3, "audioWaveFilename":Ljava/lang/String;
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v1, p0, Landroid/media/videoeditor/AudioTrack;->mAudioType:I

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioCodecType(I)I

    move-result v9

    .line 541
    .local v9, "codecType":I
    packed-switch v9, :pswitch_data_0

    .line 571
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported codec type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :pswitch_1
    const/4 v4, 0x5

    .line 545
    .local v4, "frameDuration":I
    const/16 v6, 0xa0

    .line 576
    .local v6, "sampleCount":I
    :goto_0
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget-object v1, p0, Landroid/media/videoeditor/AudioTrack;->mUniqueId:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/videoeditor/AudioTrack;->mFilename:Ljava/lang/String;

    const/4 v5, 0x2

    move-object v7, p1

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateAudioGraph(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/media/videoeditor/ExtractAudioWaveformProgressListener;Z)V

    .line 587
    iput-object v3, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    .line 589
    .end local v3    # "audioWaveFilename":Ljava/lang/String;
    .end local v4    # "frameDuration":I
    .end local v6    # "sampleCount":I
    .end local v9    # "codecType":I
    .end local v10    # "projectPath":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Landroid/media/videoeditor/WaveformData;

    iget-object v2, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/videoeditor/WaveformData;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mWaveformData:Ljava/lang/ref/SoftReference;

    .line 590
    return-void

    .line 550
    .restart local v3    # "audioWaveFilename":Ljava/lang/String;
    .restart local v9    # "codecType":I
    .restart local v10    # "projectPath":Ljava/lang/String;
    :pswitch_2
    const/16 v4, 0xa

    .line 552
    .restart local v4    # "frameDuration":I
    const/16 v6, 0x140

    .line 553
    .restart local v6    # "sampleCount":I
    goto :goto_0

    .line 557
    .end local v4    # "frameDuration":I
    .end local v6    # "sampleCount":I
    :pswitch_3
    const/16 v4, 0x20

    .line 559
    .restart local v4    # "frameDuration":I
    const/16 v6, 0x400

    .line 560
    .restart local v6    # "sampleCount":I
    goto :goto_0

    .line 564
    .end local v4    # "frameDuration":I
    .end local v6    # "sampleCount":I
    :pswitch_4
    const/16 v4, 0x24

    .line 566
    .restart local v4    # "frameDuration":I
    const/16 v6, 0x480

    .line 567
    .restart local v6    # "sampleCount":I
    goto :goto_0

    .line 541
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getAudioBitrate()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioBitrate:I

    return v0
.end method

.method public getAudioChannels()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioChannels:I

    return v0
.end method

.method public getAudioSamplingFrequency()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioSamplingFrequency:I

    return v0
.end method

.method public getAudioType()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioType:I

    return v0
.end method

.method getAudioWaveformFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getBoundaryBeginTime()J
    .locals 2

    .prologue
    .line 392
    iget-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mBeginBoundaryTimeMs:J

    return-wide v0
.end method

.method public getBoundaryEndTime()J
    .locals 2

    .prologue
    .line 401
    iget-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mEndBoundaryTimeMs:J

    return-wide v0
.end method

.method public getDuckedTrackVolume()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Landroid/media/videoeditor/AudioTrack;->mDuckedTrackVolume:I

    return v0
.end method

.method public getDuckingThreshhold()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Landroid/media/videoeditor/AudioTrack;->mDuckingThreshold:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 341
    iget-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mDurationMs:J

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 330
    iget-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mStartTimeMs:J

    return-wide v0
.end method

.method public getTimelineDuration()J
    .locals 2

    .prologue
    .line 350
    iget-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mTimelineDurationMs:J

    return-wide v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Landroid/media/videoeditor/AudioTrack;->mVolumePercent:I

    return v0
.end method

.method public getWaveformData()Landroid/media/videoeditor/WaveformData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 620
    iget-object v3, p0, Landroid/media/videoeditor/AudioTrack;->mWaveformData:Ljava/lang/ref/SoftReference;

    if-nez v3, :cond_1

    move-object v1, v2

    .line 636
    :cond_0
    :goto_0
    return-object v1

    .line 624
    :cond_1
    iget-object v3, p0, Landroid/media/videoeditor/AudioTrack;->mWaveformData:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/WaveformData;

    .line 625
    .local v1, "waveformData":Landroid/media/videoeditor/WaveformData;
    if-nez v1, :cond_0

    .line 627
    iget-object v3, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 629
    :try_start_0
    new-instance v1, Landroid/media/videoeditor/WaveformData;

    .end local v1    # "waveformData":Landroid/media/videoeditor/WaveformData;
    iget-object v2, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/videoeditor/WaveformData;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    .restart local v1    # "waveformData":Landroid/media/videoeditor/WaveformData;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/media/videoeditor/AudioTrack;->mWaveformData:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 630
    .end local v1    # "waveformData":Landroid/media/videoeditor/WaveformData;
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/io/IOException;
    throw v0

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "waveformData":Landroid/media/videoeditor/WaveformData;
    :cond_2
    move-object v1, v2

    .line 636
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method invalidate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 605
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 606
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 607
    iput-object v2, p0, Landroid/media/videoeditor/AudioTrack;->mAudioWaveformFilename:Ljava/lang/String;

    .line 608
    iput-object v2, p0, Landroid/media/videoeditor/AudioTrack;->mWaveformData:Ljava/lang/ref/SoftReference;

    .line 610
    :cond_0
    return-void
.end method

.method public isDuckingEnabled()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mIsDuckingEnabled:Z

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mLoop:Z

    return v0
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Landroid/media/videoeditor/AudioTrack;->mMuted:Z

    return v0
.end method

.method public setExtractBoundaries(JJ)V
    .locals 4
    .param p1, "beginMs"    # J
    .param p3, "endMs"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 362
    iget-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mDurationMs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid start time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    iget-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mDurationMs:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    .line 366
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_1
    cmp-long v0, p1, v2

    if-gez v0, :cond_2

    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid start time; is < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_2
    cmp-long v0, p3, v2

    if-gez v0, :cond_3

    .line 372
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid end time; is < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_3
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 380
    iput-wide p1, p0, Landroid/media/videoeditor/AudioTrack;->mBeginBoundaryTimeMs:J

    .line 381
    iput-wide p3, p0, Landroid/media/videoeditor/AudioTrack;->mEndBoundaryTimeMs:J

    .line 383
    iget-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mEndBoundaryTimeMs:J

    iget-wide v2, p0, Landroid/media/videoeditor/AudioTrack;->mBeginBoundaryTimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/videoeditor/AudioTrack;->mTimelineDurationMs:J

    .line 384
    return-void
.end method

.method public setMute(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 309
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 310
    iput-boolean p1, p0, Landroid/media/videoeditor/AudioTrack;->mMuted:Z

    .line 311
    return-void
.end method

.method public setVolume(I)V
    .locals 2
    .param p1, "volumePercent"    # I

    .prologue
    .line 273
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Volume set exceeds maximum allowed value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    if-gez p1, :cond_1

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Volume "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_1
    iget-object v0, p0, Landroid/media/videoeditor/AudioTrack;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 286
    iput p1, p0, Landroid/media/videoeditor/AudioTrack;->mVolumePercent:I

    .line 287
    return-void
.end method
