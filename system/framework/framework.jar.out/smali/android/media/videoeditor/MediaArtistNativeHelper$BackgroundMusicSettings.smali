.class public Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/videoeditor/MediaArtistNativeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundMusicSettings"
.end annotation


# instance fields
.field public beginLoop:J

.field public duckingThreshold:I

.field public enableDucking:Z

.field public endLoop:J

.field public file:Ljava/lang/String;

.field public fileType:I

.field public insertionTime:J

.field public isLooping:Z

.field public lowVolume:I

.field public volumePercent:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
