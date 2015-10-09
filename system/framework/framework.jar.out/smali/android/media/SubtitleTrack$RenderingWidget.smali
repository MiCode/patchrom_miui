.class public interface abstract Landroid/media/SubtitleTrack$RenderingWidget;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SubtitleTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RenderingWidget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;
    }
.end annotation


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public abstract onAttachedToWindow()V
.end method

.method public abstract onDetachedFromWindow()V
.end method

.method public abstract setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V
.end method

.method public abstract setSize(II)V
.end method

.method public abstract setVisible(Z)V
.end method
