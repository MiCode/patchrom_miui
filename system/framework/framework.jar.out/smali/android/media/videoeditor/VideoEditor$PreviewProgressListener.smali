.class public interface abstract Landroid/media/videoeditor/VideoEditor$PreviewProgressListener;
.super Ljava/lang/Object;
.source "VideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/videoeditor/VideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreviewProgressListener"
.end annotation


# virtual methods
.method public abstract onError(Landroid/media/videoeditor/VideoEditor;I)V
.end method

.method public abstract onProgress(Landroid/media/videoeditor/VideoEditor;JLandroid/media/videoeditor/VideoEditor$OverlayData;)V
.end method

.method public abstract onStart(Landroid/media/videoeditor/VideoEditor;)V
.end method

.method public abstract onStop(Landroid/media/videoeditor/VideoEditor;)V
.end method
