.class public Landroid/media/videoeditor/VideoEditorImpl;
.super Ljava/lang/Object;
.source "VideoEditorImpl.java"

# interfaces
.implements Landroid/media/videoeditor/VideoEditor;


# static fields
.field private static final ATTR_AFTER_MEDIA_ITEM_ID:Ljava/lang/String; = "after_media_item"

.field private static final ATTR_ASPECT_RATIO:Ljava/lang/String; = "aspect_ratio"

.field private static final ATTR_AUDIO_WAVEFORM_FILENAME:Ljava/lang/String; = "waveform"

.field private static final ATTR_BEFORE_MEDIA_ITEM_ID:Ljava/lang/String; = "before_media_item"

.field private static final ATTR_BEGIN_TIME:Ljava/lang/String; = "begin_time"

.field private static final ATTR_BEHAVIOR:Ljava/lang/String; = "behavior"

.field private static final ATTR_BLENDING:Ljava/lang/String; = "blending"

.field private static final ATTR_COLOR_EFFECT_TYPE:Ljava/lang/String; = "color_type"

.field private static final ATTR_COLOR_EFFECT_VALUE:Ljava/lang/String; = "color_value"

.field private static final ATTR_DIRECTION:Ljava/lang/String; = "direction"

.field private static final ATTR_DUCKED_TRACK_VOLUME:Ljava/lang/String; = "ducking_volume"

.field private static final ATTR_DUCK_ENABLED:Ljava/lang/String; = "ducking_enabled"

.field private static final ATTR_DUCK_THRESHOLD:Ljava/lang/String; = "ducking_threshold"

.field private static final ATTR_DURATION:Ljava/lang/String; = "duration"

.field private static final ATTR_END_RECT_BOTTOM:Ljava/lang/String; = "end_b"

.field private static final ATTR_END_RECT_LEFT:Ljava/lang/String; = "end_l"

.field private static final ATTR_END_RECT_RIGHT:Ljava/lang/String; = "end_r"

.field private static final ATTR_END_RECT_TOP:Ljava/lang/String; = "end_t"

.field private static final ATTR_END_TIME:Ljava/lang/String; = "end_time"

.field private static final ATTR_FILENAME:Ljava/lang/String; = "filename"

.field private static final ATTR_GENERATED_IMAGE_CLIP:Ljava/lang/String; = "generated_image_clip"

.field private static final ATTR_GENERATED_TRANSITION_CLIP:Ljava/lang/String; = "generated_transition_clip"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_INVERT:Ljava/lang/String; = "invert"

.field private static final ATTR_IS_IMAGE_CLIP_GENERATED:Ljava/lang/String; = "is_image_clip_generated"

.field private static final ATTR_IS_TRANSITION_GENERATED:Ljava/lang/String; = "is_transition_generated"

.field private static final ATTR_LOOP:Ljava/lang/String; = "loop"

.field private static final ATTR_MASK:Ljava/lang/String; = "mask"

.field private static final ATTR_MUTED:Ljava/lang/String; = "muted"

.field private static final ATTR_OVERLAY_FRAME_HEIGHT:Ljava/lang/String; = "overlay_frame_height"

.field private static final ATTR_OVERLAY_FRAME_WIDTH:Ljava/lang/String; = "overlay_frame_width"

.field private static final ATTR_OVERLAY_RESIZED_RGB_FRAME_HEIGHT:Ljava/lang/String; = "resized_RGBframe_height"

.field private static final ATTR_OVERLAY_RESIZED_RGB_FRAME_WIDTH:Ljava/lang/String; = "resized_RGBframe_width"

.field private static final ATTR_OVERLAY_RGB_FILENAME:Ljava/lang/String; = "overlay_rgb_filename"

.field private static final ATTR_REGENERATE_PCM:Ljava/lang/String; = "regeneratePCMFlag"

.field private static final ATTR_RENDERING_MODE:Ljava/lang/String; = "rendering_mode"

.field private static final ATTR_START_RECT_BOTTOM:Ljava/lang/String; = "start_b"

.field private static final ATTR_START_RECT_LEFT:Ljava/lang/String; = "start_l"

.field private static final ATTR_START_RECT_RIGHT:Ljava/lang/String; = "start_r"

.field private static final ATTR_START_RECT_TOP:Ljava/lang/String; = "start_t"

.field private static final ATTR_START_TIME:Ljava/lang/String; = "start_time"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_VOLUME:Ljava/lang/String; = "volume"

.field private static final ENGINE_ACCESS_MAX_TIMEOUT_MS:I = 0x1f4

.field private static final PROJECT_FILENAME:Ljava/lang/String; = "videoeditor.xml"

.field private static final TAG:Ljava/lang/String; = "VideoEditorImpl"

.field private static final TAG_AUDIO_TRACK:Ljava/lang/String; = "audio_track"

.field private static final TAG_AUDIO_TRACKS:Ljava/lang/String; = "audio_tracks"

.field private static final TAG_EFFECT:Ljava/lang/String; = "effect"

.field private static final TAG_EFFECTS:Ljava/lang/String; = "effects"

.field private static final TAG_MEDIA_ITEM:Ljava/lang/String; = "media_item"

.field private static final TAG_MEDIA_ITEMS:Ljava/lang/String; = "media_items"

.field private static final TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field private static final TAG_OVERLAYS:Ljava/lang/String; = "overlays"

.field private static final TAG_OVERLAY_USER_ATTRIBUTES:Ljava/lang/String; = "overlay_user_attributes"

.field private static final TAG_PROJECT:Ljava/lang/String; = "project"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "transition"

.field private static final TAG_TRANSITIONS:Ljava/lang/String; = "transitions"


# instance fields
.field private mAspectRatio:I

.field private final mAudioTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mDurationMs:J

.field private final mLock:Ljava/util/concurrent/Semaphore;

.field private mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

.field private final mMallocDebug:Z

.field private final mMediaItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewInProgress:Z

.field private final mProjectPath:Ljava/lang/String;

.field private final mTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "projectPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    .line 130
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    .line 131
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    .line 139
    iput-boolean v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    .line 150
    const-string v3, "libc.debug.malloc"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "s":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    iput-boolean v5, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMallocDebug:Z

    .line 154
    :try_start_0
    const-string v3, "HeapAtStart"

    invoke-static {v3}, Landroid/media/videoeditor/VideoEditorImpl;->dumpHeap(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v5, v5}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    .line 162
    new-instance v3, Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, p1, v4, p0}, Landroid/media/videoeditor/MediaArtistNativeHelper;-><init>(Ljava/lang/String;Ljava/util/concurrent/Semaphore;Landroid/media/videoeditor/VideoEditor;)V

    iput-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    .line 163
    iput-object p1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    .line 164
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "videoeditor.xml"

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v1, "projectXml":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    :try_start_1
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->load()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    :goto_1
    return-void

    .line 155
    .end local v1    # "projectXml":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "VideoEditorImpl"

    const-string v4, "dumpHeap returned error in constructor"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    iput-boolean v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMallocDebug:Z

    goto :goto_0

    .line 168
    .restart local v1    # "projectXml":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 169
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 173
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x2

    iput v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAspectRatio:I

    .line 174
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    goto :goto_1
.end method

.method private computeTimelineDuration()V
    .locals 7

    .prologue
    .line 1799
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    .line 1800
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1801
    .local v2, "mediaItemsCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1802
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/MediaItem;

    .line 1803
    .local v1, "mediaItem":Landroid/media/videoeditor/MediaItem;
    iget-wide v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getTimelineDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    .line 1804
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1805
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_0

    .line 1806
    iget-wide v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    .line 1801
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1810
    .end local v1    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    :cond_1
    return-void
.end method

.method private static dumpHeap(Ljava/lang/String;)V
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1955
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1956
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 1957
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 1958
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 1959
    .local v2, "state":Ljava/lang/String;
    const-string/jumbo v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1960
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1965
    .local v0, "extDir":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dump"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1966
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dump"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1970
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".dump"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1972
    .local v1, "ost":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Debug;->dumpNativeHeap(Ljava/io/FileDescriptor;)V

    .line 1973
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1975
    .end local v0    # "extDir":Ljava/lang/String;
    .end local v1    # "ost":Ljava/io/FileOutputStream;
    :cond_1
    return-void
.end method

.method private generateProjectThumbnail()V
    .locals 13

    .prologue
    .line 1819
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "thumbnail.jpg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1820
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "thumbnail.jpg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1825
    :cond_0
    iget-object v10, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 1826
    iget-object v10, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/videoeditor/MediaItem;

    .line 1830
    .local v4, "mI":Landroid/media/videoeditor/MediaItem;
    const/16 v3, 0x1e0

    .line 1831
    .local v3, "height":I
    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getWidth()I

    move-result v10

    mul-int/2addr v10, v3

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v11

    div-int v9, v10, v11

    .line 1833
    .local v9, "width":I
    const/4 v6, 0x0

    .line 1834
    .local v6, "projectBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getFilename()Ljava/lang/String;

    move-result-object v2

    .line 1835
    .local v2, "filename":Ljava/lang/String;
    instance-of v10, v4, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v10, :cond_3

    .line 1836
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1837
    .local v7, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v7, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1838
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1839
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1840
    const/4 v7, 0x0

    .line 1841
    if-nez v0, :cond_1

    .line 1842
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Thumbnail extraction from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1844
    .local v5, "msg":Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1847
    .end local v5    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v10, 0x1

    invoke-static {v0, v9, v3, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1863
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "retriever":Landroid/media/MediaMetadataRetriever;
    :goto_0
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "thumbnail.jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1865
    .local v8, "stream":Ljava/io/FileOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v6, v10, v11, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1866
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 1867
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1871
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1874
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "height":I
    .end local v4    # "mI":Landroid/media/videoeditor/MediaItem;
    .end local v6    # "projectBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .end local v9    # "width":I
    :cond_2
    return-void

    .line 1851
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v3    # "height":I
    .restart local v4    # "mI":Landroid/media/videoeditor/MediaItem;
    .restart local v6    # "projectBitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "width":I
    :cond_3
    const-wide/16 v10, 0x1f4

    :try_start_1
    invoke-virtual {v4, v9, v3, v10, v11}, Landroid/media/videoeditor/MediaItem;->getThumbnail(IIJ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_0

    .line 1852
    :catch_0
    move-exception v1

    .line 1853
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Project thumbnail extraction from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1855
    .restart local v5    # "msg":Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1856
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1857
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "IO Error creating project thumbnail"

    .line 1858
    .restart local v5    # "msg":Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1868
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "msg":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 1869
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Error creating project thumbnail"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1871
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    throw v10
.end method

.method private load()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 966
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string/jumbo v23, "videoeditor.xml"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    .local v10, "file":Ljava/io/File;
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 972
    .local v12, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 974
    .local v14, "ignoredMediaItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v19

    .line 975
    .local v19, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v22, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v12, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 976
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    .line 978
    .local v8, "eventType":I
    const/4 v5, 0x0

    .line 979
    .local v5, "currentMediaItem":Landroid/media/videoeditor/MediaItem;
    const/4 v6, 0x0

    .line 980
    .local v6, "currentOverlay":Landroid/media/videoeditor/Overlay;
    const/16 v20, 0x0

    .line 981
    .local v20, "regenerateProjectThumbnail":Z
    :goto_0
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v8, v0, :cond_c

    .line 982
    packed-switch v8, :pswitch_data_0

    .line 1098
    :cond_0
    :goto_1
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    goto :goto_0

    .line 984
    :pswitch_0
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 985
    .local v18, "name":Ljava/lang/String;
    const-string/jumbo v22, "project"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 986
    const-string v22, ""

    const-string v23, "aspect_ratio"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/videoeditor/VideoEditorImpl;->mAspectRatio:I

    .line 989
    const-string v22, ""

    const-string/jumbo v23, "regeneratePCMFlag"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v16

    .line 992
    .local v16, "mRegenPCM":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setAudioflag(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1107
    .end local v5    # "currentMediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v6    # "currentOverlay":Landroid/media/videoeditor/Overlay;
    .end local v8    # "eventType":I
    .end local v14    # "ignoredMediaItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "mRegenPCM":Z
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "regenerateProjectThumbnail":Z
    :catchall_0
    move-exception v22

    if-eqz v12, :cond_1

    .line 1108
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    :cond_1
    throw v22

    .line 993
    .restart local v5    # "currentMediaItem":Landroid/media/videoeditor/MediaItem;
    .restart local v6    # "currentOverlay":Landroid/media/videoeditor/Overlay;
    .restart local v8    # "eventType":I
    .restart local v14    # "ignoredMediaItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20    # "regenerateProjectThumbnail":Z
    :cond_2
    :try_start_1
    const-string/jumbo v22, "media_item"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 994
    const-string v22, ""

    const-string v23, "id"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v17

    .line 996
    .local v17, "mediaItemId":Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/media/videoeditor/VideoEditorImpl;->parseMediaItem(Lorg/xmlpull/v1/XmlPullParser;)Landroid/media/videoeditor/MediaItem;

    move-result-object v5

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 998
    :catch_0
    move-exception v9

    .line 999
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v22, "VideoEditorImpl"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot load media item: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1000
    const/4 v5, 0x0

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-nez v22, :cond_3

    .line 1004
    const/16 v20, 0x1

    .line 1007
    :cond_3
    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1009
    .end local v9    # "ex":Ljava/lang/Exception;
    .end local v17    # "mediaItemId":Ljava/lang/String;
    :cond_4
    const-string/jumbo v22, "transition"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v22

    if-eqz v22, :cond_5

    .line 1011
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v14}, Landroid/media/videoeditor/VideoEditorImpl;->parseTransition(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Landroid/media/videoeditor/Transition;

    move-result-object v21

    .line 1015
    .local v21, "transition":Landroid/media/videoeditor/Transition;
    if-eqz v21, :cond_0

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1018
    .end local v21    # "transition":Landroid/media/videoeditor/Transition;
    :catch_1
    move-exception v9

    .line 1019
    .restart local v9    # "ex":Ljava/lang/Exception;
    :try_start_5
    const-string v22, "VideoEditorImpl"

    const-string v23, "Cannot load transition"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1021
    .end local v9    # "ex":Ljava/lang/Exception;
    :cond_5
    const-string/jumbo v22, "overlay"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v22

    if-eqz v22, :cond_6

    .line 1022
    if-eqz v5, :cond_0

    .line 1024
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Landroid/media/videoeditor/VideoEditorImpl;->parseOverlay(Lorg/xmlpull/v1/XmlPullParser;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Overlay;

    move-result-object v6

    .line 1025
    invoke-virtual {v5, v6}, Landroid/media/videoeditor/MediaItem;->addOverlay(Landroid/media/videoeditor/Overlay;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1026
    :catch_2
    move-exception v9

    .line 1027
    .restart local v9    # "ex":Ljava/lang/Exception;
    :try_start_7
    const-string v22, "VideoEditorImpl"

    const-string v23, "Cannot load overlay"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1030
    .end local v9    # "ex":Ljava/lang/Exception;
    :cond_6
    const-string/jumbo v22, "overlay_user_attributes"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1031
    if-eqz v6, :cond_0

    .line 1032
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 1033
    .local v3, "attributesCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v3, :cond_0

    .line 1034
    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/media/videoeditor/Overlay;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1038
    .end local v3    # "attributesCount":I
    .end local v13    # "i":I
    :cond_7
    const-string v22, "effect"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v22

    if-eqz v22, :cond_a

    .line 1039
    if-eqz v5, :cond_0

    .line 1041
    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Landroid/media/videoeditor/VideoEditorImpl;->parseEffect(Lorg/xmlpull/v1/XmlPullParser;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Effect;

    move-result-object v7

    .line 1042
    .local v7, "effect":Landroid/media/videoeditor/Effect;
    invoke-virtual {v5, v7}, Landroid/media/videoeditor/MediaItem;->addEffect(Landroid/media/videoeditor/Effect;)V

    .line 1044
    instance-of v0, v7, Landroid/media/videoeditor/EffectKenBurns;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 1045
    const-string v22, ""

    const-string v23, "is_image_clip_generated"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 1048
    .local v15, "isImageClipGenerated":Z
    if-eqz v15, :cond_9

    .line 1049
    const-string v22, ""

    const-string v23, "generated_image_clip"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1051
    .local v11, "filename":Ljava/lang/String;
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 1052
    move-object v0, v5

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/media/videoeditor/MediaImageItem;->setGeneratedImageClip(Ljava/lang/String;)V

    .line 1054
    move-object v0, v5

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/media/videoeditor/MediaImageItem;->setRegenerateClip(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 1069
    .end local v7    # "effect":Landroid/media/videoeditor/Effect;
    .end local v11    # "filename":Ljava/lang/String;
    .end local v15    # "isImageClipGenerated":Z
    :catch_3
    move-exception v9

    .line 1070
    .restart local v9    # "ex":Ljava/lang/Exception;
    :try_start_9
    const-string v22, "VideoEditorImpl"

    const-string v23, "Cannot load effect"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 1057
    .end local v9    # "ex":Ljava/lang/Exception;
    .restart local v7    # "effect":Landroid/media/videoeditor/Effect;
    .restart local v11    # "filename":Ljava/lang/String;
    .restart local v15    # "isImageClipGenerated":Z
    :cond_8
    :try_start_a
    move-object v0, v5

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/media/videoeditor/MediaImageItem;->setGeneratedImageClip(Ljava/lang/String;)V

    .line 1059
    move-object v0, v5

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/media/videoeditor/MediaImageItem;->setRegenerateClip(Z)V

    goto/16 :goto_1

    .line 1063
    .end local v11    # "filename":Ljava/lang/String;
    :cond_9
    move-object v0, v5

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/media/videoeditor/MediaImageItem;->setGeneratedImageClip(Ljava/lang/String;)V

    .line 1065
    move-object v0, v5

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/media/videoeditor/MediaImageItem;->setRegenerateClip(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 1073
    .end local v7    # "effect":Landroid/media/videoeditor/Effect;
    .end local v15    # "isImageClipGenerated":Z
    :cond_a
    :try_start_b
    const-string v22, "audio_track"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v22

    if-eqz v22, :cond_0

    .line 1075
    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/media/videoeditor/VideoEditorImpl;->parseAudioTrack(Lorg/xmlpull/v1/XmlPullParser;)Landroid/media/videoeditor/AudioTrack;

    move-result-object v4

    .line 1076
    .local v4, "audioTrack":Landroid/media/videoeditor/AudioTrack;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/videoeditor/VideoEditorImpl;->addAudioTrack(Landroid/media/videoeditor/AudioTrack;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 1077
    .end local v4    # "audioTrack":Landroid/media/videoeditor/AudioTrack;
    :catch_4
    move-exception v9

    .line 1078
    .restart local v9    # "ex":Ljava/lang/Exception;
    :try_start_d
    const-string v22, "VideoEditorImpl"

    const-string v23, "Cannot load audio track"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1085
    .end local v9    # "ex":Ljava/lang/Exception;
    .end local v18    # "name":Ljava/lang/String;
    :pswitch_1
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1086
    .restart local v18    # "name":Ljava/lang/String;
    const-string/jumbo v22, "media_item"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 1087
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1088
    :cond_b
    const-string/jumbo v22, "overlay"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1089
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1100
    .end local v18    # "name":Ljava/lang/String;
    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 1102
    if-eqz v20, :cond_d

    .line 1103
    invoke-direct/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1107
    :cond_d
    if-eqz v12, :cond_e

    .line 1108
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 1111
    :cond_e
    return-void

    .line 982
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
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

    .line 1909
    const-string v0, "VideoEditorImpl"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1910
    const-string v0, "VideoEditorImpl"

    const-string v1, "lock: grabbing semaphore"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1912
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1913
    const-string v0, "VideoEditorImpl"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1914
    const-string v0, "VideoEditorImpl"

    const-string v1, "lock: grabbed semaphore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    :cond_1
    return-void
.end method

.method private lock(J)Z
    .locals 5
    .param p1, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 1927
    const-string v1, "VideoEditorImpl"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1928
    const-string v1, "VideoEditorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock: grabbing semaphore with timeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1931
    :cond_0
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 1932
    .local v0, "acquireSem":Z
    const-string v1, "VideoEditorImpl"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1933
    const-string v1, "VideoEditorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock: grabbed semaphore status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    :cond_1
    return v0
.end method

.method private parseAudioTrack(Lorg/xmlpull/v1/XmlPullParser;)Landroid/media/videoeditor/AudioTrack;
    .locals 20
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1340
    const-string v3, ""

    const-string v19, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1341
    .local v4, "audioTrackId":Ljava/lang/String;
    const-string v3, ""

    const-string v19, "filename"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1342
    .local v5, "filename":Ljava/lang/String;
    const-string v3, ""

    const-string/jumbo v19, "start_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1343
    .local v6, "startTimeMs":J
    const-string v3, ""

    const-string v19, "begin_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1344
    .local v8, "beginMs":J
    const-string v3, ""

    const-string v19, "end_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1345
    .local v10, "endMs":J
    const-string v3, ""

    const-string/jumbo v19, "volume"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1346
    .local v13, "volume":I
    const-string v3, ""

    const-string/jumbo v19, "muted"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 1347
    .local v14, "muted":Z
    const-string v3, ""

    const-string v19, "loop"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 1348
    .local v12, "loop":Z
    const-string v3, ""

    const-string v19, "ducking_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 1350
    .local v15, "duckingEnabled":Z
    const-string v3, ""

    const-string v19, "ducking_threshold"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1352
    .local v16, "duckThreshold":I
    const-string v3, ""

    const-string v19, "ducking_volume"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1355
    .local v17, "duckedTrackVolume":I
    const-string v3, ""

    const-string/jumbo v19, "waveform"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1356
    .local v18, "waveformFilename":Ljava/lang/String;
    new-instance v2, Landroid/media/videoeditor/AudioTrack;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v18}, Landroid/media/videoeditor/AudioTrack;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JJJZIZZIILjava/lang/String;)V

    .line 1365
    .local v2, "audioTrack":Landroid/media/videoeditor/AudioTrack;
    return-object v2
.end method

.method private parseEffect(Lorg/xmlpull/v1/XmlPullParser;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Effect;
    .locals 20
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "mediaItem"    # Landroid/media/videoeditor/MediaItem;

    .prologue
    .line 1294
    const-string v2, ""

    const-string v10, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1295
    .local v3, "effectId":Ljava/lang/String;
    const-string v2, ""

    const-string/jumbo v10, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1296
    .local v19, "type":Ljava/lang/String;
    const-string v2, ""

    const-string v10, "duration"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1297
    .local v6, "durationMs":J
    const-string v2, ""

    const-string v10, "begin_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1300
    .local v4, "startTimeMs":J
    const-class v2, Landroid/media/videoeditor/EffectColor;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1301
    const-string v2, ""

    const-string v10, "color_type"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1304
    .local v8, "colorEffectType":I
    const/4 v2, 0x1

    if-eq v8, v2, :cond_0

    const/4 v2, 0x2

    if-ne v8, v2, :cond_1

    .line 1306
    :cond_0
    const-string v2, ""

    const-string v10, "color_value"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1310
    .local v9, "color":I
    :goto_0
    new-instance v1, Landroid/media/videoeditor/EffectColor;

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v9}, Landroid/media/videoeditor/EffectColor;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJII)V

    .line 1329
    .end local v8    # "colorEffectType":I
    .end local v9    # "color":I
    .local v1, "effect":Landroid/media/videoeditor/Effect;
    :goto_1
    return-object v1

    .line 1308
    .end local v1    # "effect":Landroid/media/videoeditor/Effect;
    .restart local v8    # "colorEffectType":I
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "color":I
    goto :goto_0

    .line 1312
    .end local v8    # "colorEffectType":I
    .end local v9    # "color":I
    :cond_2
    const-class v2, Landroid/media/videoeditor/EffectKenBurns;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1313
    new-instance v13, Landroid/graphics/Rect;

    const-string v2, ""

    const-string/jumbo v10, "start_l"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v10, ""

    const-string/jumbo v11, "start_t"

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, ""

    const-string/jumbo v12, "start_r"

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, ""

    const-string/jumbo v15, "start_b"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v13, v2, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1318
    .local v13, "startRect":Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    const-string v2, ""

    const-string v10, "end_l"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v10, ""

    const-string v11, "end_t"

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, ""

    const-string v12, "end_r"

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, ""

    const-string v15, "end_b"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v14, v2, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1323
    .local v14, "endRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/media/videoeditor/EffectKenBurns;

    move-object v10, v1

    move-object/from16 v11, p2

    move-object v12, v3

    move-wide v15, v4

    move-wide/from16 v17, v6

    invoke-direct/range {v10 .. v18}, Landroid/media/videoeditor/EffectKenBurns;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;JJ)V

    .line 1325
    .restart local v1    # "effect":Landroid/media/videoeditor/Effect;
    goto/16 :goto_1

    .line 1326
    .end local v1    # "effect":Landroid/media/videoeditor/Effect;
    .end local v13    # "startRect":Landroid/graphics/Rect;
    .end local v14    # "endRect":Landroid/graphics/Rect;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid effect type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseMediaItem(Lorg/xmlpull/v1/XmlPullParser;)Landroid/media/videoeditor/MediaItem;
    .locals 29
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1120
    const-string v5, ""

    const-string v11, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1121
    .local v6, "mediaItemId":Ljava/lang/String;
    const-string v5, ""

    const-string/jumbo v11, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1122
    .local v27, "type":Ljava/lang/String;
    const-string v5, ""

    const-string v11, "filename"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1123
    .local v7, "filename":Ljava/lang/String;
    const-string v5, ""

    const-string/jumbo v11, "rendering_mode"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1127
    .local v10, "renderingMode":I
    const-class v5, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1128
    const-string v5, ""

    const-string v11, "duration"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1129
    .local v8, "durationMs":J
    new-instance v4, Landroid/media/videoeditor/MediaImageItem;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Landroid/media/videoeditor/MediaImageItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 1151
    .end local v8    # "durationMs":J
    .local v4, "currentMediaItem":Landroid/media/videoeditor/MediaItem;
    :goto_0
    return-object v4

    .line 1131
    .end local v4    # "currentMediaItem":Landroid/media/videoeditor/MediaItem;
    :cond_0
    const-class v5, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1132
    const-string v5, ""

    const-string v11, "begin_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 1133
    .local v16, "beginMs":J
    const-string v5, ""

    const-string v11, "end_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 1134
    .local v18, "endMs":J
    const-string v5, ""

    const-string/jumbo v11, "volume"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1135
    .local v20, "volume":I
    const-string v5, ""

    const-string/jumbo v11, "muted"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    .line 1136
    .local v21, "muted":Z
    const-string v5, ""

    const-string/jumbo v11, "waveform"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1138
    .local v22, "audioWaveformFilename":Ljava/lang/String;
    new-instance v4, Landroid/media/videoeditor/MediaVideoItem;

    move-object v11, v4

    move-object/from16 v12, p0

    move-object v13, v6

    move-object v14, v7

    move v15, v10

    invoke-direct/range {v11 .. v22}, Landroid/media/videoeditor/MediaVideoItem;-><init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;IJJIZLjava/lang/String;)V

    .line 1141
    .restart local v4    # "currentMediaItem":Landroid/media/videoeditor/MediaItem;
    const-string v5, ""

    const-string v11, "begin_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    .line 1142
    .local v23, "beginTimeMs":J
    const-string v5, ""

    const-string v11, "end_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v25

    .local v25, "endTimeMs":J
    move-object v5, v4

    .line 1143
    check-cast v5, Landroid/media/videoeditor/MediaVideoItem;

    move-wide/from16 v0, v23

    move-wide/from16 v2, v25

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/media/videoeditor/MediaVideoItem;->setExtractBoundaries(JJ)V

    .line 1145
    const-string v5, ""

    const-string/jumbo v11, "volume"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .local v28, "volumePercent":I
    move-object v5, v4

    .line 1146
    check-cast v5, Landroid/media/videoeditor/MediaVideoItem;

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/media/videoeditor/MediaVideoItem;->setVolume(I)V

    goto/16 :goto_0

    .line 1148
    .end local v4    # "currentMediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v16    # "beginMs":J
    .end local v18    # "endMs":J
    .end local v20    # "volume":I
    .end local v21    # "muted":Z
    .end local v22    # "audioWaveformFilename":Ljava/lang/String;
    .end local v23    # "beginTimeMs":J
    .end local v25    # "endTimeMs":J
    .end local v28    # "volumePercent":I
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown media item type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private parseOverlay(Lorg/xmlpull/v1/XmlPullParser;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Overlay;
    .locals 17
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "mediaItem"    # Landroid/media/videoeditor/MediaItem;

    .prologue
    .line 1249
    const-string v2, ""

    const-string v15, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1250
    .local v3, "overlayId":Ljava/lang/String;
    const-string v2, ""

    const-string/jumbo v15, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1251
    .local v14, "type":Ljava/lang/String;
    const-string v2, ""

    const-string v15, "duration"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 1252
    .local v7, "durationMs":J
    const-string v2, ""

    const-string v15, "begin_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1255
    .local v5, "startTimeMs":J
    const-class v2, Landroid/media/videoeditor/OverlayFrame;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1256
    const-string v2, ""

    const-string v15, "filename"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1257
    .local v4, "filename":Ljava/lang/String;
    new-instance v1, Landroid/media/videoeditor/OverlayFrame;

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v8}, Landroid/media/videoeditor/OverlayFrame;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 1262
    .local v1, "overlay":Landroid/media/videoeditor/Overlay;
    const-string v2, ""

    const-string/jumbo v15, "overlay_rgb_filename"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1263
    .local v11, "overlayRgbFileName":Ljava/lang/String;
    if-eqz v11, :cond_0

    move-object v2, v1

    .line 1264
    check-cast v2, Landroid/media/videoeditor/OverlayFrame;

    invoke-virtual {v2, v11}, Landroid/media/videoeditor/OverlayFrame;->setFilename(Ljava/lang/String;)V

    .line 1266
    const-string v2, ""

    const-string/jumbo v15, "overlay_frame_width"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1268
    .local v10, "overlayFrameWidth":I
    const-string v2, ""

    const-string/jumbo v15, "overlay_frame_height"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .local v9, "overlayFrameHeight":I
    move-object v2, v1

    .line 1271
    check-cast v2, Landroid/media/videoeditor/OverlayFrame;

    invoke-virtual {v2, v10}, Landroid/media/videoeditor/OverlayFrame;->setOverlayFrameWidth(I)V

    move-object v2, v1

    .line 1272
    check-cast v2, Landroid/media/videoeditor/OverlayFrame;

    invoke-virtual {v2, v9}, Landroid/media/videoeditor/OverlayFrame;->setOverlayFrameHeight(I)V

    .line 1274
    const-string v2, ""

    const-string/jumbo v15, "resized_RGBframe_width"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1276
    .local v13, "resizedRGBFrameWidth":I
    const-string v2, ""

    const-string/jumbo v15, "resized_RGBframe_height"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .local v12, "resizedRGBFrameHeight":I
    move-object v2, v1

    .line 1279
    check-cast v2, Landroid/media/videoeditor/OverlayFrame;

    invoke-virtual {v2, v13, v12}, Landroid/media/videoeditor/OverlayFrame;->setResizedRGBSize(II)V

    .line 1282
    .end local v9    # "overlayFrameHeight":I
    .end local v10    # "overlayFrameWidth":I
    .end local v12    # "resizedRGBFrameHeight":I
    .end local v13    # "resizedRGBFrameWidth":I
    :cond_0
    return-object v1

    .line 1259
    .end local v1    # "overlay":Landroid/media/videoeditor/Overlay;
    .end local v4    # "filename":Ljava/lang/String;
    .end local v11    # "overlayRgbFileName":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid overlay type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v2, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseTransition(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)Landroid/media/videoeditor/Transition;
    .locals 25
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/videoeditor/Transition;"
        }
    .end annotation

    .prologue
    .line 1163
    .local p2, "ignoredMediaItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, ""

    const-string v13, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1164
    .local v3, "transitionId":Ljava/lang/String;
    const-string v12, ""

    const-string/jumbo v13, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1165
    .local v24, "type":Ljava/lang/String;
    const-string v12, ""

    const-string v13, "duration"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1166
    .local v6, "durationMs":J
    const-string v12, ""

    const-string v13, "behavior"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1168
    .local v8, "behavior":I
    const-string v12, ""

    const-string v13, "before_media_item"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1170
    .local v21, "beforeMediaItemId":Ljava/lang/String;
    if-eqz v21, :cond_2

    .line 1171
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1173
    const/4 v2, 0x0

    .line 1237
    :cond_0
    :goto_0
    return-object v2

    .line 1176
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/VideoEditorImpl;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v5

    .line 1181
    .local v5, "beforeMediaItem":Landroid/media/videoeditor/MediaItem;
    :goto_1
    const-string v12, ""

    const-string v13, "after_media_item"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1183
    .local v20, "afterMediaItemId":Ljava/lang/String;
    if-eqz v20, :cond_6

    .line 1184
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1186
    const/4 v2, 0x0

    goto :goto_0

    .line 1178
    .end local v5    # "beforeMediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v20    # "afterMediaItemId":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "beforeMediaItem":Landroid/media/videoeditor/MediaItem;
    goto :goto_1

    .line 1189
    .restart local v20    # "afterMediaItemId":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/VideoEditorImpl;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v4

    .line 1195
    .local v4, "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    :goto_2
    const-class v12, Landroid/media/videoeditor/TransitionAlpha;

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1196
    const-string v12, ""

    const-string v13, "blending"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1197
    .local v10, "blending":I
    const-string v12, ""

    const-string/jumbo v13, "mask"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1198
    .local v9, "maskFilename":Ljava/lang/String;
    const-string v12, ""

    const-string v13, "invert"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 1199
    .local v11, "invert":Z
    new-instance v2, Landroid/media/videoeditor/TransitionAlpha;

    invoke-direct/range {v2 .. v11}, Landroid/media/videoeditor/TransitionAlpha;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JILjava/lang/String;IZ)V

    .line 1215
    .end local v9    # "maskFilename":Ljava/lang/String;
    .end local v10    # "blending":I
    .end local v11    # "invert":Z
    .local v2, "transition":Landroid/media/videoeditor/Transition;
    :goto_3
    const-string v12, ""

    const-string v13, "is_transition_generated"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v22

    .line 1217
    .local v22, "isTransitionGenerated":Z
    const/4 v12, 0x1

    move/from16 v0, v22

    if-ne v0, v12, :cond_4

    .line 1218
    const-string v12, ""

    const-string v13, "generated_transition_clip"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1221
    .local v23, "transitionFile":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1222
    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/media/videoeditor/Transition;->setFilename(Ljava/lang/String;)V

    .line 1229
    .end local v23    # "transitionFile":Ljava/lang/String;
    :cond_4
    :goto_4
    if-eqz v5, :cond_5

    .line 1230
    invoke-virtual {v5, v2}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 1233
    :cond_5
    if-eqz v4, :cond_0

    .line 1234
    invoke-virtual {v4, v2}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    goto/16 :goto_0

    .line 1191
    .end local v2    # "transition":Landroid/media/videoeditor/Transition;
    .end local v4    # "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v22    # "isTransitionGenerated":Z
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    goto :goto_2

    .line 1201
    :cond_7
    const-class v12, Landroid/media/videoeditor/TransitionCrossfade;

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1202
    new-instance v2, Landroid/media/videoeditor/TransitionCrossfade;

    invoke-direct/range {v2 .. v8}, Landroid/media/videoeditor/TransitionCrossfade;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    .restart local v2    # "transition":Landroid/media/videoeditor/Transition;
    goto :goto_3

    .line 1204
    .end local v2    # "transition":Landroid/media/videoeditor/Transition;
    :cond_8
    const-class v12, Landroid/media/videoeditor/TransitionSliding;

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1205
    const-string v12, ""

    const-string v13, "direction"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 1206
    .local v19, "direction":I
    new-instance v2, Landroid/media/videoeditor/TransitionSliding;

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move-wide/from16 v16, v6

    move/from16 v18, v8

    invoke-direct/range {v12 .. v19}, Landroid/media/videoeditor/TransitionSliding;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JII)V

    .line 1208
    .restart local v2    # "transition":Landroid/media/videoeditor/Transition;
    goto :goto_3

    .end local v2    # "transition":Landroid/media/videoeditor/Transition;
    .end local v19    # "direction":I
    :cond_9
    const-class v12, Landroid/media/videoeditor/TransitionFadeBlack;

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1209
    new-instance v2, Landroid/media/videoeditor/TransitionFadeBlack;

    invoke-direct/range {v2 .. v8}, Landroid/media/videoeditor/TransitionFadeBlack;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    .restart local v2    # "transition":Landroid/media/videoeditor/Transition;
    goto/16 :goto_3

    .line 1212
    .end local v2    # "transition":Landroid/media/videoeditor/Transition;
    :cond_a
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid transition type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1224
    .restart local v2    # "transition":Landroid/media/videoeditor/Transition;
    .restart local v22    # "isTransitionGenerated":Z
    .restart local v23    # "transitionFile":Ljava/lang/String;
    :cond_b
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/media/videoeditor/Transition;->setFilename(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private removeAdjacentTransitions(Landroid/media/videoeditor/MediaItem;)V
    .locals 4
    .param p1, "mediaItem"    # Landroid/media/videoeditor/MediaItem;

    .prologue
    const/4 v3, 0x0

    .line 1724
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v0

    .line 1725
    .local v0, "beginTransition":Landroid/media/videoeditor/Transition;
    if-eqz v0, :cond_1

    .line 1726
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1727
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    .line 1729
    :cond_0
    invoke-virtual {v0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 1730
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1733
    :cond_1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v1

    .line 1734
    .local v1, "endTransition":Landroid/media/videoeditor/Transition;
    if-eqz v1, :cond_3

    .line 1735
    invoke-virtual {v1}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1736
    invoke-virtual {v1}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 1738
    :cond_2
    invoke-virtual {v1}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 1739
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1742
    :cond_3
    invoke-virtual {p1, v3}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 1743
    invoke-virtual {p1, v3}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    .line 1744
    return-void
.end method

.method private declared-synchronized removeMediaItem(Ljava/lang/String;Z)Landroid/media/videoeditor/MediaItem;
    .locals 4
    .param p1, "mediaItemId"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 852
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "firstItemString":Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/VideoEditorImpl;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v1

    .line 855
    .local v1, "mediaItem":Landroid/media/videoeditor/MediaItem;
    if-eqz v1, :cond_0

    .line 856
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 860
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 864
    invoke-direct {p0, v1}, Landroid/media/videoeditor/VideoEditorImpl;->removeAdjacentTransitions(Landroid/media/videoeditor/MediaItem;)V

    .line 865
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 872
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 873
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    :cond_1
    monitor-exit p0

    return-object v1

    .line 852
    .end local v0    # "firstItemString":Ljava/lang/String;
    .end local v1    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private removeTransitionAfter(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 1775
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/MediaItem;

    .line 1776
    .local v1, "mediaItem":Landroid/media/videoeditor/MediaItem;
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1777
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/videoeditor/Transition;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1778
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/Transition;

    .line 1779
    .local v2, "t":Landroid/media/videoeditor/Transition;
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v3

    if-ne v3, v1, :cond_0

    .line 1780
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 1781
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1782
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 1783
    invoke-virtual {v1, v5}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    .line 1787
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge p1, v3, :cond_1

    .line 1788
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    add-int/lit8 v4, p1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v3, v5}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 1793
    .end local v2    # "t":Landroid/media/videoeditor/Transition;
    :cond_1
    return-void
.end method

.method private removeTransitionBefore(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 1752
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/MediaItem;

    .line 1753
    .local v1, "mediaItem":Landroid/media/videoeditor/MediaItem;
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1754
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/videoeditor/Transition;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1755
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/Transition;

    .line 1756
    .local v2, "t":Landroid/media/videoeditor/Transition;
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v3

    if-ne v3, v1, :cond_0

    .line 1757
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 1758
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1759
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 1760
    invoke-virtual {v1, v5}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 1761
    if-lez p1, :cond_1

    .line 1762
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v3, v5}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    .line 1767
    .end local v2    # "t":Landroid/media/videoeditor/Transition;
    :cond_1
    return-void
.end method

.method private unlock()V
    .locals 2

    .prologue
    .line 1943
    const-string v0, "VideoEditorImpl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1944
    const-string v0, "VideoEditorImpl"

    const-string/jumbo v1, "unlock: releasing semaphore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1947
    return-void
.end method


# virtual methods
.method public declared-synchronized addAudioTrack(Landroid/media/videoeditor/AudioTrack;)V
    .locals 3
    .param p1, "audioTrack"    # Landroid/media/videoeditor/AudioTrack;

    .prologue
    const/4 v2, 0x1

    .line 189
    monitor-enter p0

    if-nez p1, :cond_0

    .line 190
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Audio Track is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 193
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 194
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No more tracks can be added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_1
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 202
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AudioPcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".pcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "audioTrackPCMFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setAudioflag(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addMediaItem(Landroid/media/videoeditor/MediaItem;)V
    .locals 4
    .param p1, "mediaItem"    # Landroid/media/videoeditor/MediaItem;

    .prologue
    const/4 v3, 0x1

    .line 226
    monitor-enter p0

    if-nez p1, :cond_0

    .line 227
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Media item is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 232
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media item already exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_1
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 241
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 242
    .local v0, "mediaItemsCount":I
    if-lez v0, :cond_2

    .line 243
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Landroid/media/videoeditor/VideoEditorImpl;->removeTransitionAfter(I)V

    .line 249
    :cond_2
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 256
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 257
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addTransition(Landroid/media/videoeditor/Transition;)V
    .locals 6
    .param p1, "transition"    # Landroid/media/videoeditor/Transition;

    .prologue
    const/4 v5, -0x1

    .line 266
    monitor-enter p0

    if-nez p1, :cond_0

    .line 267
    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Null Transition"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 270
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v2

    .line 271
    .local v2, "beforeMediaItem":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    .line 275
    .local v0, "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    if-nez v4, :cond_1

    .line 276
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "No media items are added"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 279
    :cond_1
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 280
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 281
    .local v1, "afterMediaItemIndex":I
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 283
    .local v3, "beforeMediaItemIndex":I
    if-eq v1, v5, :cond_2

    if-ne v3, v5, :cond_3

    .line 284
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Either of the mediaItem is not found in the list"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 288
    :cond_3
    add-int/lit8 v4, v3, -0x1

    if-eq v1, v4, :cond_4

    .line 289
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "MediaItems are not in sequence"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 293
    .end local v1    # "afterMediaItemIndex":I
    .end local v3    # "beforeMediaItemIndex":I
    :cond_4
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 295
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    if-eqz v0, :cond_6

    .line 304
    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 305
    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 306
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getEndTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 308
    :cond_5
    invoke-virtual {v0, p1}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    .line 311
    :cond_6
    if-eqz v2, :cond_8

    .line 316
    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 317
    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 318
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getBeginTransition()Landroid/media/videoeditor/Transition;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 320
    :cond_7
    invoke-virtual {v2, p1}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 323
    :cond_8
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    monitor-exit p0

    return-void
.end method

.method public cancelExport(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 330
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 331
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->stop(Ljava/lang/String;)V

    .line 333
    :cond_0
    return-void
.end method

.method public clearSurface(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1883
    if-nez p1, :cond_0

    .line 1884
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid surface holder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1887
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 1888
    .local v0, "surface":Landroid/view/Surface;
    if-nez v0, :cond_1

    .line 1889
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface could not be retrieved from surface holder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1892
    :cond_1
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1893
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Surface is not valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1896
    :cond_2
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-eqz v1, :cond_3

    .line 1897
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v1, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->clearPreviewSurface(Landroid/view/Surface;)V

    .line 1901
    :goto_0
    return-void

    .line 1899
    :cond_3
    const-string v1, "VideoEditorImpl"

    const-string v2, "Native helper was not ready!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public export(Ljava/lang/String;IIIILandroid/media/videoeditor/VideoEditor$ExportProgressListener;)V
    .locals 21
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "height"    # I
    .param p3, "bitrate"    # I
    .param p4, "audioCodec"    # I
    .param p5, "videoCodec"    # I
    .param p6, "listener"    # Landroid/media/videoeditor/VideoEditor$ExportProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    const/4 v11, 0x0

    .line 343
    .local v11, "audcodec":I
    const/16 v20, 0x0

    .line 344
    .local v20, "vidcodec":I
    if-nez p1, :cond_0

    .line 345
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "export: filename is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 348
    :cond_0
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .local v19, "tempPathFile":Ljava/io/File;
    if-nez v19, :cond_1

    .line 350
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "can not be created"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 353
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 354
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No MediaItems added"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    :cond_2
    sparse-switch p2, :sswitch_data_0

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported height value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 373
    .local v17, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 377
    .end local v17    # "message":Ljava/lang/String;
    :sswitch_0
    sparse-switch p3, :sswitch_data_1

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported bitrate value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 407
    .restart local v17    # "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 410
    .end local v17    # "message":Ljava/lang/String;
    :sswitch_1
    invoke-direct/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 411
    const-wide/32 v12, 0x17700

    .line 412
    .local v12, "audioBitrate":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    move/from16 v0, p3

    int-to-long v4, v0

    const-wide/32 v6, 0x17700

    add-long/2addr v4, v6

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x1f40

    div-long v15, v2, v4

    .line 413
    .local v15, "fileSize":J
    const-wide v2, 0x80000000L

    cmp-long v2, v2, v15

    if-gtz v2, :cond_3

    .line 414
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Export Size is more than 2GB"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 416
    :cond_3
    packed-switch p4, :pswitch_data_0

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported audio codec type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 426
    .restart local v17    # "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    .end local v17    # "message":Ljava/lang/String;
    :pswitch_0
    const/4 v11, 0x2

    .line 430
    :goto_0
    packed-switch p5, :pswitch_data_1

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported video codec type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 443
    .restart local v17    # "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 421
    .end local v17    # "message":Ljava/lang/String;
    :pswitch_1
    const/4 v11, 0x1

    .line 422
    goto :goto_0

    .line 432
    :pswitch_2
    const/16 v20, 0x1

    .line 447
    :goto_1
    const/16 v18, 0x0

    .line 449
    .local v18, "semAcquireDone":Z
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->lock()V

    .line 450
    const/16 v18, 0x1

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-nez v2, :cond_5

    .line 453
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The video editor is not initialized"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    :catch_0
    move-exception v14

    .line 460
    .local v14, "ex":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v2, "VideoEditorImpl"

    const-string v3, "Sem acquire NOT successful in export"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    if-eqz v18, :cond_4

    .line 463
    invoke-direct/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    .line 466
    .end local v14    # "ex":Ljava/lang/InterruptedException;
    :cond_4
    :goto_2
    return-void

    .line 435
    .end local v18    # "semAcquireDone":Z
    :pswitch_3
    const/16 v20, 0x2

    .line 436
    goto :goto_1

    .line 438
    :pswitch_4
    const/16 v20, 0x3

    .line 439
    goto :goto_1

    .line 455
    .restart local v18    # "semAcquireDone":Z
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v2, v11}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setAudioCodec(I)V

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setVideoCodec(I)V

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v10, p6

    invoke-virtual/range {v2 .. v10}, Landroid/media/videoeditor/MediaArtistNativeHelper;->export(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$ExportProgressListener;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 462
    if-eqz v18, :cond_4

    .line 463
    invoke-direct/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    goto :goto_2

    .line 462
    :catchall_0
    move-exception v2

    if-eqz v18, :cond_6

    .line 463
    invoke-direct/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    :cond_6
    throw v2

    .line 357
    :sswitch_data_0
    .sparse-switch
        0x90 -> :sswitch_0
        0x120 -> :sswitch_0
        0x168 -> :sswitch_0
        0x1e0 -> :sswitch_0
        0x2d0 -> :sswitch_0
        0x438 -> :sswitch_0
    .end sparse-switch

    .line 377
    :sswitch_data_1
    .sparse-switch
        0x6d60 -> :sswitch_1
        0x9c40 -> :sswitch_1
        0xfa00 -> :sswitch_1
        0x17700 -> :sswitch_1
        0x1f400 -> :sswitch_1
        0x2ee00 -> :sswitch_1
        0x3e800 -> :sswitch_1
        0x5dc00 -> :sswitch_1
        0x7d000 -> :sswitch_1
        0xc3500 -> :sswitch_1
        0x1e8480 -> :sswitch_1
        0x4c4b40 -> :sswitch_1
        0x7a1200 -> :sswitch_1
    .end sparse-switch

    .line 416
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 430
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public export(Ljava/lang/String;IILandroid/media/videoeditor/VideoEditor$ExportProgressListener;)V
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "height"    # I
    .param p3, "bitrate"    # I
    .param p4, "listener"    # Landroid/media/videoeditor/VideoEditor$ExportProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    const/4 v4, 0x2

    .line 475
    .local v4, "defaultAudiocodec":I
    const/4 v5, 0x2

    .local v5, "defaultVideocodec":I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    .line 477
    invoke-virtual/range {v0 .. v6}, Landroid/media/videoeditor/VideoEditorImpl;->export(Ljava/lang/String;IIIILandroid/media/videoeditor/VideoEditor$ExportProgressListener;)V

    .line 479
    return-void
.end method

.method public generatePreview(Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;

    .prologue
    .line 485
    const/4 v1, 0x0

    .line 487
    .local v1, "semAcquireDone":Z
    :try_start_0
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->lock()V

    .line 488
    const/4 v1, 0x1

    .line 490
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-nez v2, :cond_1

    .line 491
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The video editor is not initialized"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v2, "VideoEditorImpl"

    const-string v3, "Sem acquire NOT successful in previewStoryBoard"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    if-eqz v1, :cond_0

    .line 502
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    .line 505
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 495
    :cond_2
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    iget-object v5, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-virtual {v2, v3, v4, v5, p1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->previewStoryBoard(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 501
    :cond_3
    if-eqz v1, :cond_0

    .line 502
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    .line 502
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    :cond_4
    throw v2
.end method

.method public getAllAudioTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    return-object v0
.end method

.method public getAllMediaItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    return-object v0
.end method

.method public getAllTransitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Transition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    return-object v0
.end method

.method public getAspectRatio()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAspectRatio:I

    return v0
.end method

.method public getAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;
    .locals 3
    .param p1, "audioTrackId"    # Ljava/lang/String;

    .prologue
    .line 539
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/AudioTrack;

    .line 540
    .local v0, "at":Landroid/media/videoeditor/AudioTrack;
    invoke-virtual {v0}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    .end local v0    # "at":Landroid/media/videoeditor/AudioTrack;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 555
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 556
    iget-wide v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    return-wide v0
.end method

.method public declared-synchronized getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;
    .locals 3
    .param p1, "mediaItemId"    # Ljava/lang/String;

    .prologue
    .line 570
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/MediaItem;

    .line 571
    .local v1, "mediaItem":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    .end local v1    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 570
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;
    .locals 3
    .param p1, "transitionId"    # Ljava/lang/String;

    .prologue
    .line 589
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Transition;

    .line 590
    .local v1, "transition":Landroid/media/videoeditor/Transition;
    invoke-virtual {v1}, Landroid/media/videoeditor/Transition;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    .end local v1    # "transition":Landroid/media/videoeditor/Transition;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized insertAudioTrack(Landroid/media/videoeditor/AudioTrack;Ljava/lang/String;)V
    .locals 6
    .param p1, "audioTrack"    # Landroid/media/videoeditor/AudioTrack;
    .param p2, "afterAudioTrackId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 602
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 603
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No more tracks can be added"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 606
    :cond_0
    if-nez p2, :cond_1

    .line 607
    :try_start_1
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 608
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    :goto_0
    monitor-exit p0

    return-void

    .line 610
    :cond_1
    :try_start_2
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 611
    .local v1, "audioTrackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 612
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/AudioTrack;

    .line 613
    .local v0, "at":Landroid/media/videoeditor/AudioTrack;
    invoke-virtual {v0}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 614
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 615
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 611
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 620
    .end local v0    # "at":Landroid/media/videoeditor/AudioTrack;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioTrack not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized insertMediaItem(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;)V
    .locals 6
    .param p1, "mediaItem"    # Landroid/media/videoeditor/MediaItem;
    .param p2, "afterMediaItemId"    # Ljava/lang/String;

    .prologue
    .line 628
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 629
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Media item already exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 632
    :cond_0
    if-nez p2, :cond_2

    .line 633
    :try_start_1
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 634
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 638
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/media/videoeditor/VideoEditorImpl;->removeTransitionBefore(I)V

    .line 641
    :cond_1
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 642
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 643
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    :goto_0
    monitor-exit p0

    return-void

    .line 645
    :cond_2
    :try_start_2
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 646
    .local v1, "mediaItemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 647
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaItem;

    .line 648
    .local v2, "mi":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 649
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 653
    invoke-direct {p0, v0}, Landroid/media/videoeditor/VideoEditorImpl;->removeTransitionAfter(I)V

    .line 657
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 658
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    goto :goto_0

    .line 646
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 663
    .end local v2    # "mi":Landroid/media/videoeditor/MediaItem;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaItem not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized moveAudioTrack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "audioTrackId"    # Ljava/lang/String;
    .param p2, "afterAudioTrackId"    # Ljava/lang/String;

    .prologue
    .line 671
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized moveMediaItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "mediaItemId"    # Ljava/lang/String;
    .param p2, "afterMediaItemId"    # Ljava/lang/String;

    .prologue
    .line 678
    monitor-enter p0

    const/4 v4, 0x1

    :try_start_0
    invoke-direct {p0, p1, v4}, Landroid/media/videoeditor/VideoEditorImpl;->removeMediaItem(Ljava/lang/String;Z)Landroid/media/videoeditor/MediaItem;

    move-result-object v3

    .line 679
    .local v3, "moveMediaItem":Landroid/media/videoeditor/MediaItem;
    if-nez v3, :cond_0

    .line 680
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Target MediaItem not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    .end local v3    # "moveMediaItem":Landroid/media/videoeditor/MediaItem;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 683
    .restart local v3    # "moveMediaItem":Landroid/media/videoeditor/MediaItem;
    :cond_0
    if-nez p2, :cond_2

    .line 684
    :try_start_1
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 685
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 690
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/media/videoeditor/VideoEditorImpl;->removeTransitionBefore(I)V

    .line 695
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 696
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 698
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 723
    :goto_0
    monitor-exit p0

    return-void

    .line 700
    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot move media item (it is the only item)"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 703
    :cond_2
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 704
    .local v1, "mediaItemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 705
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaItem;

    .line 706
    .local v2, "mi":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 707
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 711
    invoke-direct {p0, v0}, Landroid/media/videoeditor/VideoEditorImpl;->removeTransitionAfter(I)V

    .line 715
    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v4, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 716
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    goto :goto_0

    .line 704
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 721
    .end local v2    # "mi":Landroid/media/videoeditor/MediaItem;
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaItem not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 729
    invoke-virtual {p0}, Landroid/media/videoeditor/VideoEditorImpl;->stopPreview()J

    .line 731
    const/4 v1, 0x0

    .line 733
    .local v1, "semAcquireDone":Z
    :try_start_0
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->lock()V

    .line 734
    const/4 v1, 0x1

    .line 736
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-eqz v2, :cond_0

    .line 737
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 738
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 739
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 740
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->releaseNativeHelper()V

    .line 741
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    :cond_0
    if-eqz v1, :cond_1

    .line 747
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    .line 750
    :cond_1
    :goto_0
    iget-boolean v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMallocDebug:Z

    if-eqz v2, :cond_2

    .line 752
    :try_start_1
    const-string v2, "HeapAtEnd"

    invoke-static {v2}, Landroid/media/videoeditor/VideoEditorImpl;->dumpHeap(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 757
    :cond_2
    :goto_1
    return-void

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "VideoEditorImpl"

    const-string v3, "Sem acquire NOT successful in export"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 746
    if-eqz v1, :cond_1

    .line 747
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    goto :goto_0

    .line 746
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 747
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    :cond_3
    throw v2

    .line 753
    :catch_1
    move-exception v0

    .line 754
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string v2, "VideoEditorImpl"

    const-string v3, "dumpHeap returned error in release"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized removeAllMediaItems()V
    .locals 5

    .prologue
    .line 763
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 765
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 770
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Transition;

    .line 771
    .local v1, "transition":Landroid/media/videoeditor/Transition;
    invoke-virtual {v1}, Landroid/media/videoeditor/Transition;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 763
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "transition":Landroid/media/videoeditor/Transition;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 773
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 775
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    .line 779
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "thumbnail.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 780
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "thumbnail.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 783
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;
    .locals 3
    .param p1, "audioTrackId"    # Ljava/lang/String;

    .prologue
    .line 789
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/VideoEditorImpl;->getAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;

    move-result-object v0

    .line 790
    .local v0, "audioTrack":Landroid/media/videoeditor/AudioTrack;
    if-eqz v0, :cond_0

    .line 791
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 792
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 793
    invoke-virtual {v0}, Landroid/media/videoeditor/AudioTrack;->invalidate()V

    .line 794
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->invalidatePcmFile()V

    .line 795
    iget-object v1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setAudioflag(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    monitor-exit p0

    return-object v0

    .line 797
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, " No more audio tracks"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 789
    .end local v0    # "audioTrack":Landroid/media/videoeditor/AudioTrack;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;
    .locals 9
    .param p1, "mediaItemId"    # Ljava/lang/String;

    .prologue
    .line 806
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v1

    .line 807
    .local v1, "firstItemString":Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/VideoEditorImpl;->getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;

    move-result-object v3

    .line 808
    .local v3, "mediaItem":Landroid/media/videoeditor/MediaItem;
    if-eqz v3, :cond_3

    .line 809
    iget-object v7, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 813
    iget-object v7, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 814
    instance-of v7, v3, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v7, :cond_0

    .line 815
    move-object v0, v3

    check-cast v0, Landroid/media/videoeditor/MediaImageItem;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaImageItem;->invalidate()V

    .line 817
    :cond_0
    invoke-virtual {v3}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v6

    .line 818
    .local v6, "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 819
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/videoeditor/Overlay;

    .line 820
    .local v4, "overlay":Landroid/media/videoeditor/Overlay;
    instance-of v7, v4, Landroid/media/videoeditor/OverlayFrame;

    if-eqz v7, :cond_1

    .line 821
    move-object v0, v4

    check-cast v0, Landroid/media/videoeditor/OverlayFrame;

    move-object v5, v0

    .line 822
    .local v5, "overlayFrame":Landroid/media/videoeditor/OverlayFrame;
    invoke-virtual {v5}, Landroid/media/videoeditor/OverlayFrame;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 806
    .end local v1    # "firstItemString":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v4    # "overlay":Landroid/media/videoeditor/Overlay;
    .end local v5    # "overlayFrame":Landroid/media/videoeditor/OverlayFrame;
    .end local v6    # "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 830
    .restart local v1    # "firstItemString":Ljava/lang/String;
    .restart local v3    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    .restart local v6    # "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :cond_2
    :try_start_1
    invoke-direct {p0, v3}, Landroid/media/videoeditor/VideoEditorImpl;->removeAdjacentTransitions(Landroid/media/videoeditor/MediaItem;)V

    .line 831
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 838
    .end local v6    # "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 839
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->generateProjectThumbnail()V

    .line 842
    :cond_4
    instance-of v7, v3, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v7, :cond_5

    .line 846
    move-object v0, v3

    check-cast v0, Landroid/media/videoeditor/MediaVideoItem;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaVideoItem;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 848
    :cond_5
    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized removeTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;
    .locals 6
    .param p1, "transitionId"    # Ljava/lang/String;

    .prologue
    .line 882
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/videoeditor/VideoEditorImpl;->getTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;

    move-result-object v2

    .line 883
    .local v2, "transition":Landroid/media/videoeditor/Transition;
    if-nez v2, :cond_0

    .line 884
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transition not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    .end local v2    # "transition":Landroid/media/videoeditor/Transition;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 887
    .restart local v2    # "transition":Landroid/media/videoeditor/Transition;
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 892
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    .line 893
    .local v0, "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    if-eqz v0, :cond_1

    .line 894
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/media/videoeditor/MediaItem;->setEndTransition(Landroid/media/videoeditor/Transition;)V

    .line 897
    :cond_1
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v1

    .line 898
    .local v1, "beforeMediaItem":Landroid/media/videoeditor/MediaItem;
    if-eqz v1, :cond_2

    .line 899
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/media/videoeditor/MediaItem;->setBeginTransition(Landroid/media/videoeditor/Transition;)V

    .line 902
    :cond_2
    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 903
    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 904
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 905
    monitor-exit p0

    return-object v2
.end method

.method public renderPreviewFrame(Landroid/view/SurfaceHolder;JLandroid/media/videoeditor/VideoEditor$OverlayData;)J
    .locals 12
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "timeMs"    # J
    .param p4, "overlayData"    # Landroid/media/videoeditor/VideoEditor$OverlayData;

    .prologue
    .line 913
    if-nez p1, :cond_0

    .line 914
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface Holder is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 917
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 918
    .local v1, "surface":Landroid/view/Surface;
    if-nez v1, :cond_1

    .line 919
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface could not be retrieved from Surface holder"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_1
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 923
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Surface is not valid"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 926
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gez v0, :cond_3

    .line 927
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "requested time not correct"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :cond_3
    iget-wide v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    cmp-long v0, p2, v2

    if-lez v0, :cond_4

    .line 929
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "requested time more than duration"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 931
    :cond_4
    const-wide/16 v9, 0x0

    .line 933
    .local v9, "result":J
    const/4 v11, 0x0

    .line 935
    .local v11, "semAcquireDone":Z
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-direct {p0, v2, v3}, Landroid/media/videoeditor/VideoEditorImpl;->lock(J)Z

    move-result v11

    .line 936
    if-nez v11, :cond_6

    .line 937
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Timeout waiting for semaphore"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 951
    :catch_0
    move-exception v7

    .line 952
    .local v7, "ex":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v0, "VideoEditorImpl"

    const-string v2, "The thread was interrupted"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 953
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "The thread was interrupted"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 955
    .end local v7    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_5

    .line 956
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    :cond_5
    throw v0

    .line 940
    :cond_6
    :try_start_2
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-nez v0, :cond_7

    .line 941
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "The video editor is not initialized"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 944
    :cond_7
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 945
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v8

    .line 946
    .local v8, "frame":Landroid/graphics/Rect;
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-wide v2, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->renderPreviewFrame(Landroid/view/Surface;JIILandroid/media/videoeditor/VideoEditor$OverlayData;)J
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v9

    .line 955
    .end local v8    # "frame":Landroid/graphics/Rect;
    :goto_0
    if-eqz v11, :cond_8

    .line 956
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    .line 959
    :cond_8
    return-wide v9

    .line 949
    :cond_9
    const-wide/16 v9, 0x0

    goto :goto_0
.end method

.method public save()V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1372
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v22

    .line 1373
    .local v22, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v28, Ljava/io/StringWriter;

    invoke-direct/range {v28 .. v28}, Ljava/io/StringWriter;-><init>()V

    .line 1374
    .local v28, "writer":Ljava/io/StringWriter;
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 1375
    const-string v29, "UTF-8"

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1376
    const-string v29, ""

    const-string/jumbo v30, "project"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1377
    const-string v29, ""

    const-string v30, "aspect_ratio"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mAspectRatio:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1380
    const-string v29, ""

    const-string/jumbo v30, "regeneratePCMFlag"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getAudioflag()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1383
    const-string v29, ""

    const-string/jumbo v30, "media_items"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/videoeditor/MediaItem;

    .line 1385
    .local v15, "mediaItem":Landroid/media/videoeditor/MediaItem;
    const-string v29, ""

    const-string/jumbo v30, "media_item"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1386
    const-string v29, ""

    const-string v30, "id"

    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1387
    const-string v29, ""

    const-string/jumbo v30, "type"

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1389
    const-string v29, ""

    const-string v30, "filename"

    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getFilename()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1390
    const-string v29, ""

    const-string/jumbo v30, "rendering_mode"

    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getRenderingMode()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1392
    instance-of v0, v15, Landroid/media/videoeditor/MediaVideoItem;

    move/from16 v29, v0

    if-eqz v29, :cond_4

    move-object/from16 v16, v15

    .line 1393
    check-cast v16, Landroid/media/videoeditor/MediaVideoItem;

    .line 1394
    .local v16, "mvi":Landroid/media/videoeditor/MediaVideoItem;
    const-string v29, ""

    const-string v30, "begin_time"

    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1397
    const-string v29, ""

    const-string v30, "end_time"

    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1399
    const-string v29, ""

    const-string/jumbo v30, "volume"

    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/MediaVideoItem;->getVolume()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1401
    const-string v29, ""

    const-string/jumbo v30, "muted"

    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/MediaVideoItem;->isMuted()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1403
    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/MediaVideoItem;->getAudioWaveformFilename()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_0

    .line 1404
    const-string v29, ""

    const-string/jumbo v30, "waveform"

    invoke-virtual/range {v16 .. v16}, Landroid/media/videoeditor/MediaVideoItem;->getAudioWaveformFilename()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1412
    .end local v16    # "mvi":Landroid/media/videoeditor/MediaVideoItem;
    :cond_0
    :goto_1
    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v21

    .line 1413
    .local v21, "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_7

    .line 1414
    const-string v29, ""

    const-string/jumbo v30, "overlays"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1415
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/media/videoeditor/Overlay;

    .line 1416
    .local v19, "overlay":Landroid/media/videoeditor/Overlay;
    const-string v29, ""

    const-string/jumbo v30, "overlay"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1417
    const-string v29, ""

    const-string v30, "id"

    invoke-virtual/range {v19 .. v19}, Landroid/media/videoeditor/Overlay;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1418
    const-string v29, ""

    const-string/jumbo v30, "type"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1420
    const-string v29, ""

    const-string v30, "begin_time"

    invoke-virtual/range {v19 .. v19}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1422
    const-string v29, ""

    const-string v30, "duration"

    invoke-virtual/range {v19 .. v19}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1424
    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/media/videoeditor/OverlayFrame;

    move/from16 v29, v0

    if-eqz v29, :cond_2

    move-object/from16 v20, v19

    .line 1425
    check-cast v20, Landroid/media/videoeditor/OverlayFrame;

    .line 1426
    .local v20, "overlayFrame":Landroid/media/videoeditor/OverlayFrame;
    invoke-virtual/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->getPath()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/OverlayFrame;->save(Ljava/lang/String;)Ljava/lang/String;

    .line 1427
    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getBitmapImageFileName()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_1

    .line 1428
    const-string v29, ""

    const-string v30, "filename"

    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getBitmapImageFileName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1432
    :cond_1
    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_2

    .line 1433
    const-string v29, ""

    const-string/jumbo v30, "overlay_rgb_filename"

    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getFilename()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1436
    const-string v29, ""

    const-string/jumbo v30, "overlay_frame_width"

    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getOverlayFrameWidth()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1438
    const-string v29, ""

    const-string/jumbo v30, "overlay_frame_height"

    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getOverlayFrameHeight()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1440
    const-string v29, ""

    const-string/jumbo v30, "resized_RGBframe_width"

    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeWidth()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1442
    const-string v29, ""

    const-string/jumbo v30, "resized_RGBframe_height"

    invoke-virtual/range {v20 .. v20}, Landroid/media/videoeditor/OverlayFrame;->getResizedRGBSizeHeight()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1452
    .end local v20    # "overlayFrame":Landroid/media/videoeditor/OverlayFrame;
    :cond_2
    const-string v29, ""

    const-string/jumbo v30, "overlay_user_attributes"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1453
    invoke-virtual/range {v19 .. v19}, Landroid/media/videoeditor/Overlay;->getUserAttributes()Ljava/util/Map;

    move-result-object v26

    .line 1454
    .local v26, "userAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1455
    .local v17, "name":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 1456
    .local v27, "value":Ljava/lang/String;
    if-eqz v27, :cond_3

    .line 1457
    const-string v29, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v17

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 1407
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v17    # "name":Ljava/lang/String;
    .end local v19    # "overlay":Landroid/media/videoeditor/Overlay;
    .end local v21    # "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    .end local v26    # "userAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27    # "value":Ljava/lang/String;
    :cond_4
    instance-of v0, v15, Landroid/media/videoeditor/MediaImageItem;

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 1408
    const-string v29, ""

    const-string v30, "duration"

    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getTimelineDuration()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 1460
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v19    # "overlay":Landroid/media/videoeditor/Overlay;
    .restart local v21    # "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    .restart local v26    # "userAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const-string v29, ""

    const-string/jumbo v30, "overlay_user_attributes"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1462
    const-string v29, ""

    const-string/jumbo v30, "overlay"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_2

    .line 1464
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v19    # "overlay":Landroid/media/videoeditor/Overlay;
    .end local v26    # "userAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    const-string v29, ""

    const-string/jumbo v30, "overlays"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1467
    :cond_7
    invoke-virtual {v15}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v9

    .line 1468
    .local v9, "effects":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_d

    .line 1469
    const-string v29, ""

    const-string v30, "effects"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1470
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/videoeditor/Effect;

    .line 1471
    .local v8, "effect":Landroid/media/videoeditor/Effect;
    const-string v29, ""

    const-string v30, "effect"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1472
    const-string v29, ""

    const-string v30, "id"

    invoke-virtual {v8}, Landroid/media/videoeditor/Effect;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1473
    const-string v29, ""

    const-string/jumbo v30, "type"

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1475
    const-string v29, ""

    const-string v30, "begin_time"

    invoke-virtual {v8}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1477
    const-string v29, ""

    const-string v30, "duration"

    invoke-virtual {v8}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1479
    instance-of v0, v8, Landroid/media/videoeditor/EffectColor;

    move/from16 v29, v0

    if-eqz v29, :cond_a

    move-object v7, v8

    .line 1480
    check-cast v7, Landroid/media/videoeditor/EffectColor;

    .line 1481
    .local v7, "colorEffect":Landroid/media/videoeditor/EffectColor;
    const-string v29, ""

    const-string v30, "color_type"

    invoke-virtual {v7}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1483
    invoke-virtual {v7}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_8

    invoke-virtual {v7}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    .line 1485
    :cond_8
    const-string v29, ""

    const-string v30, "color_value"

    invoke-virtual {v7}, Landroid/media/videoeditor/EffectColor;->getColor()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1520
    .end local v7    # "colorEffect":Landroid/media/videoeditor/EffectColor;
    :cond_9
    :goto_5
    const-string v29, ""

    const-string v30, "effect"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_4

    .line 1488
    :cond_a
    instance-of v0, v8, Landroid/media/videoeditor/EffectKenBurns;

    move/from16 v29, v0

    if-eqz v29, :cond_9

    move-object/from16 v29, v8

    .line 1489
    check-cast v29, Landroid/media/videoeditor/EffectKenBurns;

    invoke-virtual/range {v29 .. v29}, Landroid/media/videoeditor/EffectKenBurns;->getStartRect()Landroid/graphics/Rect;

    move-result-object v23

    .line 1490
    .local v23, "startRect":Landroid/graphics/Rect;
    const-string v29, ""

    const-string/jumbo v30, "start_l"

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1492
    const-string v29, ""

    const-string/jumbo v30, "start_t"

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1494
    const-string v29, ""

    const-string/jumbo v30, "start_r"

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1496
    const-string v29, ""

    const-string/jumbo v30, "start_b"

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v29, v8

    .line 1499
    check-cast v29, Landroid/media/videoeditor/EffectKenBurns;

    invoke-virtual/range {v29 .. v29}, Landroid/media/videoeditor/EffectKenBurns;->getEndRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 1500
    .local v10, "endRect":Landroid/graphics/Rect;
    const-string v29, ""

    const-string v30, "end_l"

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1502
    const-string v29, ""

    const-string v30, "end_t"

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1504
    const-string v29, ""

    const-string v30, "end_r"

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1506
    const-string v29, ""

    const-string v30, "end_b"

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1508
    invoke-virtual {v8}, Landroid/media/videoeditor/Effect;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v14

    .local v14, "mItem":Landroid/media/videoeditor/MediaItem;
    move-object/from16 v29, v14

    .line 1509
    check-cast v29, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual/range {v29 .. v29}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_b

    .line 1510
    const-string v29, ""

    const-string v30, "is_image_clip_generated"

    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1512
    const-string v29, ""

    const-string v30, "generated_image_clip"

    check-cast v14, Landroid/media/videoeditor/MediaImageItem;

    .end local v14    # "mItem":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v14}, Landroid/media/videoeditor/MediaImageItem;->getGeneratedImageClip()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_5

    .line 1515
    .restart local v14    # "mItem":Landroid/media/videoeditor/MediaItem;
    :cond_b
    const-string v29, ""

    const-string v30, "is_image_clip_generated"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_5

    .line 1522
    .end local v8    # "effect":Landroid/media/videoeditor/Effect;
    .end local v10    # "endRect":Landroid/graphics/Rect;
    .end local v14    # "mItem":Landroid/media/videoeditor/MediaItem;
    .end local v23    # "startRect":Landroid/graphics/Rect;
    :cond_c
    const-string v29, ""

    const-string v30, "effects"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1525
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_d
    const-string v29, ""

    const-string/jumbo v30, "media_item"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 1527
    .end local v9    # "effects":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    .end local v15    # "mediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v21    # "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    :cond_e
    const-string v29, ""

    const-string/jumbo v30, "media_items"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1529
    const-string v29, ""

    const-string/jumbo v30, "transitions"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/media/videoeditor/Transition;

    .line 1532
    .local v25, "transition":Landroid/media/videoeditor/Transition;
    const-string v29, ""

    const-string/jumbo v30, "transition"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1533
    const-string v29, ""

    const-string v30, "id"

    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/Transition;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1534
    const-string v29, ""

    const-string/jumbo v30, "type"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1535
    const-string v29, ""

    const-string v30, "duration"

    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1536
    const-string v29, ""

    const-string v30, "behavior"

    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/Transition;->getBehavior()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1537
    const-string v29, ""

    const-string v30, "is_transition_generated"

    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/Transition;->isGenerated()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1539
    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/Transition;->isGenerated()Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    .line 1540
    const-string v29, ""

    const-string v30, "generated_transition_clip"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/media/videoeditor/Transition;->mFilename:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1542
    :cond_f
    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v4

    .line 1543
    .local v4, "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    if-eqz v4, :cond_10

    .line 1544
    const-string v29, ""

    const-string v30, "after_media_item"

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1547
    :cond_10
    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v6

    .line 1548
    .local v6, "beforeMediaItem":Landroid/media/videoeditor/MediaItem;
    if-eqz v6, :cond_11

    .line 1549
    const-string v29, ""

    const-string v30, "before_media_item"

    invoke-virtual {v6}, Landroid/media/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1552
    :cond_11
    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/media/videoeditor/TransitionSliding;

    move/from16 v29, v0

    if-eqz v29, :cond_13

    .line 1553
    const-string v29, ""

    const-string v30, "direction"

    check-cast v25, Landroid/media/videoeditor/TransitionSliding;

    .end local v25    # "transition":Landroid/media/videoeditor/Transition;
    invoke-virtual/range {v25 .. v25}, Landroid/media/videoeditor/TransitionSliding;->getDirection()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1565
    :cond_12
    :goto_7
    const-string v29, ""

    const-string/jumbo v30, "transition"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_6

    .line 1555
    .restart local v25    # "transition":Landroid/media/videoeditor/Transition;
    :cond_13
    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/media/videoeditor/TransitionAlpha;

    move/from16 v29, v0

    if-eqz v29, :cond_12

    move-object/from16 v24, v25

    .line 1556
    check-cast v24, Landroid/media/videoeditor/TransitionAlpha;

    .line 1557
    .local v24, "ta":Landroid/media/videoeditor/TransitionAlpha;
    const-string v29, ""

    const-string v30, "blending"

    invoke-virtual/range {v24 .. v24}, Landroid/media/videoeditor/TransitionAlpha;->getBlendingPercent()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1559
    const-string v29, ""

    const-string v30, "invert"

    invoke-virtual/range {v24 .. v24}, Landroid/media/videoeditor/TransitionAlpha;->isInvert()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1561
    invoke-virtual/range {v24 .. v24}, Landroid/media/videoeditor/TransitionAlpha;->getMaskFilename()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_12

    .line 1562
    const-string v29, ""

    const-string/jumbo v30, "mask"

    invoke-virtual/range {v24 .. v24}, Landroid/media/videoeditor/TransitionAlpha;->getMaskFilename()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7

    .line 1567
    .end local v4    # "afterMediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v6    # "beforeMediaItem":Landroid/media/videoeditor/MediaItem;
    .end local v24    # "ta":Landroid/media/videoeditor/TransitionAlpha;
    .end local v25    # "transition":Landroid/media/videoeditor/Transition;
    :cond_14
    const-string v29, ""

    const-string/jumbo v30, "transitions"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1568
    const-string v29, ""

    const-string v30, "audio_tracks"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_16

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/videoeditor/AudioTrack;

    .line 1570
    .local v5, "at":Landroid/media/videoeditor/AudioTrack;
    const-string v29, ""

    const-string v30, "audio_track"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1571
    const-string v29, ""

    const-string v30, "id"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1572
    const-string v29, ""

    const-string v30, "filename"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getFilename()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1573
    const-string v29, ""

    const-string/jumbo v30, "start_time"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getStartTime()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1574
    const-string v29, ""

    const-string v30, "begin_time"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getBoundaryBeginTime()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1575
    const-string v29, ""

    const-string v30, "end_time"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getBoundaryEndTime()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1576
    const-string v29, ""

    const-string/jumbo v30, "volume"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getVolume()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1577
    const-string v29, ""

    const-string v30, "ducking_enabled"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->isDuckingEnabled()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1579
    const-string v29, ""

    const-string v30, "ducking_volume"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getDuckedTrackVolume()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1581
    const-string v29, ""

    const-string v30, "ducking_threshold"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getDuckingThreshhold()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1583
    const-string v29, ""

    const-string/jumbo v30, "muted"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->isMuted()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1584
    const-string v29, ""

    const-string v30, "loop"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->isLooping()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1585
    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getAudioWaveformFilename()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_15

    .line 1586
    const-string v29, ""

    const-string/jumbo v30, "waveform"

    invoke-virtual {v5}, Landroid/media/videoeditor/AudioTrack;->getAudioWaveformFilename()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1590
    :cond_15
    const-string v29, ""

    const-string v30, "audio_track"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_8

    .line 1592
    .end local v5    # "at":Landroid/media/videoeditor/AudioTrack;
    :cond_16
    const-string v29, ""

    const-string v30, "audio_tracks"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1594
    const-string v29, ""

    const-string/jumbo v30, "project"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1595
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1600
    new-instance v18, Ljava/io/FileOutputStream;

    new-instance v29, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/media/videoeditor/VideoEditorImpl;->getPath()Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "videoeditor.xml"

    invoke-direct/range {v29 .. v31}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1602
    .local v18, "out":Ljava/io/FileOutputStream;
    invoke-virtual/range {v28 .. v28}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1603
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    .line 1604
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 1605
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 8
    .param p1, "aspectRatio"    # I

    .prologue
    .line 1611
    iput p1, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAspectRatio:I

    .line 1615
    iget-object v6, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 1617
    iget-object v6, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/videoeditor/Transition;

    .line 1618
    .local v5, "transition":Landroid/media/videoeditor/Transition;
    invoke-virtual {v5}, Landroid/media/videoeditor/Transition;->invalidate()V

    goto :goto_0

    .line 1621
    .end local v5    # "transition":Landroid/media/videoeditor/Transition;
    :cond_0
    iget-object v6, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1623
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/videoeditor/MediaItem;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1624
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/videoeditor/MediaItem;

    .line 1625
    .local v4, "t":Landroid/media/videoeditor/MediaItem;
    invoke-virtual {v4}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v3

    .line 1626
    .local v3, "overlayList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/Overlay;

    .line 1628
    .local v2, "overlay":Landroid/media/videoeditor/Overlay;
    check-cast v2, Landroid/media/videoeditor/OverlayFrame;

    .end local v2    # "overlay":Landroid/media/videoeditor/Overlay;
    invoke-virtual {v2}, Landroid/media/videoeditor/OverlayFrame;->invalidateGeneratedFiles()V

    goto :goto_1

    .line 1631
    .end local v3    # "overlayList":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    .end local v4    # "t":Landroid/media/videoeditor/MediaItem;
    :cond_2
    return-void
.end method

.method public startPreview(Landroid/view/SurfaceHolder;JJZILandroid/media/videoeditor/VideoEditor$PreviewProgressListener;)V
    .locals 11
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "fromMs"    # J
    .param p4, "toMs"    # J
    .param p6, "loop"    # Z
    .param p7, "callbackAfterFrameCount"    # I
    .param p8, "listener"    # Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;

    .prologue
    .line 1640
    if-nez p1, :cond_0

    .line 1641
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1644
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 1645
    .local v1, "surface":Landroid/view/Surface;
    if-nez v1, :cond_1

    .line 1646
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface could not be retrieved from surface holder"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1649
    :cond_1
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1650
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Surface is not valid"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1653
    :cond_2
    if-nez p8, :cond_3

    .line 1654
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1657
    :cond_3
    iget-wide v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mDurationMs:J

    cmp-long v0, p2, v2

    if-ltz v0, :cond_4

    .line 1658
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Requested time not correct"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1661
    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gez v0, :cond_5

    .line 1662
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Requested time not correct"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1665
    :cond_5
    const/4 v10, 0x0

    .line 1666
    .local v10, "semAcquireDone":Z
    iget-boolean v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    if-nez v0, :cond_9

    .line 1668
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-direct {p0, v2, v3}, Landroid/media/videoeditor/VideoEditorImpl;->lock(J)Z

    move-result v10

    .line 1669
    if-nez v10, :cond_6

    .line 1670
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Timeout waiting for semaphore"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1687
    :catch_0
    move-exception v9

    .line 1688
    .local v9, "ex":Ljava/lang/InterruptedException;
    const-string v0, "VideoEditorImpl"

    const-string v2, "The thread was interrupted"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1689
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "The thread was interrupted"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1673
    .end local v9    # "ex":Ljava/lang/InterruptedException;
    :cond_6
    :try_start_1
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-nez v0, :cond_7

    .line 1674
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "The video editor is not initialized"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1677
    :cond_7
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 1678
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    .line 1679
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    iget-object v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mTransitions:Ljava/util/List;

    iget-object v4, p0, Landroid/media/videoeditor/VideoEditorImpl;->mAudioTracks:Ljava/util/List;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->previewStoryBoard(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V

    .line 1681
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaArtistNativeHelper;->doPreview(Landroid/view/Surface;JJZILandroid/media/videoeditor/VideoEditor$PreviewProgressListener;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1694
    :cond_8
    return-void

    .line 1692
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Preview already in progress"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopPreview()J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1700
    const-wide/16 v0, 0x0

    .line 1701
    .local v0, "result":J
    iget-boolean v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    if-eqz v2, :cond_0

    .line 1703
    :try_start_0
    iget-object v2, p0, Landroid/media/videoeditor/VideoEditorImpl;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaArtistNativeHelper;->stopPreview()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1708
    iput-boolean v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    .line 1709
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    move-wide v2, v0

    .line 1714
    :goto_0
    return-wide v2

    .line 1708
    :catchall_0
    move-exception v2

    iput-boolean v3, p0, Landroid/media/videoeditor/VideoEditorImpl;->mPreviewInProgress:Z

    .line 1709
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->unlock()V

    throw v2

    .line 1714
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method updateTimelineDuration()V
    .locals 0

    .prologue
    .line 563
    invoke-direct {p0}, Landroid/media/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 564
    return-void
.end method
