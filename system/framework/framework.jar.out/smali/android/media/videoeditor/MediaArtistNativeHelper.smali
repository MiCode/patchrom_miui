.class Landroid/media/videoeditor/MediaArtistNativeHelper;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/videoeditor/MediaArtistNativeHelper$NativeGetPixelsListCallback;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClips;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioEffect;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionBehaviour;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioTransition;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$SlideTransitionSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$SlideDirection;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoTransition;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoEffect;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoFrameRate;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoFrameSize;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$VideoFormat;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$Result;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$MediaRendering;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$FileType;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$Bitrate;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSamplingFrequency;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$AudioFormat;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$Version;,
        Landroid/media/videoeditor/MediaArtistNativeHelper$OnProgressUpdateListener;
    }
.end annotation


# static fields
.field private static final AUDIO_TRACK_PCM_FILE:Ljava/lang/String; = "AudioPcm.pcm"

.field private static final MAX_THUMBNAIL_PERMITTED:I = 0x8

.field public static final PROCESSING_AUDIO_PCM:I = 0x1

.field public static final PROCESSING_EXPORT:I = 0x14

.field public static final PROCESSING_INTERMEDIATE1:I = 0xb

.field public static final PROCESSING_INTERMEDIATE2:I = 0xc

.field public static final PROCESSING_INTERMEDIATE3:I = 0xd

.field public static final PROCESSING_KENBURNS:I = 0x3

.field public static final PROCESSING_NONE:I = 0x0

.field public static final PROCESSING_TRANSITION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaArtistNativeHelper"

.field public static final TASK_ENCODING:I = 0x2

.field public static final TASK_LOADING_SETTINGS:I = 0x1

.field private static final sResizePaint:Landroid/graphics/Paint;


# instance fields
.field private mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

.field private mAudioTrack:Landroid/media/videoeditor/AudioTrack;

.field private mAudioTrackPCMFilePath:Ljava/lang/String;

.field private mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

.field private mErrorFlagSet:Z

.field private mExportAudioCodec:I

.field private mExportFilename:Ljava/lang/String;

.field private mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

.field private mExportVideoCodec:I

.field private mExtractAudioWaveformProgressListener:Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;

.field private mInvalidatePreviewArray:Z

.field private mIsFirstProgress:Z

.field private final mLock:Ljava/util/concurrent/Semaphore;

.field private mManualEditContext:I

.field private mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

.field private mOutputFilename:Ljava/lang/String;

.field private mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

.field private mPreviewProgress:J

.field private mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

.field private mProcessingObject:Ljava/lang/Object;

.field private mProcessingState:I

.field private mProgressToApp:I

.field private final mProjectPath:Ljava/lang/String;

.field private mRegenerateAudio:Z

.field private mRenderPreviewOverlayFile:Ljava/lang/String;

.field private mRenderPreviewRenderingMode:I

.field private mStoryBoardSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

.field private mTotalClips:I

.field private final mVideoEditor:Landroid/media/videoeditor/VideoEditor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "videoeditor_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->sResizePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Semaphore;Landroid/media/videoeditor/VideoEditor;)V
    .locals 3
    .param p1, "projectPath"    # Ljava/lang/String;
    .param p2, "lock"    # Ljava/util/concurrent/Semaphore;
    .param p3, "veObj"    # Landroid/media/videoeditor/VideoEditor;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    .line 74
    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    .line 76
    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    .line 78
    iput-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    .line 80
    iput-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRegenerateAudio:Z

    .line 82
    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    .line 83
    iput v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoCodec:I

    .line 84
    iput v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportAudioCodec:I

    .line 116
    iput v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    .line 118
    iput-boolean v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mErrorFlagSet:Z

    .line 1725
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    .line 1726
    if-eqz p3, :cond_1

    .line 1727
    iput-object p3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    .line 1732
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mStoryBoardSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    if-nez v0, :cond_0

    .line 1733
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    iput-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mStoryBoardSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    .line 1736
    :cond_0
    iput-object p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mLock:Ljava/util/concurrent/Semaphore;

    .line 1738
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    const-string/jumbo v1, "null"

    invoke-direct {p0, v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->_init(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    .line 1740
    return-void

    .line 1729
    :cond_1
    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    .line 1730
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "video editor object is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native _init(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method static synthetic access$000()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->sResizePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private adjustMediaItemBoundary(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;Landroid/media/videoeditor/MediaItem;)V
    .locals 4
    .param p1, "clipSettings"    # Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    .param p2, "clipProperties"    # Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    .param p3, "m"    # Landroid/media/videoeditor/MediaItem;

    .prologue
    const-wide/16 v2, 0x0

    .line 2574
    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 2576
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    int-to-long v0, v0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 2577
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    int-to-long v0, v0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 2586
    :cond_0
    :goto_0
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    iget v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    .line 2588
    iget v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    if-eqz v0, :cond_1

    .line 2589
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    iget v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    .line 2592
    :cond_1
    iget v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    if-eqz v0, :cond_2

    .line 2593
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    iget v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    .line 2595
    :cond_2
    return-void

    .line 2578
    :cond_3
    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 2580
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    int-to-long v0, v0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    goto :goto_0

    .line 2581
    :cond_4
    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2583
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    int-to-long v0, v0

    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    goto :goto_0
.end method

.method private adjustVolume(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V
    .locals 3
    .param p1, "m"    # Landroid/media/videoeditor/MediaItem;
    .param p2, "clipProperties"    # Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;
    .param p3, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 2646
    instance-of v1, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 2647
    check-cast v1, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaVideoItem;->isMuted()Z

    move-result v0

    .line 2648
    .local v0, "videoMuted":Z
    if-nez v0, :cond_1

    .line 2649
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p3

    check-cast p1, Landroid/media/videoeditor/MediaVideoItem;

    .end local p1    # "m":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaVideoItem;->getVolume()I

    move-result v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioVolumeValue:I

    .line 2657
    .end local v0    # "videoMuted":Z
    :cond_0
    :goto_0
    return-void

    .line 2652
    .restart local v0    # "videoMuted":Z
    .restart local p1    # "m":Landroid/media/videoeditor/MediaItem;
    :cond_1
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p3

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioVolumeValue:I

    goto :goto_0

    .line 2654
    .end local v0    # "videoMuted":Z
    :cond_2
    instance-of v1, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v1, :cond_0

    .line 2655
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p3

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioVolumeValue:I

    goto :goto_0
.end method

.method private checkOddSizeImage(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V
    .locals 3
    .param p1, "m"    # Landroid/media/videoeditor/MediaItem;
    .param p2, "clipProperties"    # Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;
    .param p3, "index"    # I

    .prologue
    .line 2667
    instance-of v2, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v2, :cond_2

    .line 2668
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v2, v2, p3

    iget v1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    .line 2669
    .local v1, "width":I
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v2, v2, p3

    iget v0, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    .line 2671
    .local v0, "height":I
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    .line 2672
    add-int/lit8 v1, v1, -0x1

    .line 2674
    :cond_0
    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 2675
    add-int/lit8 v0, v0, -0x1

    .line 2677
    :cond_1
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v2, v2, p3

    iput v1, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    .line 2678
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v2, v2, p3

    iput v0, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    .line 2680
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_2
    return-void
.end method

.method private findVideoBitrate(I)I
    .locals 1
    .param p1, "videoFrameSize"    # I

    .prologue
    .line 3579
    packed-switch p1, :pswitch_data_0

    .line 3599
    const v0, 0x7a1200

    :goto_0
    return v0

    .line 3583
    :pswitch_0
    const v0, 0x1f400

    goto :goto_0

    .line 3586
    :pswitch_1
    const v0, 0x5dc00

    goto :goto_0

    .line 3592
    :pswitch_2
    const v0, 0x1e8480

    goto :goto_0

    .line 3596
    :pswitch_3
    const v0, 0x4c4b40

    goto :goto_0

    .line 3579
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private findVideoResolution(II)I
    .locals 5
    .param p1, "aspectRatio"    # I
    .param p2, "height"    # I

    .prologue
    const/16 v4, 0x2d0

    const/16 v3, 0x1e0

    .line 3532
    const/4 v2, -0x1

    .line 3533
    .local v2, "retValue":I
    packed-switch p1, :pswitch_data_0

    .line 3565
    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 3566
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-static {v3}, Landroid/media/videoeditor/MediaProperties;->getSupportedResolutions(I)[Landroid/util/Pair;

    move-result-object v1

    .line 3568
    .local v1, "resolutions":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v1, v3

    .line 3569
    .local v0, "maxResolution":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v4

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    .line 3572
    .end local v0    # "maxResolution":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v1    # "resolutions":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    return v2

    .line 3535
    :pswitch_0
    if-ne p2, v3, :cond_2

    .line 3536
    const/4 v2, 0x7

    goto :goto_0

    .line 3537
    :cond_2
    if-ne p2, v4, :cond_0

    .line 3538
    const/16 v2, 0xb

    goto :goto_0

    .line 3541
    :pswitch_1
    if-ne p2, v3, :cond_3

    .line 3542
    const/16 v2, 0x9

    goto :goto_0

    .line 3543
    :cond_3
    if-ne p2, v4, :cond_4

    .line 3544
    const/16 v2, 0xa

    goto :goto_0

    .line 3545
    :cond_4
    const/16 v3, 0x438

    if-ne p2, v3, :cond_0

    .line 3546
    const/16 v2, 0xd

    goto :goto_0

    .line 3549
    :pswitch_2
    if-ne p2, v3, :cond_5

    .line 3550
    const/4 v2, 0x5

    goto :goto_0

    .line 3551
    :cond_5
    if-ne p2, v4, :cond_0

    .line 3552
    const/16 v2, 0xc

    goto :goto_0

    .line 3555
    :pswitch_3
    if-ne p2, v3, :cond_0

    .line 3556
    const/4 v2, 0x6

    goto :goto_0

    .line 3559
    :pswitch_4
    const/16 v3, 0x90

    if-ne p2, v3, :cond_6

    .line 3560
    const/4 v2, 0x2

    goto :goto_0

    .line 3561
    :cond_6
    const/16 v3, 0x120

    if-ne p2, v3, :cond_0

    .line 3562
    const/4 v2, 0x4

    goto :goto_0

    .line 3533
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private generateTransition(Landroid/media/videoeditor/Transition;Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V
    .locals 4
    .param p1, "transition"    # Landroid/media/videoeditor/Transition;
    .param p2, "editSettings"    # Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;
    .param p3, "clipPropertiesArray"    # Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;
    .param p4, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 2608
    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->isGenerated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2609
    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->generate()V

    .line 2611
    :cond_0
    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    new-instance v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    aput-object v2, v1, p4

    .line 2612
    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getFilename()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 2613
    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p4

    iput v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 2614
    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p4

    iput v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 2615
    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 2616
    iget-object v1, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p4

    const/4 v2, 0x2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 2619
    :try_start_0
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v2

    aput-object v2, v1, p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2625
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->Id:Ljava/lang/String;

    .line 2626
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    const/16 v2, 0x64

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioVolumeValue:I

    .line 2627
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    .line 2628
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    iget v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    if-eqz v1, :cond_1

    .line 2629
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    .line 2632
    :cond_1
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    iget v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    if-eqz v1, :cond_2

    .line 2633
    iget-object v1, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v1, v1, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    .line 2635
    :cond_2
    return-void

    .line 2621
    :catch_0
    move-exception v0

    .line 2622
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported file or file not found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getEffectColorType(Landroid/media/videoeditor/EffectColor;)I
    .locals 3
    .param p1, "effect"    # Landroid/media/videoeditor/EffectColor;

    .prologue
    .line 3488
    const/4 v0, -0x1

    .line 3489
    .local v0, "retValue":I
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3515
    const/4 v0, -0x1

    .line 3517
    :goto_0
    return v0

    .line 3491
    :pswitch_0
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result v1

    const v2, 0xff00

    if-ne v1, v2, :cond_0

    .line 3492
    const/16 v0, 0x103

    goto :goto_0

    .line 3493
    :cond_0
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result v1

    const v2, 0xff66cc

    if-ne v1, v2, :cond_1

    .line 3494
    const/16 v0, 0x102

    goto :goto_0

    .line 3495
    :cond_1
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result v1

    const v2, 0x7f7f7f

    if-ne v1, v2, :cond_2

    .line 3496
    const/16 v0, 0x101

    goto :goto_0

    .line 3498
    :cond_2
    const/16 v0, 0x10b

    .line 3500
    goto :goto_0

    .line 3502
    :pswitch_1
    const/16 v0, 0x10c

    .line 3503
    goto :goto_0

    .line 3505
    :pswitch_2
    const/16 v0, 0x104

    .line 3506
    goto :goto_0

    .line 3508
    :pswitch_3
    const/16 v0, 0x105

    .line 3509
    goto :goto_0

    .line 3511
    :pswitch_4
    const/16 v0, 0x10a

    .line 3512
    goto :goto_0

    .line 3489
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getTotalEffects(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2801
    .local p1, "mediaItemsList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    const/4 v4, 0x0

    .line 2802
    .local v4, "totalEffects":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2803
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/videoeditor/MediaItem;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2804
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/MediaItem;

    .line 2805
    .local v3, "t":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    .line 2806
    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    .line 2807
    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2808
    .local v1, "ef":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/videoeditor/Effect;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2809
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/Effect;

    .line 2810
    .local v0, "e":Landroid/media/videoeditor/Effect;
    instance-of v5, v0, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v5, :cond_1

    .line 2811
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2815
    .end local v0    # "e":Landroid/media/videoeditor/Effect;
    .end local v1    # "ef":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/videoeditor/Effect;>;"
    .end local v3    # "t":Landroid/media/videoeditor/MediaItem;
    :cond_2
    return v4
.end method

.method private getTransitionResolution(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)I
    .locals 4
    .param p1, "m1"    # Landroid/media/videoeditor/MediaItem;
    .param p2, "m2"    # Landroid/media/videoeditor/MediaItem;

    .prologue
    .line 2426
    const/4 v0, 0x0

    .line 2427
    .local v0, "clip1Height":I
    const/4 v1, 0x0

    .line 2428
    .local v1, "clip2Height":I
    const/4 v2, 0x0

    .line 2430
    .local v2, "videoSize":I
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 2431
    instance-of v3, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_3

    .line 2432
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v0

    .line 2436
    .end local p1    # "m1":Landroid/media/videoeditor/MediaItem;
    :cond_0
    :goto_0
    instance-of v3, p2, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_4

    .line 2437
    invoke-virtual {p2}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v1

    .line 2441
    .end local p2    # "m2":Landroid/media/videoeditor/MediaItem;
    :cond_1
    :goto_1
    if-le v0, v1, :cond_5

    .line 2442
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-direct {p0, v3, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    .line 2461
    :cond_2
    :goto_2
    return v2

    .line 2433
    .restart local p1    # "m1":Landroid/media/videoeditor/MediaItem;
    .restart local p2    # "m2":Landroid/media/videoeditor/MediaItem;
    :cond_3
    instance-of v3, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_0

    .line 2434
    check-cast p1, Landroid/media/videoeditor/MediaImageItem;

    .end local p1    # "m1":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v0

    goto :goto_0

    .line 2438
    :cond_4
    instance-of v3, p2, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_1

    .line 2439
    check-cast p2, Landroid/media/videoeditor/MediaImageItem;

    .end local p2    # "m2":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {p2}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v1

    goto :goto_1

    .line 2444
    :cond_5
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-direct {p0, v3, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    goto :goto_2

    .line 2446
    .restart local p1    # "m1":Landroid/media/videoeditor/MediaItem;
    .restart local p2    # "m2":Landroid/media/videoeditor/MediaItem;
    :cond_6
    if-nez p1, :cond_9

    if-eqz p2, :cond_9

    .line 2447
    instance-of v3, p2, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_8

    .line 2448
    invoke-virtual {p2}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v1

    .line 2452
    .end local p2    # "m2":Landroid/media/videoeditor/MediaItem;
    :cond_7
    :goto_3
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-direct {p0, v3, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    goto :goto_2

    .line 2449
    .restart local p2    # "m2":Landroid/media/videoeditor/MediaItem;
    :cond_8
    instance-of v3, p2, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_7

    .line 2450
    check-cast p2, Landroid/media/videoeditor/MediaImageItem;

    .end local p2    # "m2":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {p2}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v1

    goto :goto_3

    .line 2453
    .restart local p2    # "m2":Landroid/media/videoeditor/MediaItem;
    :cond_9
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 2454
    instance-of v3, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_b

    .line 2455
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v0

    .line 2459
    .end local p1    # "m1":Landroid/media/videoeditor/MediaItem;
    :cond_a
    :goto_4
    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v3}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-direct {p0, v3, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    goto :goto_2

    .line 2456
    .restart local p1    # "m1":Landroid/media/videoeditor/MediaItem;
    :cond_b
    instance-of v3, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_a

    .line 2457
    check-cast p1, Landroid/media/videoeditor/MediaImageItem;

    .end local p1    # "m1":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v0

    goto :goto_4
.end method

.method private static native getVersion()Landroid/media/videoeditor/MediaArtistNativeHelper$Version;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private lock()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 3929
    const-string v0, "MediaArtistNativeHelper"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3930
    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "lock: grabbing semaphore"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3932
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 3933
    const-string v0, "MediaArtistNativeHelper"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3934
    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "lock: grabbed semaphore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3936
    :cond_1
    return-void
.end method

.method private native nativeClearSurface(Landroid/view/Surface;)V
.end method

.method private native nativeGenerateAudioGraph(Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method private native nativeGenerateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeGenerateRawAudio(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeGetPixels(Ljava/lang/String;[IIIJ)I
.end method

.method private native nativeGetPixelsList(Ljava/lang/String;[IIIIJJ[ILandroid/media/videoeditor/MediaArtistNativeHelper$NativeGetPixelsListCallback;)I
.end method

.method private native nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeRenderMediaItemPreviewFrame(Landroid/view/Surface;Ljava/lang/String;IIIIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeRenderPreviewFrame(Landroid/view/Surface;JII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeStartPreview(Landroid/view/Surface;JJIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeStopPreview()I
.end method

.method private onAudioGraphExtractProgressUpdate(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "isVideo"    # Z

    .prologue
    .line 1893
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExtractAudioWaveformProgressListener:Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 1894
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExtractAudioWaveformProgressListener:Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;

    invoke-interface {v0, p1}, Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;->onProgress(I)V

    .line 1896
    :cond_0
    return-void
.end method

.method private onPreviewProgressUpdate(IZZLjava/lang/String;II)V
    .locals 5
    .param p1, "progress"    # I
    .param p2, "isFinished"    # Z
    .param p3, "updateOverlay"    # Z
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "renderingMode"    # I
    .param p6, "error"    # I

    .prologue
    .line 1849
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    if-eqz v1, :cond_2

    .line 1850
    iget-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mIsFirstProgress:Z

    if-eqz v1, :cond_0

    .line 1851
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v1, v2}, Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;->onStart(Landroid/media/videoeditor/VideoEditor;)V

    .line 1852
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mIsFirstProgress:Z

    .line 1856
    :cond_0
    if-eqz p3, :cond_4

    .line 1857
    new-instance v0, Landroid/media/videoeditor/VideoEditor$OverlayData;

    invoke-direct {v0}, Landroid/media/videoeditor/VideoEditor$OverlayData;-><init>()V

    .line 1858
    .local v0, "overlayData":Landroid/media/videoeditor/VideoEditor$OverlayData;
    if-eqz p4, :cond_3

    .line 1859
    invoke-static {p4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Landroid/media/videoeditor/VideoEditor$OverlayData;->set(Landroid/graphics/Bitmap;I)V

    .line 1867
    :goto_0
    if-eqz p1, :cond_1

    .line 1868
    int-to-long v1, p1

    iput-wide v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgress:J

    .line 1871
    :cond_1
    if-eqz p2, :cond_5

    .line 1872
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v1, v2}, Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;->onStop(Landroid/media/videoeditor/VideoEditor;)V

    .line 1879
    .end local v0    # "overlayData":Landroid/media/videoeditor/VideoEditor$OverlayData;
    :cond_2
    :goto_1
    return-void

    .line 1861
    .restart local v0    # "overlayData":Landroid/media/videoeditor/VideoEditor$OverlayData;
    :cond_3
    invoke-virtual {v0}, Landroid/media/videoeditor/VideoEditor$OverlayData;->setClear()V

    goto :goto_0

    .line 1864
    .end local v0    # "overlayData":Landroid/media/videoeditor/VideoEditor$OverlayData;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "overlayData":Landroid/media/videoeditor/VideoEditor$OverlayData;
    goto :goto_0

    .line 1873
    :cond_5
    if-eqz p6, :cond_6

    .line 1874
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v1, v2, p6}, Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;->onError(Landroid/media/videoeditor/VideoEditor;I)V

    goto :goto_1

    .line 1876
    :cond_6
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    int-to-long v3, p1

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;->onProgress(Landroid/media/videoeditor/VideoEditor;JLandroid/media/videoeditor/VideoEditor$OverlayData;)V

    goto :goto_1
.end method

.method private onProgressUpdate(II)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "progress"    # I

    .prologue
    const/4 v4, 0x1

    .line 1768
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    .line 1769
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

    if-eqz v2, :cond_0

    .line 1770
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-ge v2, p2, :cond_0

    .line 1771
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mOutputFilename:Ljava/lang/String;

    invoke-interface {v2, v3, v4, p2}, Landroid/media/videoeditor/VideoEditor$ExportProgressListener;->onProgress(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;I)V

    .line 1773
    iput p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    .line 1844
    :cond_0
    :goto_0
    return-void

    .line 1779
    :cond_1
    const/4 v1, 0x0

    .line 1780
    .local v1, "actualProgress":I
    const/4 v0, 0x0

    .line 1782
    .local v0, "action":I
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    if-ne v2, v4, :cond_2

    .line 1783
    const/4 v0, 0x2

    .line 1788
    :goto_1
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    packed-switch v2, :pswitch_data_0

    .line 1819
    :pswitch_0
    const-string v2, "MediaArtistNativeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR unexpected State="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1785
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 1790
    :pswitch_1
    move v1, p2

    .line 1822
    :cond_3
    :goto_2
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eq v2, v1, :cond_4

    if-eqz v1, :cond_4

    .line 1824
    iput v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    .line 1826
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    if-eqz v2, :cond_4

    .line 1828
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    invoke-interface {v2, v3, v0, v1}, Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;->onProgress(Ljava/lang/Object;II)V

    .line 1833
    :cond_4
    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-nez v2, :cond_0

    .line 1834
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    if-eqz v2, :cond_5

    .line 1838
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    invoke-interface {v2, v3, v0, v1}, Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;->onProgress(Ljava/lang/Object;II)V

    .line 1841
    :cond_5
    iput v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    goto :goto_0

    .line 1793
    :pswitch_2
    move v1, p2

    .line 1794
    goto :goto_2

    .line 1796
    :pswitch_3
    move v1, p2

    .line 1797
    goto :goto_2

    .line 1799
    :pswitch_4
    if-nez p2, :cond_6

    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eqz v2, :cond_6

    .line 1800
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    .line 1802
    :cond_6
    if-nez p2, :cond_7

    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eqz v2, :cond_3

    .line 1803
    :cond_7
    div-int/lit8 v1, p2, 0x4

    goto :goto_2

    .line 1807
    :pswitch_5
    if-nez p2, :cond_8

    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eqz v2, :cond_3

    .line 1808
    :cond_8
    div-int/lit8 v2, p2, 0x4

    add-int/lit8 v1, v2, 0x19

    goto :goto_2

    .line 1812
    :pswitch_6
    if-nez p2, :cond_9

    iget v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-eqz v2, :cond_3

    .line 1813
    :cond_9
    div-int/lit8 v2, p2, 0x2

    add-int/lit8 v1, v2, 0x32

    goto :goto_2

    .line 1788
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private populateBackgroundMusicProperties(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mediaBGMList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2727
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 2728
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/AudioTrack;

    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    .line 2733
    :goto_0
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    if-eqz v2, :cond_2

    .line 2734
    new-instance v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    invoke-direct {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;-><init>()V

    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    .line 2735
    new-instance v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    invoke-direct {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;-><init>()V

    .line 2736
    .local v1, "mAudioProperties":Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->pFile:Ljava/lang/String;

    .line 2737
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->Id:Ljava/lang/String;

    .line 2739
    :try_start_0
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v2}, Landroid/media/videoeditor/AudioTrack;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2743
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput-boolean v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->bRemoveOriginal:Z

    .line 2744
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioChannels:I

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->channels:I

    .line 2745
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->audioSamplingFrequency:I

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->Fs:I

    .line 2746
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->isLooping()Z

    move-result v3

    iput-boolean v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->loop:Z

    .line 2747
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->ExtendedFs:I

    .line 2748
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getFilename()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->pFile:Ljava/lang/String;

    .line 2749
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getStartTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->startMs:J

    .line 2750
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getBoundaryBeginTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->beginCutTime:J

    .line 2751
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getBoundaryEndTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->endCutTime:J

    .line 2752
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v2}, Landroid/media/videoeditor/AudioTrack;->isMuted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2753
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iput v5, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->volume:I

    .line 2757
    :goto_1
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->fileType:I

    .line 2758
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getDuckedTrackVolume()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->ducking_lowVolume:I

    .line 2759
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getDuckingThreshhold()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->ducking_threshold:I

    .line 2760
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->isDuckingEnabled()Z

    move-result v3

    iput-boolean v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->bInDucking_enable:Z

    .line 2761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "AudioPcm.pcm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    .line 2762
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->pcmFilePath:Ljava/lang/String;

    .line 2764
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    new-instance v3, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    invoke-direct {v3}, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;-><init>()V

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    .line 2765
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->file:Ljava/lang/String;

    .line 2766
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget v3, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->fileType:I

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->fileType:I

    .line 2767
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getStartTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->insertionTime:J

    .line 2769
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getVolume()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->volumePercent:I

    .line 2770
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getBoundaryBeginTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->beginLoop:J

    .line 2772
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getBoundaryEndTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->endLoop:J

    .line 2774
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->isDuckingEnabled()Z

    move-result v3

    iput-boolean v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->enableDucking:Z

    .line 2776
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getDuckingThreshhold()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->duckingThreshold:I

    .line 2778
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getDuckedTrackVolume()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->lowVolume:I

    .line 2780
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->isLooping()Z

    move-result v3

    iput-boolean v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;->isLooping:Z

    .line 2781
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v3, 0x64

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->primaryTrackVolume:I

    .line 2782
    iput v6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2783
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    iput-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    .line 2789
    .end local v1    # "mAudioProperties":Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :goto_2
    return-void

    .line 2730
    :cond_0
    iput-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    goto/16 :goto_0

    .line 2740
    .restart local v1    # "mAudioProperties":Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :catch_0
    move-exception v0

    .line 2741
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported file or file not found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2755
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrack:Landroid/media/videoeditor/AudioTrack;

    invoke-virtual {v3}, Landroid/media/videoeditor/AudioTrack;->getVolume()I

    move-result v3

    iput v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;->volume:I

    goto/16 :goto_1

    .line 2785
    .end local v1    # "mAudioProperties":Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    :cond_2
    iput-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    .line 2786
    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput-object v3, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    .line 2787
    iput-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    goto :goto_2
.end method

.method private populateEffects(Landroid/media/videoeditor/MediaItem;[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;IIII)I
    .locals 9
    .param p1, "m"    # Landroid/media/videoeditor/MediaItem;
    .param p2, "effectSettings"    # [Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    .param p3, "i"    # I
    .param p4, "beginCutTime"    # I
    .param p5, "endCutTime"    # I
    .param p6, "storyBoardTime"    # I

    .prologue
    const-wide/16 v7, 0x0

    .line 2531
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 2533
    int-to-long v5, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    long-to-int p4, v5

    .line 2534
    int-to-long v5, p5

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int p5, v5

    .line 2543
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v1

    .line 2544
    .local v1, "effects":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v4

    .line 2546
    .local v4, "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/Overlay;

    .line 2547
    .local v3, "overlay":Landroid/media/videoeditor/Overlay;
    check-cast v3, Landroid/media/videoeditor/OverlayFrame;

    .end local v3    # "overlay":Landroid/media/videoeditor/Overlay;
    invoke-virtual {p0, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getOverlaySettings(Landroid/media/videoeditor/OverlayFrame;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    move-result-object v5

    aput-object v5, p2, p3

    .line 2548
    aget-object v5, p2, p3

    invoke-virtual {p0, v5, p4, p5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustEffectsStartTimeAndDuration(Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;II)V

    .line 2549
    aget-object v5, p2, p3

    iget v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    add-int/2addr v6, p6

    iput v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 2550
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 2535
    .end local v1    # "effects":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :cond_1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 2537
    int-to-long v5, p5

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int p5, v5

    goto :goto_0

    .line 2538
    :cond_2
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 2540
    int-to-long v5, p4

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    long-to-int p4, v5

    goto :goto_0

    .line 2553
    .restart local v1    # "effects":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/Effect;

    .line 2554
    .local v0, "effect":Landroid/media/videoeditor/Effect;
    instance-of v5, v0, Landroid/media/videoeditor/EffectColor;

    if-eqz v5, :cond_4

    .line 2555
    check-cast v0, Landroid/media/videoeditor/EffectColor;

    .end local v0    # "effect":Landroid/media/videoeditor/Effect;
    invoke-virtual {p0, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getEffectSettings(Landroid/media/videoeditor/EffectColor;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    move-result-object v5

    aput-object v5, p2, p3

    .line 2556
    aget-object v5, p2, p3

    invoke-virtual {p0, v5, p4, p5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustEffectsStartTimeAndDuration(Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;II)V

    .line 2557
    aget-object v5, p2, p3

    iget v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    add-int/2addr v6, p6

    iput v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 2558
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 2562
    :cond_5
    return p3
.end method

.method private populateMediaItemProperties(Landroid/media/videoeditor/MediaItem;II)I
    .locals 2
    .param p1, "m"    # Landroid/media/videoeditor/MediaItem;
    .param p2, "index"    # I
    .param p3, "maxHeight"    # I

    .prologue
    .line 2694
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    new-instance v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    aput-object v1, v0, p2

    .line 2695
    instance-of v0, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v0, :cond_2

    .line 2696
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaVideoItem;->getVideoClipProperties()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v0

    aput-object v0, v1, p2

    move-object v0, p1

    .line 2698
    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result v0

    if-le v0, p3, :cond_0

    move-object v0, p1

    .line 2699
    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result p3

    .line 2709
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v0, v0, p2

    iget v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2710
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v0, v0, p2

    check-cast p1, Landroid/media/videoeditor/MediaImageItem;

    .end local p1    # "m":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaImageItem;->getDecodedImageFileName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    .line 2713
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v0, v0, p2

    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, p2

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipOriginalPath:Ljava/lang/String;

    .line 2716
    :cond_1
    return p3

    .line 2701
    .restart local p1    # "m":Landroid/media/videoeditor/MediaItem;
    :cond_2
    instance-of v0, p1, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v0, :cond_0

    .line 2702
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaImageItem;->getImageClipProperties()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v0

    aput-object v0, v1, p2

    move-object v0, p1

    .line 2704
    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v0

    if-le v0, p3, :cond_0

    move-object v0, p1

    .line 2705
    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result p3

    goto :goto_0
.end method

.method private previewFrameEditInfo(Ljava/lang/String;I)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "renderingMode"    # I

    .prologue
    .line 3119
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewOverlayFile:Ljava/lang/String;

    .line 3120
    iput p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewRenderingMode:I

    .line 3121
    return-void
.end method

.method private native release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native stopEncoding()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private unlock()V
    .locals 2

    .prologue
    .line 3942
    const-string v0, "MediaArtistNativeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3943
    const-string v0, "MediaArtistNativeHelper"

    const-string/jumbo v1, "unlock: releasing semaphore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3945
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 3946
    return-void
.end method


# virtual methods
.method GetClosestVideoFrameRate(I)I
    .locals 3
    .param p1, "averageFrameRate"    # I

    .prologue
    const/4 v0, 0x7

    const/4 v1, 0x5

    .line 2113
    const/16 v2, 0x19

    if-lt p1, v2, :cond_0

    .line 2128
    :goto_0
    return v0

    .line 2115
    :cond_0
    const/16 v2, 0x14

    if-lt p1, v2, :cond_1

    .line 2116
    const/4 v0, 0x6

    goto :goto_0

    .line 2117
    :cond_1
    const/16 v2, 0xf

    if-lt p1, v2, :cond_2

    move v0, v1

    .line 2118
    goto :goto_0

    .line 2119
    :cond_2
    const/16 v2, 0xc

    if-lt p1, v2, :cond_3

    .line 2120
    const/4 v0, 0x4

    goto :goto_0

    .line 2121
    :cond_3
    const/16 v2, 0xa

    if-lt p1, v2, :cond_4

    .line 2122
    const/4 v0, 0x3

    goto :goto_0

    .line 2123
    :cond_4
    if-lt p1, v0, :cond_5

    .line 2124
    const/4 v0, 0x2

    goto :goto_0

    .line 2125
    :cond_5
    if-lt p1, v1, :cond_6

    .line 2126
    const/4 v0, 0x1

    goto :goto_0

    .line 2128
    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public adjustEffectsStartTimeAndDuration(Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;II)V
    .locals 4
    .param p1, "lEffect"    # Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    .param p2, "beginCutTime"    # I
    .param p3, "endCutTime"    # I

    .prologue
    .line 2139
    const/4 v1, 0x0

    .line 2140
    .local v1, "effectStartTime":I
    const/4 v0, 0x0

    .line 2165
    .local v0, "effectDuration":I
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    if-gt v2, p3, :cond_0

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-gt v2, p2, :cond_2

    .line 2168
    :cond_0
    const/4 v1, 0x0

    .line 2169
    const/4 v0, 0x0

    .line 2171
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 2172
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    .line 2218
    :cond_1
    :goto_0
    return-void

    .line 2177
    :cond_2
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    if-ge v2, p2, :cond_3

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-le v2, p2, :cond_3

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-gt v2, p3, :cond_3

    .line 2180
    const/4 v1, 0x0

    .line 2181
    iget v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    .line 2183
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    sub-int v2, p2, v2

    sub-int/2addr v0, v2

    .line 2184
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 2185
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    goto :goto_0

    .line 2190
    :cond_3
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    if-lt v2, p2, :cond_4

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-gt v2, p3, :cond_4

    .line 2192
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    sub-int v1, v2, p2

    .line 2193
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 2194
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    goto :goto_0

    .line 2199
    :cond_4
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    if-lt v2, p2, :cond_5

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-le v2, p3, :cond_5

    .line 2201
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    sub-int v1, v2, p2

    .line 2202
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    sub-int v0, p3, v2

    .line 2203
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 2204
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    goto :goto_0

    .line 2209
    :cond_5
    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    if-ge v2, p2, :cond_1

    iget v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    iget v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    add-int/2addr v2, v3

    if-le v2, p3, :cond_1

    .line 2211
    const/4 v1, 0x0

    .line 2212
    sub-int v0, p3, p2

    .line 2213
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 2214
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    goto :goto_0
.end method

.method clearPreviewSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 3920
    invoke-direct {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeClearSurface(Landroid/view/Surface;)V

    .line 3921
    return-void
.end method

.method doPreview(Landroid/view/Surface;JJZILandroid/media/videoeditor/VideoEditor$PreviewProgressListener;)V
    .locals 11
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "fromMs"    # J
    .param p4, "toMs"    # J
    .param p6, "loop"    # Z
    .param p7, "callbackAfterFrameCount"    # I
    .param p8, "listener"    # Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    .prologue
    .line 3020
    iput-wide p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgress:J

    .line 3021
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mIsFirstProgress:Z

    .line 3022
    move-object/from16 v0, p8

    iput-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewProgressListener:Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    .line 3024
    iget-boolean v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    if-nez v1, :cond_2

    .line 3027
    const/4 v9, 0x0

    .local v9, "clipCnt":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    array-length v1, v1

    if-ge v9, v1, :cond_1

    .line 3029
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, v9

    iget v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 3030
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v1, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v1, v1, v9

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v2, v2, v9

    iget-object v2, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    iput-object v2, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 3028
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 3034
    :cond_1
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    invoke-direct {p0, v1, v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p7

    move/from16 v8, p6

    .line 3035
    invoke-direct/range {v1 .. v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeStartPreview(Landroid/view/Surface;JJIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3049
    return-void

    .line 3036
    :catch_0
    move-exception v10

    .line 3037
    .local v10, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Illegal argument exception in nativeStartPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    throw v10

    .line 3039
    .end local v10    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v10

    .line 3040
    .local v10, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Illegal state exception in nativeStartPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    throw v10

    .line 3042
    .end local v10    # "ex":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v10

    .line 3043
    .local v10, "ex":Ljava/lang/RuntimeException;
    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Runtime exception in nativeStartPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    throw v10

    .line 3047
    .end local v9    # "clipCnt":I
    .end local v10    # "ex":Ljava/lang/RuntimeException;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "generatePreview is in progress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method export(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$ExportProgressListener;)V
    .locals 18
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "projectDir"    # Ljava/lang/String;
    .param p3, "height"    # I
    .param p4, "bitrate"    # I
    .param p8, "listener"    # Landroid/media/videoeditor/VideoEditor$ExportProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Transition;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;",
            "Landroid/media/videoeditor/VideoEditor$ExportProgressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3620
    .local p5, "mediaItemsList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    .local p6, "mediaTransitionList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Transition;>;"
    .local p7, "mediaBGMList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    const/4 v11, 0x0

    .line 3621
    .local v11, "outBitrate":I
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    .line 3622
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/media/videoeditor/MediaArtistNativeHelper;->previewStoryBoard(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V

    .line 3623
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

    .line 3624
    const/4 v13, 0x0

    .line 3625
    .local v13, "outVideoProfile":I
    const/4 v12, 0x0

    .line 3628
    .local v12, "outVideoLevel":I
    invoke-static {}, Landroid/media/videoeditor/VideoEditorProfile;->get()Landroid/media/videoeditor/VideoEditorProfile;

    move-result-object v14

    .line 3629
    .local v14, "veProfile":Landroid/media/videoeditor/VideoEditorProfile;
    if-nez v14, :cond_0

    .line 3630
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v16, "Can\'t get the video editor profile"

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 3632
    :cond_0
    iget v9, v14, Landroid/media/videoeditor/VideoEditorProfile;->maxOutputVideoFrameHeight:I

    .line 3633
    .local v9, "maxOutputHeight":I
    iget v10, v14, Landroid/media/videoeditor/VideoEditorProfile;->maxOutputVideoFrameWidth:I

    .line 3634
    .local v10, "maxOutputWidth":I
    move/from16 v0, p3

    if-le v0, v9, :cond_1

    .line 3635
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unsupported export resolution. Supported maximum width:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " height:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " current height:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 3640
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoCodec:I

    invoke-static {v15}, Landroid/media/videoeditor/VideoEditorProfile;->getExportProfile(I)I

    move-result v13

    .line 3641
    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoCodec:I

    invoke-static {v15}, Landroid/media/videoeditor/VideoEditorProfile;->getExportLevel(I)I

    move-result v12

    .line 3643
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    .line 3645
    sparse-switch p4, :sswitch_data_0

    .line 3687
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Argument Bitrate incorrect"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 3647
    :sswitch_0
    const/16 v11, 0x7d00

    .line 3689
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v16, 0x7

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    .line 3690
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mOutputFilename:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    .line 3692
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v15}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v4

    .line 3693
    .local v4, "aspectRatio":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v4, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 3694
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoCodec:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    .line 3695
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportAudioCodec:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    .line 3696
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v13, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoProfile:I

    .line 3697
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v12, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoLevel:I

    .line 3698
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v16, 0x7d00

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 3699
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->maxFileSize:I

    .line 3700
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v16, 0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    .line 3701
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v11, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    .line 3702
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    const v16, 0x17700

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 3704
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    .line 3705
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    add-int/lit8 v15, v15, -0x1

    if-ge v8, v15, :cond_2

    .line 3706
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v15, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    new-instance v16, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    invoke-direct/range {v16 .. v16}, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;-><init>()V

    aput-object v16, v15, v8

    .line 3707
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v15, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    aget-object v15, v15, v8

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->videoTransitionType:I

    .line 3709
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v15, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    aget-object v15, v15, v8

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->audioTransitionType:I

    .line 3705
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3650
    .end local v4    # "aspectRatio":I
    .end local v8    # "index":I
    :sswitch_1
    const v11, 0xbb80

    .line 3651
    goto/16 :goto_0

    .line 3653
    :sswitch_2
    const v11, 0xfa00

    .line 3654
    goto/16 :goto_0

    .line 3656
    :sswitch_3
    const v11, 0x17700

    .line 3657
    goto/16 :goto_0

    .line 3659
    :sswitch_4
    const v11, 0x1f400

    .line 3660
    goto/16 :goto_0

    .line 3662
    :sswitch_5
    const v11, 0x2ee00

    .line 3663
    goto/16 :goto_0

    .line 3665
    :sswitch_6
    const v11, 0x3e800

    .line 3666
    goto/16 :goto_0

    .line 3668
    :sswitch_7
    const v11, 0x5dc00

    .line 3669
    goto/16 :goto_0

    .line 3671
    :sswitch_8
    const v11, 0x7d000

    .line 3672
    goto/16 :goto_0

    .line 3674
    :sswitch_9
    const v11, 0xc3500

    .line 3675
    goto/16 :goto_0

    .line 3677
    :sswitch_a
    const v11, 0x1e8480

    .line 3678
    goto/16 :goto_0

    .line 3680
    :sswitch_b
    const v11, 0x4c4b40

    .line 3681
    goto/16 :goto_0

    .line 3683
    :sswitch_c
    const v11, 0x7a1200

    .line 3684
    goto/16 :goto_0

    .line 3713
    .restart local v4    # "aspectRatio":I
    .restart local v8    # "index":I
    :cond_2
    const/4 v5, 0x0

    .local v5, "clipCnt":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v15, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    array-length v15, v15

    if-ge v5, v15, :cond_4

    .line 3714
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v15, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v15, v15, v5

    iget v15, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 3715
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v15, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v15, v15, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-object/from16 v16, v0

    aget-object v16, v16, v5

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipOriginalPath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 3713
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3719
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v15, v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V

    .line 3721
    const/4 v6, 0x0

    .line 3723
    .local v6, "err":I
    const/16 v15, 0x14

    :try_start_0
    move-object/from16 v0, p0

    iput v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 3724
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    .line 3725
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result v6

    .line 3726
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3738
    if-eqz v6, :cond_5

    .line 3739
    const-string v15, "MediaArtistNativeHelper"

    const-string v16, "RuntimeException for generateClip"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3740
    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "generateClip failed with error="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 3727
    :catch_0
    move-exception v7

    .line 3728
    .local v7, "ex":Ljava/lang/IllegalArgumentException;
    const-string v15, "MediaArtistNativeHelper"

    const-string v16, "IllegalArgument for generateClip"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3729
    throw v7

    .line 3730
    .end local v7    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 3731
    .local v7, "ex":Ljava/lang/IllegalStateException;
    const-string v15, "MediaArtistNativeHelper"

    const-string v16, "IllegalStateExceptiont for generateClip"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    throw v7

    .line 3733
    .end local v7    # "ex":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v7

    .line 3734
    .local v7, "ex":Ljava/lang/RuntimeException;
    const-string v15, "MediaArtistNativeHelper"

    const-string v16, "RuntimeException for generateClip"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    throw v7

    .line 3743
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Landroid/media/videoeditor/VideoEditor$ExportProgressListener;

    .line 3744
    return-void

    .line 3645
    :sswitch_data_0
    .sparse-switch
        0x6d60 -> :sswitch_0
        0x9c40 -> :sswitch_1
        0xfa00 -> :sswitch_2
        0x17700 -> :sswitch_3
        0x1f400 -> :sswitch_4
        0x2ee00 -> :sswitch_5
        0x3e800 -> :sswitch_6
        0x5dc00 -> :sswitch_7
        0x7d000 -> :sswitch_8
        0xc3500 -> :sswitch_9
        0x1e8480 -> :sswitch_a
        0x4c4b40 -> :sswitch_b
        0x7a1200 -> :sswitch_c
    .end sparse-switch
.end method

.method generateAudioGraph(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/media/videoeditor/ExtractAudioWaveformProgressListener;Z)V
    .locals 6
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "inFileName"    # Ljava/lang/String;
    .param p3, "OutAudiGraphFileName"    # Ljava/lang/String;
    .param p4, "frameDuration"    # I
    .param p5, "audioChannels"    # I
    .param p6, "samplesCount"    # I
    .param p7, "listener"    # Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;
    .param p8, "isVideo"    # Z

    .prologue
    .line 3889
    iput-object p7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExtractAudioWaveformProgressListener:Landroid/media/videoeditor/ExtractAudioWaveformProgressListener;

    .line 3895
    if-eqz p8, :cond_2

    .line 3896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".pcm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3904
    .local v1, "tempPCMFileName":Ljava/lang/String;
    :goto_0
    if-eqz p8, :cond_0

    .line 3905
    invoke-direct {p0, p2, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeGenerateRawAudio(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 3908
    invoke-direct/range {v0 .. v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeGenerateAudioGraph(Ljava/lang/String;Ljava/lang/String;III)I

    .line 3914
    if-eqz p8, :cond_1

    .line 3915
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3917
    :cond_1
    return-void

    .line 3898
    .end local v1    # "tempPCMFileName":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    .restart local v1    # "tempPCMFileName":Ljava/lang/String;
    goto :goto_0
.end method

.method public generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I
    .locals 5
    .param p1, "editSettings"    # Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    .prologue
    const/4 v2, -0x1

    .line 2229
    const/4 v0, 0x0

    .line 2232
    .local v0, "err":I
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeGenerateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    move v2, v0

    .line 2243
    :goto_0
    return v2

    .line 2233
    :catch_0
    move-exception v1

    .line 2234
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v4, "Illegal Argument exception in load settings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2236
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 2237
    .local v1, "ex":Ljava/lang/IllegalStateException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v4, "Illegal state exception in load settings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2239
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 2240
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v4, "Runtime exception in load settings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method generateEffectClip(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "lMediaItem"    # Landroid/media/videoeditor/MediaItem;
    .param p2, "lclipSettings"    # Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    .param p3, "e"    # Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;
    .param p4, "uniqueId"    # Ljava/lang/String;
    .param p5, "clipNo"    # I

    .prologue
    .line 2288
    const/4 v2, 0x0

    .line 2289
    .local v2, "err":I
    const/4 v1, 0x0

    .line 2290
    .local v1, "editSettings":Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;
    const/4 v0, 0x0

    .line 2291
    .local v0, "EffectClipPath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2292
    .local v5, "outVideoProfile":I
    const/4 v4, 0x0

    .line 2293
    .local v4, "outVideoLevel":I
    new-instance v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    .end local v1    # "editSettings":Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;
    invoke-direct {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    .line 2295
    .restart local v1    # "editSettings":Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    iput-object v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    .line 2296
    iget-object v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    .line 2298
    const/4 v7, 0x0

    iput-object v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    .line 2299
    const/4 v7, 0x0

    iput-object v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    .line 2300
    iget-object v7, p3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    iput-object v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    .line 2302
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ClipEffectIntermediate"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".3gp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2305
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2306
    .local v6, "tmpFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2307
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 2310
    :cond_0
    const/4 v7, 0x2

    invoke-static {v7}, Landroid/media/videoeditor/VideoEditorProfile;->getExportProfile(I)I

    move-result v5

    .line 2311
    const/4 v7, 0x2

    invoke-static {v7}, Landroid/media/videoeditor/VideoEditorProfile;->getExportLevel(I)I

    move-result v4

    .line 2312
    iput v5, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoProfile:I

    .line 2313
    iput v4, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoLevel:I

    .line 2315
    instance-of v7, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v7, :cond_2

    move-object v3, p1

    .line 2316
    check-cast v3, Landroid/media/videoeditor/MediaVideoItem;

    .line 2318
    .local v3, "m":Landroid/media/videoeditor/MediaVideoItem;
    const/4 v7, 0x2

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    .line 2319
    const/4 v7, 0x2

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    .line 2320
    const v7, 0xfa00

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 2321
    const/16 v7, 0x7d00

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 2323
    const/4 v7, 0x2

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    .line 2324
    const/4 v7, 0x7

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    .line 2325
    iget-object v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v7

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaVideoItem;->getHeight()I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v7

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 2327
    iget v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    invoke-direct {p0, v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoBitrate(I)I

    move-result v7

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    .line 2342
    .end local v3    # "m":Landroid/media/videoeditor/MediaVideoItem;
    :goto_0
    iput-object v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    .line 2344
    const/4 v7, 0x1

    if-ne p5, v7, :cond_3

    .line 2345
    const/16 v7, 0xb

    iput v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2349
    :cond_1
    :goto_1
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    .line 2350
    invoke-virtual {p0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result v2

    .line 2351
    const/4 v7, 0x0

    iput v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2353
    if-nez v2, :cond_4

    .line 2354
    iput-object v0, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 2355
    const/4 v7, 0x0

    iput v7, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 2356
    return-object v0

    :cond_2
    move-object v3, p1

    .line 2329
    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    .line 2330
    .local v3, "m":Landroid/media/videoeditor/MediaImageItem;
    const v7, 0xfa00

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 2331
    const/4 v7, 0x2

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    .line 2332
    const/4 v7, 0x2

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    .line 2333
    const/16 v7, 0x7d00

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 2335
    const/4 v7, 0x2

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    .line 2336
    const/4 v7, 0x7

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    .line 2337
    iget-object v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v7}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v7

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v7

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 2339
    iget v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    invoke-direct {p0, v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoBitrate(I)I

    move-result v7

    iput v7, v1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    goto :goto_0

    .line 2346
    .end local v3    # "m":Landroid/media/videoeditor/MediaImageItem;
    :cond_3
    const/4 v7, 0x2

    if-ne p5, v7, :cond_1

    .line 2347
    const/16 v7, 0xc

    iput v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    goto :goto_1

    .line 2358
    :cond_4
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "preview generation cannot be completed"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method generateKenBurnsClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaImageItem;)Ljava/lang/String;
    .locals 9
    .param p1, "e"    # Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;
    .param p2, "m"    # Landroid/media/videoeditor/MediaImageItem;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x2

    .line 2373
    const/4 v3, 0x0

    .line 2374
    .local v3, "output":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2375
    .local v0, "err":I
    const/4 v2, 0x0

    .line 2376
    .local v2, "outVideoProfile":I
    const/4 v1, 0x0

    .line 2378
    .local v1, "outVideoLevel":I
    iput-object v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    .line 2379
    iput-object v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    .line 2380
    iput-object v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    .line 2381
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ImageClip-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/media/videoeditor/MediaImageItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".3gp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2383
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2384
    .local v4, "tmpFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2385
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2388
    :cond_0
    invoke-static {v7}, Landroid/media/videoeditor/VideoEditorProfile;->getExportProfile(I)I

    move-result v2

    .line 2389
    invoke-static {v7}, Landroid/media/videoeditor/VideoEditorProfile;->getExportLevel(I)I

    move-result v1

    .line 2390
    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoProfile:I

    .line 2391
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoLevel:I

    .line 2393
    iput-object v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    .line 2394
    const v5, 0xfa00

    iput v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 2395
    iput v7, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    .line 2396
    iput v7, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    .line 2397
    const/16 v5, 0x7d00

    iput v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 2399
    iput v7, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    .line 2400
    const/4 v5, 0x7

    iput v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    .line 2401
    iget-object v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v5}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v5

    invoke-virtual {p2}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v6

    invoke-direct {p0, v5, v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v5

    iput v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 2403
    iget v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    invoke-direct {p0, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoBitrate(I)I

    move-result v5

    iput v5, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    .line 2405
    const/4 v5, 0x3

    iput v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2406
    iput-object p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    .line 2407
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result v0

    .line 2409
    iput v8, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2410
    if-eqz v0, :cond_1

    .line 2411
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "preview generation cannot be completed"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2413
    :cond_1
    return-object v3
.end method

.method generateTransitionClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/Transition;)Ljava/lang/String;
    .locals 8
    .param p1, "e"    # Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;
    .param p2, "uniqueId"    # Ljava/lang/String;
    .param p3, "m1"    # Landroid/media/videoeditor/MediaItem;
    .param p4, "m2"    # Landroid/media/videoeditor/MediaItem;
    .param p5, "t"    # Landroid/media/videoeditor/Transition;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 2478
    const/4 v3, 0x0

    .line 2479
    .local v3, "outputFilename":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2480
    .local v0, "err":I
    const/4 v2, 0x0

    .line 2481
    .local v2, "outVideoProfile":I
    const/4 v1, 0x0

    .line 2482
    .local v1, "outVideoLevel":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".3gp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2484
    invoke-static {v6}, Landroid/media/videoeditor/VideoEditorProfile;->getExportProfile(I)I

    move-result v2

    .line 2485
    invoke-static {v6}, Landroid/media/videoeditor/VideoEditorProfile;->getExportLevel(I)I

    move-result v1

    .line 2486
    iput v2, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoProfile:I

    .line 2487
    iput v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoLevel:I

    .line 2489
    iput-object v3, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    .line 2490
    const v4, 0xfa00

    iput v4, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 2491
    iput v6, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    .line 2492
    iput v6, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    .line 2493
    const/16 v4, 0x7d00

    iput v4, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 2495
    iput v6, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    .line 2496
    const/4 v4, 0x7

    iput v4, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    .line 2497
    invoke-direct {p0, p3, p4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getTransitionResolution(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)I

    move-result v4

    iput v4, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 2498
    iget v4, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    invoke-direct {p0, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoBitrate(I)I

    move-result v4

    iput v4, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    .line 2500
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2501
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2503
    :cond_0
    const/16 v4, 0xd

    iput v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2504
    iput-object p5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    .line 2505
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result v0

    .line 2507
    iput v7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2508
    if-eqz v0, :cond_1

    .line 2509
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "preview generation cannot be completed"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2511
    :cond_1
    return-object v3
.end method

.method getAspectRatio(II)I
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 3193
    int-to-double v4, p1

    int-to-double v6, p2

    div-double v0, v4, v6

    .line 3194
    .local v0, "apRatio":D
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 3195
    .local v2, "bd":Ljava/math/BigDecimal;
    const/4 v4, 0x3

    const/4 v5, 0x4

    invoke-virtual {v2, v4, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    .line 3196
    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 3197
    const/4 v3, 0x2

    .line 3198
    .local v3, "var":I
    const-wide v4, 0x3ffb333333333333L    # 1.7

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_1

    .line 3199
    const/4 v3, 0x2

    .line 3209
    :cond_0
    :goto_0
    return v3

    .line 3200
    :cond_1
    const-wide v4, 0x3ff999999999999aL    # 1.6

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_2

    .line 3201
    const/4 v3, 0x4

    goto :goto_0

    .line 3202
    :cond_2
    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_3

    .line 3203
    const/4 v3, 0x1

    goto :goto_0

    .line 3204
    :cond_3
    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    cmpl-double v4, v0, v4

    if-lez v4, :cond_4

    .line 3205
    const/4 v3, 0x3

    goto :goto_0

    .line 3206
    :cond_4
    const-wide v4, 0x3ff3333333333333L    # 1.2

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_0

    .line 3207
    const/4 v3, 0x5

    goto :goto_0
.end method

.method getAudioCodecType(I)I
    .locals 1
    .param p1, "codecType"    # I

    .prologue
    .line 3291
    const/4 v0, -0x1

    .line 3292
    .local v0, "retValue":I
    packed-switch p1, :pswitch_data_0

    .line 3304
    :pswitch_0
    const/4 v0, -0x1

    .line 3306
    :goto_0
    return v0

    .line 3294
    :pswitch_1
    const/4 v0, 0x1

    .line 3295
    goto :goto_0

    .line 3297
    :pswitch_2
    const/4 v0, 0x2

    .line 3298
    goto :goto_0

    .line 3300
    :pswitch_3
    const/4 v0, 0x5

    .line 3301
    goto :goto_0

    .line 3292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method getAudioflag()Z
    .locals 1

    .prologue
    .line 2102
    iget-boolean v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRegenerateAudio:Z

    return v0
.end method

.method getEffectSettings(Landroid/media/videoeditor/EffectColor;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    .locals 5
    .param p1, "effects"    # Landroid/media/videoeditor/EffectColor;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1906
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;-><init>()V

    .line 1907
    .local v0, "effectSettings":Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getStartTime()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 1908
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getDuration()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    .line 1909
    invoke-direct {p0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getEffectColorType(Landroid/media/videoeditor/EffectColor;)I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->videoEffectType:I

    .line 1910
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->audioEffectType:I

    .line 1911
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startPercent:I

    .line 1912
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->durationPercent:I

    .line 1913
    iput-object v4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    .line 1914
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->topLeftX:I

    .line 1915
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->topLeftY:I

    .line 1916
    iput-boolean v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingResize:Z

    .line 1917
    iput-object v4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->text:Ljava/lang/String;

    .line 1918
    iput-object v4, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textRenderingData:Ljava/lang/String;

    .line 1919
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textBufferWidth:I

    .line 1920
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textBufferHeight:I

    .line 1921
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 1922
    const/16 v1, 0xf

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->fiftiesFrameRate:I

    .line 1927
    :goto_0
    iget v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->videoEffectType:I

    const/16 v2, 0x10b

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->videoEffectType:I

    const/16 v2, 0x10c

    if-ne v1, v2, :cond_1

    .line 1929
    :cond_0
    invoke-virtual {p1}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result v1

    iput v1, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->rgb16InputColor:I

    .line 1932
    :cond_1
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingStartPercent:I

    .line 1933
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingMiddlePercent:I

    .line 1934
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingEndPercent:I

    .line 1935
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingFadeInTimePercent:I

    .line 1936
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingFadeOutTimePercent:I

    .line 1937
    return-object v0

    .line 1924
    :cond_2
    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->fiftiesFrameRate:I

    goto :goto_0
.end method

.method getFileType(I)I
    .locals 1
    .param p1, "fileType"    # I

    .prologue
    .line 3221
    const/4 v0, -0x1

    .line 3222
    .local v0, "retValue":I
    sparse-switch p1, :sswitch_data_0

    .line 3249
    const/4 v0, -0x1

    .line 3251
    :goto_0
    return v0

    .line 3224
    :sswitch_0
    const/16 v0, 0xff

    .line 3225
    goto :goto_0

    .line 3227
    :sswitch_1
    const/4 v0, 0x0

    .line 3228
    goto :goto_0

    .line 3230
    :sswitch_2
    const/4 v0, 0x1

    .line 3231
    goto :goto_0

    .line 3233
    :sswitch_3
    const/4 v0, 0x5

    .line 3234
    goto :goto_0

    .line 3236
    :sswitch_4
    const/16 v0, 0x8

    .line 3237
    goto :goto_0

    .line 3239
    :sswitch_5
    const/4 v0, 0x3

    .line 3240
    goto :goto_0

    .line 3242
    :sswitch_6
    const/16 v0, 0xa

    .line 3243
    goto :goto_0

    .line 3245
    :sswitch_7
    const/4 v0, 0x2

    .line 3246
    goto :goto_0

    .line 3222
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_7
        0x3 -> :sswitch_5
        0x5 -> :sswitch_3
        0x8 -> :sswitch_4
        0xa -> :sswitch_6
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method getFrameRate(I)I
    .locals 1
    .param p1, "fps"    # I

    .prologue
    .line 3317
    const/4 v0, -0x1

    .line 3318
    .local v0, "retValue":I
    packed-switch p1, :pswitch_data_0

    .line 3345
    const/4 v0, -0x1

    .line 3347
    :goto_0
    return v0

    .line 3320
    :pswitch_0
    const/4 v0, 0x5

    .line 3321
    goto :goto_0

    .line 3323
    :pswitch_1
    const/16 v0, 0x8

    .line 3324
    goto :goto_0

    .line 3326
    :pswitch_2
    const/16 v0, 0xa

    .line 3327
    goto :goto_0

    .line 3329
    :pswitch_3
    const/16 v0, 0xd

    .line 3330
    goto :goto_0

    .line 3332
    :pswitch_4
    const/16 v0, 0xf

    .line 3333
    goto :goto_0

    .line 3335
    :pswitch_5
    const/16 v0, 0x14

    .line 3336
    goto :goto_0

    .line 3338
    :pswitch_6
    const/16 v0, 0x19

    .line 3339
    goto :goto_0

    .line 3341
    :pswitch_7
    const/16 v0, 0x1e

    .line 3342
    goto :goto_0

    .line 3318
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method getGeneratePreview()Z
    .locals 1

    .prologue
    .line 3181
    iget-boolean v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    return v0
.end method

.method getMediaItemFileType(I)I
    .locals 1
    .param p1, "fileType"    # I

    .prologue
    .line 3359
    const/4 v0, -0x1

    .line 3361
    .local v0, "retValue":I
    sparse-switch p1, :sswitch_data_0

    .line 3382
    const/4 v0, -0x1

    .line 3384
    :goto_0
    return v0

    .line 3363
    :sswitch_0
    const/16 v0, 0xff

    .line 3364
    goto :goto_0

    .line 3366
    :sswitch_1
    const/4 v0, 0x0

    .line 3367
    goto :goto_0

    .line 3369
    :sswitch_2
    const/4 v0, 0x1

    .line 3370
    goto :goto_0

    .line 3372
    :sswitch_3
    const/4 v0, 0x5

    .line 3373
    goto :goto_0

    .line 3375
    :sswitch_4
    const/16 v0, 0x8

    .line 3376
    goto :goto_0

    .line 3378
    :sswitch_5
    const/16 v0, 0xa

    .line 3379
    goto :goto_0

    .line 3361
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
        0x8 -> :sswitch_4
        0xa -> :sswitch_5
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method getMediaItemRenderingMode(I)I
    .locals 1
    .param p1, "renderingMode"    # I

    .prologue
    .line 3397
    const/4 v0, -0x1

    .line 3398
    .local v0, "retValue":I
    packed-switch p1, :pswitch_data_0

    .line 3410
    const/4 v0, -0x1

    .line 3412
    :goto_0
    return v0

    .line 3400
    :pswitch_0
    const/4 v0, 0x2

    .line 3401
    goto :goto_0

    .line 3403
    :pswitch_1
    const/4 v0, 0x0

    .line 3404
    goto :goto_0

    .line 3406
    :pswitch_2
    const/4 v0, 0x1

    .line 3407
    goto :goto_0

    .line 3398
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method native getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;,
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method getOverlaySettings(Landroid/media/videoeditor/OverlayFrame;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    .locals 17
    .param p1, "overlay"    # Landroid/media/videoeditor/OverlayFrame;

    .prologue
    .line 1948
    new-instance v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    invoke-direct {v12}, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;-><init>()V

    .line 1949
    .local v12, "effectSettings":Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    const/4 v1, 0x0

    .line 1951
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getStartTime()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 1952
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    .line 1953
    const/16 v2, 0x106

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->videoEffectType:I

    .line 1954
    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->audioEffectType:I

    .line 1955
    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startPercent:I

    .line 1956
    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->durationPercent:I

    .line 1957
    const/4 v2, 0x0

    iput-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    .line 1959
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1960
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    .line 1962
    iget-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1964
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/media/videoeditor/OverlayFrame;->save(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1968
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingFile:Ljava/lang/String;

    .line 1970
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_4

    .line 1971
    const/4 v2, 0x6

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->bitmapType:I

    .line 1979
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    .line 1980
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    .line 1981
    iget v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    new-array v2, v2, [I

    iput-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingBuffer:[I

    .line 1982
    const/4 v6, 0x0

    .line 1983
    .local v6, "tmp":I
    const/4 v14, 0x0

    .line 1984
    .local v14, "maxAlpha":S
    const/16 v16, 0xff

    .line 1985
    .local v16, "minAlpha":S
    const/4 v9, 0x0

    .line 1986
    .local v9, "alpha":S
    :goto_2
    iget v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    if-ge v6, v2, :cond_8

    .line 1987
    iget-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingBuffer:[I

    const/4 v3, 0x0

    iget v4, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    const/4 v5, 0x0

    iget v7, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1990
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    iget v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    if-ge v13, v2, :cond_7

    .line 1991
    iget-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingBuffer:[I

    aget v2, v2, v13

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-short v9, v2

    .line 1992
    if-le v9, v14, :cond_2

    .line 1993
    move v14, v9

    .line 1995
    :cond_2
    move/from16 v0, v16

    if-ge v9, v0, :cond_3

    .line 1996
    move/from16 v16, v9

    .line 1990
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1965
    .end local v6    # "tmp":I
    .end local v9    # "alpha":S
    .end local v13    # "i":I
    .end local v14    # "maxAlpha":S
    .end local v16    # "minAlpha":S
    :catch_0
    move-exception v11

    .line 1966
    .local v11, "e":Ljava/io/IOException;
    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "getOverlaySettings : File not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1972
    .end local v11    # "e":Ljava/io/IOException;
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_5

    .line 1973
    const/4 v2, 0x5

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->bitmapType:I

    goto :goto_1

    .line 1974
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_6

    .line 1975
    const/4 v2, 0x4

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->bitmapType:I

    goto :goto_1

    .line 1976
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_1

    .line 1977
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Bitmap config not supported"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1999
    .restart local v6    # "tmp":I
    .restart local v9    # "alpha":S
    .restart local v13    # "i":I
    .restart local v14    # "maxAlpha":S
    .restart local v16    # "minAlpha":S
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2001
    .end local v13    # "i":I
    :cond_8
    add-int v2, v14, v16

    div-int/lit8 v2, v2, 0x2

    int-to-short v9, v2

    .line 2002
    mul-int/lit8 v2, v9, 0x64

    div-int/lit16 v2, v2, 0x100

    int-to-short v9, v2

    .line 2003
    iput v9, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingEndPercent:I

    .line 2004
    iput v9, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingMiddlePercent:I

    .line 2005
    iput v9, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingStartPercent:I

    .line 2006
    const/16 v2, 0x64

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingFadeInTimePercent:I

    .line 2007
    const/16 v2, 0x64

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->alphaBlendingFadeOutTimePercent:I

    .line 2008
    const/4 v2, 0x0

    iput-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingBuffer:[I

    .line 2013
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeWidth()I

    move-result v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    .line 2014
    iget v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    if-nez v2, :cond_9

    .line 2015
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->width:I

    .line 2018
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeHeight()I

    move-result v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    .line 2019
    iget v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    if-nez v2, :cond_a

    .line 2020
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->height:I

    .line 2025
    .end local v6    # "tmp":I
    .end local v9    # "alpha":S
    .end local v14    # "maxAlpha":S
    .end local v16    # "minAlpha":S
    :cond_a
    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->topLeftX:I

    .line 2026
    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->topLeftY:I

    .line 2028
    const/4 v2, 0x1

    iput-boolean v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingResize:Z

    .line 2029
    const/4 v2, 0x0

    iput-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->text:Ljava/lang/String;

    .line 2030
    const/4 v2, 0x0

    iput-object v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textRenderingData:Ljava/lang/String;

    .line 2031
    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textBufferWidth:I

    .line 2032
    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->textBufferHeight:I

    .line 2033
    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->fiftiesFrameRate:I

    .line 2034
    const/4 v2, 0x0

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->rgb16InputColor:I

    .line 2037
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    instance-of v2, v2, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v2, :cond_c

    .line 2038
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 2040
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedClipHeight()I

    move-result v15

    .line 2041
    .local v15, "mediaItemHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedClipWidth()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAspectRatio(II)I

    move-result v10

    .line 2053
    .local v10, "aspectRatio":I
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    iput v2, v12, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->framingScaledSize:I

    .line 2054
    return-object v12

    .line 2046
    .end local v10    # "aspectRatio":I
    .end local v15    # "mediaItemHeight":I
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v15

    .line 2047
    .restart local v15    # "mediaItemHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getAspectRatio()I

    move-result v10

    .restart local v10    # "aspectRatio":I
    goto :goto_4

    .line 2050
    .end local v10    # "aspectRatio":I
    .end local v15    # "mediaItemHeight":I
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getAspectRatio()I

    move-result v10

    .line 2051
    .restart local v10    # "aspectRatio":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/videoeditor/OverlayFrame;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v15

    .restart local v15    # "mediaItemHeight":I
    goto :goto_4
.end method

.method getPixels(Ljava/lang/String;IIJI)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "timeMs"    # J
    .param p6, "videoRotation"    # I

    .prologue
    .line 3770
    const/4 v0, 0x1

    new-array v12, v0, [Landroid/graphics/Bitmap;

    .line 3771
    .local v12, "result":[Landroid/graphics/Bitmap;
    const/4 v8, 0x1

    const/4 v0, 0x1

    new-array v9, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v9, v0

    new-instance v10, Landroid/media/videoeditor/MediaArtistNativeHelper$1;

    invoke-direct {v10, p0, v12}, Landroid/media/videoeditor/MediaArtistNativeHelper$1;-><init>(Landroid/media/videoeditor/MediaArtistNativeHelper;[Landroid/graphics/Bitmap;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p4

    move/from16 v11, p6

    invoke-virtual/range {v0 .. v11}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getPixelsList(Ljava/lang/String;IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;I)V

    .line 3777
    const/4 v0, 0x0

    aget-object v0, v12, v0

    return-object v0
.end method

.method getPixelsList(Ljava/lang/String;IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;I)V
    .locals 25
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "startMs"    # J
    .param p6, "endMs"    # J
    .param p8, "thumbnailCount"    # I
    .param p9, "indices"    # [I
    .param p10, "callback"    # Landroid/media/videoeditor/MediaItem$GetThumbnailListCallback;
    .param p11, "videoRotation"    # I

    .prologue
    .line 3802
    add-int/lit8 v1, p2, 0x1

    and-int/lit8 v10, v1, -0x2

    .line 3803
    .local v10, "decWidth":I
    add-int/lit8 v1, p3, 0x1

    and-int/lit8 v11, v1, -0x2

    .line 3804
    .local v11, "decHeight":I
    mul-int v7, v10, v11

    .line 3809
    .local v7, "thumbnailSize":I
    new-array v6, v7, [I

    .line 3810
    .local v6, "decArray":[I
    invoke-static {v7}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v5

    .line 3814
    .local v5, "decBuffer":Ljava/nio/IntBuffer;
    move/from16 v0, p2

    if-ne v10, v0, :cond_0

    move/from16 v0, p3

    if-ne v11, v0, :cond_0

    if-eqz p11, :cond_3

    :cond_0
    const/4 v8, 0x1

    .line 3816
    .local v8, "needToMassage":Z
    :goto_0
    if-eqz v8, :cond_4

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 3821
    .local v9, "tmpBitmap":Landroid/graphics/Bitmap;
    :goto_1
    const/16 v1, 0x5a

    move/from16 v0, p11

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    move/from16 v0, p11

    if-ne v0, v1, :cond_5

    :cond_1
    const/16 v24, 0x1

    .line 3822
    .local v24, "needToSwapWH":Z
    :goto_2
    if-eqz v24, :cond_6

    move/from16 v3, p3

    .line 3823
    .local v3, "outWidth":I
    :goto_3
    if-eqz v24, :cond_7

    move/from16 v4, p2

    .line 3825
    .local v4, "outHeight":I
    :goto_4
    new-instance v1, Landroid/media/videoeditor/MediaArtistNativeHelper$2;

    move-object/from16 v2, p0

    move/from16 v12, p11

    move-object/from16 v13, p10

    invoke-direct/range {v1 .. v13}, Landroid/media/videoeditor/MediaArtistNativeHelper$2;-><init>(Landroid/media/videoeditor/MediaArtistNativeHelper;IILjava/nio/IntBuffer;[IIZLandroid/graphics/Bitmap;IIILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;)V

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object v14, v6

    move v15, v10

    move/from16 v16, v11

    move/from16 v17, p8

    move-wide/from16 v18, p4

    move-wide/from16 v20, p6

    move-object/from16 v22, p9

    move-object/from16 v23, v1

    invoke-direct/range {v12 .. v23}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeGetPixelsList(Ljava/lang/String;[IIIIJJ[ILandroid/media/videoeditor/MediaArtistNativeHelper$NativeGetPixelsListCallback;)I

    .line 3862
    if-eqz v9, :cond_2

    .line 3863
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 3865
    :cond_2
    return-void

    .line 3814
    .end local v3    # "outWidth":I
    .end local v4    # "outHeight":I
    .end local v8    # "needToMassage":Z
    .end local v9    # "tmpBitmap":Landroid/graphics/Bitmap;
    .end local v24    # "needToSwapWH":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 3816
    .restart local v8    # "needToMassage":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 3821
    .restart local v9    # "tmpBitmap":Landroid/graphics/Bitmap;
    :cond_5
    const/16 v24, 0x0

    goto :goto_2

    .restart local v24    # "needToSwapWH":Z
    :cond_6
    move/from16 v3, p2

    .line 3822
    goto :goto_3

    .restart local v3    # "outWidth":I
    :cond_7
    move/from16 v4, p3

    .line 3823
    goto :goto_4
.end method

.method getProjectAudioTrackPCMFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1753
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    return-object v0
.end method

.method getProjectPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1746
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    return-object v0
.end method

.method getSlideSettingsDirection(I)I
    .locals 1
    .param p1, "slideDirection"    # I

    .prologue
    .line 3458
    const/4 v0, -0x1

    .line 3459
    .local v0, "retValue":I
    packed-switch p1, :pswitch_data_0

    .line 3474
    const/4 v0, -0x1

    .line 3476
    :goto_0
    return v0

    .line 3461
    :pswitch_0
    const/4 v0, 0x0

    .line 3462
    goto :goto_0

    .line 3464
    :pswitch_1
    const/4 v0, 0x1

    .line 3465
    goto :goto_0

    .line 3467
    :pswitch_2
    const/4 v0, 0x2

    .line 3468
    goto :goto_0

    .line 3470
    :pswitch_3
    const/4 v0, 0x3

    .line 3471
    goto :goto_0

    .line 3459
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method getVideoCodecType(I)I
    .locals 1
    .param p1, "codecType"    # I

    .prologue
    .line 3263
    const/4 v0, -0x1

    .line 3264
    .local v0, "retValue":I
    packed-switch p1, :pswitch_data_0

    .line 3277
    const/4 v0, -0x1

    .line 3279
    :goto_0
    return v0

    .line 3266
    :pswitch_0
    const/4 v0, 0x1

    .line 3267
    goto :goto_0

    .line 3269
    :pswitch_1
    const/4 v0, 0x2

    .line 3270
    goto :goto_0

    .line 3272
    :pswitch_2
    const/4 v0, 0x3

    .line 3273
    goto :goto_0

    .line 3264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method getVideoTransitionBehaviour(I)I
    .locals 1
    .param p1, "transitionType"    # I

    .prologue
    .line 3424
    const/4 v0, -0x1

    .line 3425
    .local v0, "retValue":I
    packed-switch p1, :pswitch_data_0

    .line 3443
    const/4 v0, -0x1

    .line 3445
    :goto_0
    return v0

    .line 3427
    :pswitch_0
    const/4 v0, 0x0

    .line 3428
    goto :goto_0

    .line 3430
    :pswitch_1
    const/4 v0, 0x2

    .line 3431
    goto :goto_0

    .line 3433
    :pswitch_2
    const/4 v0, 0x1

    .line 3434
    goto :goto_0

    .line 3436
    :pswitch_3
    const/4 v0, 0x3

    .line 3437
    goto :goto_0

    .line 3439
    :pswitch_4
    const/4 v0, 0x4

    .line 3440
    goto :goto_0

    .line 3425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method initClipSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;)V
    .locals 2
    .param p1, "lclipSettings"    # Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2253
    iput-object v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 2254
    iput-object v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    .line 2255
    iput-object v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipOriginalPath:Ljava/lang/String;

    .line 2256
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 2257
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 2258
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 2259
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutPercent:I

    .line 2260
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutPercent:I

    .line 2261
    iput-boolean v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomEnabled:Z

    .line 2262
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentStart:I

    .line 2263
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXStart:I

    .line 2264
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYStart:I

    .line 2265
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentEnd:I

    .line 2266
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXEnd:I

    .line 2267
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYEnd:I

    .line 2268
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 2269
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rotationDegree:I

    .line 2270
    return-void
.end method

.method invalidatePcmFile()V
    .locals 2

    .prologue
    .line 1760
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1761
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1762
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    .line 1764
    :cond_0
    return-void
.end method

.method nativeHelperGetAspectRatio()I
    .locals 1

    .prologue
    .line 2059
    iget-object v0, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v0}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v0

    return v0
.end method

.method previewStoryBoard(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V
    .locals 26
    .param p4, "listener"    # Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Transition;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;",
            "Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2833
    .local p1, "mediaItemsList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaItem;>;"
    .local p2, "mediaTransitionList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Transition;>;"
    .local p3, "mediaBGMList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/AudioTrack;>;"
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    if-eqz v3, :cond_d

    .line 2834
    const/16 v18, 0x0

    .line 2835
    .local v18, "previewIndex":I
    const/16 v20, 0x0

    .line 2836
    .local v20, "totalEffects":I
    const/4 v9, 0x0

    .line 2837
    .local v9, "storyBoardTime":I
    const/16 v17, 0x0

    .line 2838
    .local v17, "maxHeight":I
    const/4 v7, 0x0

    .line 2839
    .local v7, "beginCutTime":I
    const/4 v8, 0x0

    .line 2840
    .local v8, "endCutTime":I
    const/4 v6, 0x0

    .line 2841
    .local v6, "effectIndex":I
    const/16 v16, 0x0

    .line 2842
    .local v16, "lTransition":Landroid/media/videoeditor/Transition;
    const/4 v4, 0x0

    .line 2843
    .local v4, "lMediaItem":Landroid/media/videoeditor/MediaItem;
    new-instance v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-direct {v3}, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    .line 2844
    new-instance v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    invoke-direct {v3}, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    .line 2845
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    .line 2847
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    .line 2848
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/media/videoeditor/Transition;

    .line 2849
    .local v21, "transition":Landroid/media/videoeditor/Transition;
    invoke-virtual/range {v21 .. v21}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v3, v22, v24

    if-lez v3, :cond_0

    .line 2850
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    goto :goto_0

    .line 2854
    .end local v21    # "transition":Landroid/media/videoeditor/Transition;
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getTotalEffects(Ljava/util/List;)I

    move-result v20

    .line 2856
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    new-array v5, v5, [Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    iput-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    .line 2857
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move/from16 v0, v20

    new-array v5, v0, [Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    iput-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    .line 2858
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    new-array v5, v5, [Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    iput-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    .line 2861
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/videoeditor/MediaArtistNativeHelper;->mMediaProcessingProgressListener:Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    .line 2862
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    .line 2864
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 2865
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_5

    .line 2867
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "lMediaItem":Landroid/media/videoeditor/MediaItem;
    check-cast v4, Landroid/media/videoeditor/MediaItem;

    .line 2868
    .restart local v4    # "lMediaItem":Landroid/media/videoeditor/MediaItem;
    instance-of v3, v4, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_7

    move-object v3, v4

    .line 2869
    check-cast v3, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v7, v0

    move-object v3, v4

    .line 2870
    check-cast v3, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v8, v0

    .line 2876
    :cond_2
    :goto_2
    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v16

    .line 2877
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v3, v22, v24

    if-lez v3, :cond_3

    .line 2879
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v1, v3, v5, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateTransition(Landroid/media/videoeditor/Transition;Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V

    .line 2881
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v3, v3, v18

    iget v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    add-int/2addr v9, v3

    .line 2882
    add-int/lit8 v18, v18, 0x1

    .line 2885
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v4, v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->populateMediaItemProperties(Landroid/media/videoeditor/MediaItem;II)I

    move-result v17

    .line 2887
    instance-of v3, v4, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_b

    .line 2888
    const/16 v19, 0x0

    .line 2889
    .local v19, "tmpCnt":I
    const/4 v10, 0x0

    .line 2890
    .local v10, "bEffectKbPresent":Z
    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v12

    .line 2894
    .local v12, "effectList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_4

    .line 2895
    move/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v3, :cond_8

    .line 2896
    const/4 v10, 0x1

    .line 2902
    :cond_4
    if-eqz v10, :cond_a

    .line 2904
    :try_start_0
    move-object v0, v4

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 2905
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-object v0, v4

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v3

    aput-object v3, v5, v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2942
    .end local v10    # "bEffectKbPresent":Z
    .end local v12    # "effectList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .end local v19    # "tmpCnt":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v3, v3, v18

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->Id:Ljava/lang/String;

    .line 2943
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v4, v3, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->checkOddSizeImage(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V

    .line 2944
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v4, v3, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustVolume(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V

    .line 2951
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v3, v3, v18

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v5, v18

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustMediaItemBoundary(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;Landroid/media/videoeditor/MediaItem;)V

    .line 2959
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/media/videoeditor/MediaArtistNativeHelper;->populateEffects(Landroid/media/videoeditor/MediaItem;[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;IIII)I

    move-result v6

    .line 2962
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v3, v3, v18

    iget v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    add-int/2addr v9, v3

    .line 2963
    add-int/lit8 v18, v18, 0x1

    .line 2967
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v14, v3, :cond_c

    .line 2968
    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v16

    .line 2969
    if-eqz v16, :cond_c

    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v3, v22, v24

    if-lez v3, :cond_c

    .line 2970
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v1, v3, v5, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateTransition(Landroid/media/videoeditor/Transition;Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;I)V

    .line 2977
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mErrorFlagSet:Z

    if-nez v3, :cond_6

    .line 2978
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Landroid/media/videoeditor/VideoEditor;

    invoke-interface {v5}, Landroid/media/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v5, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v5

    iput v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 2980
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->populateBackgroundMusicProperties(Ljava/util/List;)V

    .line 2984
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v3, v5, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    .line 2995
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    .line 2996
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2999
    .end local v14    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mErrorFlagSet:Z

    if-eqz v3, :cond_d

    .line 3000
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mErrorFlagSet:Z

    .line 3001
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "preview generation cannot be completed"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2871
    .restart local v14    # "i":I
    :cond_7
    instance-of v3, v4, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_2

    .line 2872
    const/4 v7, 0x0

    move-object v3, v4

    .line 2873
    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getTimelineDuration()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v8, v0

    goto/16 :goto_2

    .line 2899
    .restart local v10    # "bEffectKbPresent":Z
    .restart local v12    # "effectList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .restart local v19    # "tmpCnt":I
    :cond_8
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 2910
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-object v0, v4

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledImageFileName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v3

    aput-object v3, v5, v18

    .line 2913
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v3, v18

    move-object v0, v4

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v3

    iput v3, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    .line 2915
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v3, v18

    move-object v0, v4

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v3

    iput v3, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 2918
    :catch_0
    move-exception v11

    .line 2919
    .local v11, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported file or file not found"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2923
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-object v0, v4

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledImageFileName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v3

    aput-object v3, v5, v18
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2929
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v3, v18

    move-object v3, v4

    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v3

    iput v3, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->width:I

    .line 2931
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v3, v18

    move-object v3, v4

    check-cast v3, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v3}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v3

    iput v3, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;->height:I

    goto/16 :goto_4

    .line 2926
    :catch_1
    move-exception v11

    .line 2927
    .restart local v11    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported file or file not found"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2936
    .end local v10    # "bEffectKbPresent":Z
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "effectList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .end local v19    # "tmpCnt":I
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v3, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getFilename()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v5

    aput-object v5, v3, v18
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_4

    .line 2938
    :catch_2
    move-exception v11

    .line 2939
    .restart local v11    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported file or file not found"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2865
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 2985
    :catch_3
    move-exception v13

    .line 2986
    .local v13, "ex":Ljava/lang/IllegalArgumentException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v5, "Illegal argument exception in nativePopulateSettings"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    throw v13

    .line 2988
    .end local v13    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v13

    .line 2989
    .local v13, "ex":Ljava/lang/IllegalStateException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v5, "Illegal state exception in nativePopulateSettings"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    throw v13

    .line 2991
    .end local v13    # "ex":Ljava/lang/IllegalStateException;
    :catch_5
    move-exception v13

    .line 2992
    .local v13, "ex":Ljava/lang/RuntimeException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v5, "Runtime exception in nativePopulateSettings"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    throw v13

    .line 3004
    .end local v4    # "lMediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v6    # "effectIndex":I
    .end local v7    # "beginCutTime":I
    .end local v8    # "endCutTime":I
    .end local v9    # "storyBoardTime":I
    .end local v13    # "ex":Ljava/lang/RuntimeException;
    .end local v14    # "i":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "lTransition":Landroid/media/videoeditor/Transition;
    .end local v17    # "maxHeight":I
    .end local v18    # "previewIndex":I
    .end local v20    # "totalEffects":I
    :cond_d
    return-void
.end method

.method releaseNativeHelper()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1885
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->release()V

    .line 1886
    return-void
.end method

.method renderMediaItemPreviewFrame(Landroid/view/Surface;Ljava/lang/String;JII)J
    .locals 12
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "filepath"    # Ljava/lang/String;
    .param p3, "time"    # J
    .param p5, "framewidth"    # I
    .param p6, "frameheight"    # I

    .prologue
    .line 3139
    const-wide/16 v10, 0x0

    .line 3141
    .local v10, "timeMs":J
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-wide v7, p3

    :try_start_0
    invoke-direct/range {v0 .. v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeRenderMediaItemPreviewFrame(Landroid/view/Surface;Ljava/lang/String;IIIIJ)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    int-to-long v10, v0

    .line 3154
    return-wide v10

    .line 3143
    :catch_0
    move-exception v9

    .line 3144
    .local v9, "ex":Ljava/lang/IllegalArgumentException;
    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "Illegal Argument exception in renderMediaItemPreviewFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    throw v9

    .line 3146
    .end local v9    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v9

    .line 3147
    .local v9, "ex":Ljava/lang/IllegalStateException;
    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "Illegal state exception in renderMediaItemPreviewFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    throw v9

    .line 3149
    .end local v9    # "ex":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v9

    .line 3150
    .local v9, "ex":Ljava/lang/RuntimeException;
    const-string v0, "MediaArtistNativeHelper"

    const-string v1, "Runtime exception in renderMediaItemPreviewFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    throw v9
.end method

.method renderPreviewFrame(Landroid/view/Surface;JIILandroid/media/videoeditor/VideoEditor$OverlayData;)J
    .locals 7
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "time"    # J
    .param p4, "surfaceWidth"    # I
    .param p5, "surfaceHeight"    # I
    .param p6, "overlayData"    # Landroid/media/videoeditor/VideoEditor$OverlayData;

    .prologue
    .line 3073
    iget-boolean v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    if-eqz v4, :cond_1

    .line 3074
    const-string v4, "MediaArtistNativeHelper"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3075
    const-string v4, "MediaArtistNativeHelper"

    const-string v5, "Call generate preview first"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Call generate preview first"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3080
    :cond_1
    const-wide/16 v2, 0x0

    .line 3082
    .local v2, "timeMs":J
    const/4 v0, 0x0

    .local v0, "clipCnt":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v4, v4, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 3084
    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v4, v4, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 3085
    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v4, v4, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v4, v4, v0

    iget-object v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aget-object v5, v5, v0

    iget-object v5, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    iput-object v5, v4, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 3083
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3091
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewOverlayFile:Ljava/lang/String;

    .line 3092
    const/4 v4, 0x0

    iput v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewRenderingMode:I

    .line 3094
    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mClipProperties:Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;

    invoke-direct {p0, v4, v5, v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativePopulateSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Landroid/media/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;Landroid/media/videoeditor/MediaArtistNativeHelper$AudioSettings;)V

    .line 3096
    invoke-direct/range {p0 .. p5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeRenderPreviewFrame(Landroid/view/Surface;JII)I

    move-result v4

    int-to-long v2, v4

    .line 3098
    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewOverlayFile:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 3099
    iget-object v4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewOverlayFile:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRenderPreviewRenderingMode:I

    invoke-virtual {p6, v4, v5}, Landroid/media/videoeditor/VideoEditor$OverlayData;->set(Landroid/graphics/Bitmap;I)V

    .line 3115
    :goto_1
    return-wide v2

    .line 3102
    :cond_4
    invoke-virtual {p6}, Landroid/media/videoeditor/VideoEditor$OverlayData;->setClear()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 3104
    :catch_0
    move-exception v1

    .line 3105
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v4, "MediaArtistNativeHelper"

    const-string v5, "Illegal Argument exception in nativeRenderPreviewFrame"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    throw v1

    .line 3107
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 3108
    .local v1, "ex":Ljava/lang/IllegalStateException;
    const-string v4, "MediaArtistNativeHelper"

    const-string v5, "Illegal state exception in nativeRenderPreviewFrame"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    throw v1

    .line 3110
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 3111
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v4, "MediaArtistNativeHelper"

    const-string v5, "Runtime exception in nativeRenderPreviewFrame"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    throw v1
.end method

.method setAudioCodec(I)V
    .locals 0
    .param p1, "codec"    # I

    .prologue
    .line 2069
    iput p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportAudioCodec:I

    .line 2070
    return-void
.end method

.method setAudioflag(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 2089
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AudioPcm.pcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2090
    const/4 p1, 0x1

    .line 2092
    :cond_0
    iput-boolean p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mRegenerateAudio:Z

    .line 2093
    return-void
.end method

.method setGeneratePreview(Z)V
    .locals 4
    .param p1, "isRequired"    # Z

    .prologue
    .line 3162
    const/4 v1, 0x0

    .line 3164
    .local v1, "semAcquiredDone":Z
    :try_start_0
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->lock()V

    .line 3165
    const/4 v1, 0x1

    .line 3166
    iput-boolean p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3170
    if-eqz v1, :cond_0

    .line 3171
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->unlock()V

    .line 3174
    :cond_0
    :goto_0
    return-void

    .line 3167
    :catch_0
    move-exception v0

    .line 3168
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v2, "MediaArtistNativeHelper"

    const-string v3, "Runtime exception in renderMediaItemPreviewFrame"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3170
    if-eqz v1, :cond_0

    .line 3171
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->unlock()V

    goto :goto_0

    .line 3170
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 3171
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->unlock()V

    :cond_1
    throw v2
.end method

.method setVideoCodec(I)V
    .locals 0
    .param p1, "codec"    # I

    .prologue
    .line 2078
    iput p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportVideoCodec:I

    .line 2079
    return-void
.end method

.method stop(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 3753
    :try_start_0
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->stopEncoding()V

    .line 3754
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3762
    return-void

    .line 3755
    :catch_0
    move-exception v0

    .line 3756
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Illegal state exception in unload settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    throw v0

    .line 3758
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 3759
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Runtime exception in unload settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3760
    throw v0
.end method

.method stopPreview()J
    .locals 2

    .prologue
    .line 3055
    invoke-direct {p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->nativeStopPreview()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
