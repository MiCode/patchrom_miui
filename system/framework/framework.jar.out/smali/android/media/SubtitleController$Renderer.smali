.class public abstract Landroid/media/SubtitleController$Renderer;
.super Ljava/lang/Object;
.source "SubtitleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SubtitleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Renderer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
.end method

.method public abstract supports(Landroid/media/MediaFormat;)Z
.end method
