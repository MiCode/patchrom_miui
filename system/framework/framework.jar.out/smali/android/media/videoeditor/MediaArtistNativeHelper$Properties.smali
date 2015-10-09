.class public Landroid/media/videoeditor/MediaArtistNativeHelper$Properties;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/videoeditor/MediaArtistNativeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# instance fields
.field public Id:Ljava/lang/String;

.field public audioBitrate:I

.field public audioChannels:I

.field public audioDuration:I

.field public audioFormat:I

.field public audioSamplingFrequency:I

.field public audioVolumeValue:I

.field public averageFrameRate:F

.field public duration:I

.field public fileType:I

.field public height:I

.field public level:I

.field public levelSupported:Z

.field public profile:I

.field public profileSupported:Z

.field public videoBitrate:I

.field public videoDuration:I

.field public videoFormat:I

.field public videoRotation:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
