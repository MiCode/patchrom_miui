.class public Landroid/media/WebVttRenderer;
.super Landroid/media/SubtitleController$Renderer;
.source "WebVttRenderer.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mRenderingWidget:Landroid/media/WebVttRenderingWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/media/SubtitleController$Renderer;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/media/WebVttRenderer;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .locals 2
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/media/WebVttRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Landroid/media/WebVttRenderingWidget;

    iget-object v1, p0, Landroid/media/WebVttRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/WebVttRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    .line 65
    :cond_0
    new-instance v0, Landroid/media/WebVttTrack;

    iget-object v1, p0, Landroid/media/WebVttRenderer;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    invoke-direct {v0, v1, p1}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    return-object v0
.end method

.method public supports(Landroid/media/MediaFormat;)Z
    .locals 2
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 53
    const-string/jumbo v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "text/vtt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
