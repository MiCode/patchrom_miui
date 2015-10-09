.class Landroid/media/MediaFocusControl$RemotePlaybackState;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemotePlaybackState"
.end annotation


# instance fields
.field mRccId:I

.field mVolume:I

.field mVolumeHandling:I

.field mVolumeMax:I

.field final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method private constructor <init>(Landroid/media/MediaFocusControl;III)V
    .locals 1
    .param p2, "id"    # I
    .param p3, "vol"    # I
    .param p4, "volMax"    # I

    .prologue
    .line 1114
    iput-object p1, p0, Landroid/media/MediaFocusControl$RemotePlaybackState;->this$0:Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1115
    iput p2, p0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    .line 1116
    iput p3, p0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolume:I

    .line 1117
    iput p4, p0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeMax:I

    .line 1118
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeHandling:I

    .line 1119
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaFocusControl;IIILandroid/media/MediaFocusControl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/MediaFocusControl;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroid/media/MediaFocusControl$1;

    .prologue
    .line 1108
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaFocusControl$RemotePlaybackState;-><init>(Landroid/media/MediaFocusControl;III)V

    return-void
.end method
