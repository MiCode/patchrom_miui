.class public Landroid/media/videoeditor/TransitionFadeBlack;
.super Landroid/media/videoeditor/Transition;
.source "TransitionFadeBlack.java"


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 33
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    invoke-direct/range {v0 .. v6}, Landroid/media/videoeditor/TransitionFadeBlack;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V
    .locals 0
    .param p1, "transitionId"    # Ljava/lang/String;
    .param p2, "afterMediaItem"    # Landroid/media/videoeditor/MediaItem;
    .param p3, "beforeMediaItem"    # Landroid/media/videoeditor/MediaItem;
    .param p4, "durationMs"    # J
    .param p6, "behavior"    # I

    .prologue
    .line 52
    invoke-direct/range {p0 .. p6}, Landroid/media/videoeditor/Transition;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    .line 53
    return-void
.end method


# virtual methods
.method generate()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/media/videoeditor/Transition;->generate()V

    .line 61
    return-void
.end method
