.class public interface abstract Landroid/media/videoeditor/VideoEditor;
.super Ljava/lang/Object;
.source "VideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/videoeditor/VideoEditor$OverlayData;,
        Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;,
        Landroid/media/videoeditor/VideoEditor$ExportProgressListener;,
        Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;
    }
.end annotation


# static fields
.field public static final DURATION_OF_STORYBOARD:I = -0x1

.field public static final MAX_SUPPORTED_FILE_SIZE:J = 0x80000000L

.field public static final THUMBNAIL_FILENAME:Ljava/lang/String; = "thumbnail.jpg"


# virtual methods
.method public abstract addAudioTrack(Landroid/media/videoeditor/AudioTrack;)V
.end method

.method public abstract addMediaItem(Landroid/media/videoeditor/MediaItem;)V
.end method

.method public abstract addTransition(Landroid/media/videoeditor/Transition;)V
.end method

.method public abstract cancelExport(Ljava/lang/String;)V
.end method

.method public abstract clearSurface(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract export(Ljava/lang/String;IIIILandroid/media/videoeditor/VideoEditor$ExportProgressListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract export(Ljava/lang/String;IILandroid/media/videoeditor/VideoEditor$ExportProgressListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract generatePreview(Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V
.end method

.method public abstract getAllAudioTracks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/AudioTrack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllMediaItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllTransitions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Transition;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAspectRatio()I
.end method

.method public abstract getAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;
.end method

.method public abstract getDuration()J
.end method

.method public abstract getMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;
.end method

.method public abstract insertAudioTrack(Landroid/media/videoeditor/AudioTrack;Ljava/lang/String;)V
.end method

.method public abstract insertMediaItem(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;)V
.end method

.method public abstract moveAudioTrack(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract moveMediaItem(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract release()V
.end method

.method public abstract removeAllMediaItems()V
.end method

.method public abstract removeAudioTrack(Ljava/lang/String;)Landroid/media/videoeditor/AudioTrack;
.end method

.method public abstract removeMediaItem(Ljava/lang/String;)Landroid/media/videoeditor/MediaItem;
.end method

.method public abstract removeTransition(Ljava/lang/String;)Landroid/media/videoeditor/Transition;
.end method

.method public abstract renderPreviewFrame(Landroid/view/SurfaceHolder;JLandroid/media/videoeditor/VideoEditor$OverlayData;)J
.end method

.method public abstract save()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setAspectRatio(I)V
.end method

.method public abstract startPreview(Landroid/view/SurfaceHolder;JJZILandroid/media/videoeditor/VideoEditor$PreviewProgressListener;)V
.end method

.method public abstract stopPreview()J
.end method
