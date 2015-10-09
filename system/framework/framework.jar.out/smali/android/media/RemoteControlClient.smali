.class public Landroid/media/RemoteControlClient;
.super Ljava/lang/Object;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteControlClient$EventHandler;,
        Landroid/media/RemoteControlClient$DisplayInfoForClient;,
        Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;,
        Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;,
        Landroid/media/RemoteControlClient$OnMetadataUpdateListener;,
        Landroid/media/RemoteControlClient$MetadataEditor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_PLAYBACK_VOLUME:I = 0xf

.field public static final DEFAULT_PLAYBACK_VOLUME_HANDLING:I = 0x1

.field public static final FLAGS_KEY_MEDIA_NONE:I = 0x0

.field public static final FLAG_INFORMATION_REQUEST_ALBUM_ART:I = 0x8

.field public static final FLAG_INFORMATION_REQUEST_KEY_MEDIA:I = 0x2

.field public static final FLAG_INFORMATION_REQUEST_METADATA:I = 0x1

.field public static final FLAG_INFORMATION_REQUEST_PLAYSTATE:I = 0x4

.field public static final FLAG_KEY_MEDIA_FAST_FORWARD:I = 0x40

.field public static final FLAG_KEY_MEDIA_NEXT:I = 0x80

.field public static final FLAG_KEY_MEDIA_PAUSE:I = 0x10

.field public static final FLAG_KEY_MEDIA_PLAY:I = 0x4

.field public static final FLAG_KEY_MEDIA_PLAY_PAUSE:I = 0x8

.field public static final FLAG_KEY_MEDIA_POSITION_UPDATE:I = 0x100

.field public static final FLAG_KEY_MEDIA_PREVIOUS:I = 0x1

.field public static final FLAG_KEY_MEDIA_RATING:I = 0x200

.field public static final FLAG_KEY_MEDIA_REWIND:I = 0x2

.field public static final FLAG_KEY_MEDIA_STOP:I = 0x20

.field public static MEDIA_POSITION_READABLE:I = 0x0

.field public static MEDIA_POSITION_WRITABLE:I = 0x0

.field private static final MSG_DISPLAY_ENABLE:I = 0xf

.field private static final MSG_DISPLAY_WANTS_POS_SYNC:I = 0xc

.field private static final MSG_NEW_CURRENT_CLIENT_GEN:I = 0x6

.field private static final MSG_NEW_INTERNAL_CLIENT_GEN:I = 0x5

.field private static final MSG_PLUG_DISPLAY:I = 0x7

.field private static final MSG_POSITION_DRIFT_CHECK:I = 0xb

.field private static final MSG_REQUEST_ARTWORK:I = 0x4

.field private static final MSG_REQUEST_METADATA:I = 0x2

.field private static final MSG_REQUEST_METADATA_ARTWORK:I = 0xe

.field private static final MSG_REQUEST_PLAYBACK_STATE:I = 0x1

.field private static final MSG_REQUEST_TRANSPORTCONTROL:I = 0x3

.field private static final MSG_SEEK_TO:I = 0xa

.field private static final MSG_UNPLUG_DISPLAY:I = 0x8

.field private static final MSG_UPDATE_DISPLAY_ARTWORK_SIZE:I = 0x9

.field private static final MSG_UPDATE_METADATA:I = 0xd

.field public static final PLAYBACKINFO_INVALID_VALUE:I = -0x80000000

.field public static final PLAYBACKINFO_PLAYBACK_TYPE:I = 0x1

.field public static final PLAYBACKINFO_USES_STREAM:I = 0x5

.field public static final PLAYBACKINFO_VOLUME:I = 0x2

.field public static final PLAYBACKINFO_VOLUME_HANDLING:I = 0x4

.field public static final PLAYBACKINFO_VOLUME_MAX:I = 0x3

.field public static final PLAYBACK_POSITION_ALWAYS_UNKNOWN:J = -0x7fe688e67fe67d00L

.field public static final PLAYBACK_POSITION_INVALID:J = -0x1L

.field public static final PLAYBACK_SPEED_1X:F = 1.0f

.field public static final PLAYBACK_TYPE_LOCAL:I = 0x0

.field private static final PLAYBACK_TYPE_MAX:I = 0x1

.field private static final PLAYBACK_TYPE_MIN:I = 0x0

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x1

.field public static final PLAYBACK_VOLUME_FIXED:I = 0x0

.field public static final PLAYBACK_VOLUME_VARIABLE:I = 0x1

.field public static final PLAYSTATE_BUFFERING:I = 0x8

.field public static final PLAYSTATE_ERROR:I = 0x9

.field public static final PLAYSTATE_FAST_FORWARDING:I = 0x4

.field public static final PLAYSTATE_NONE:I = 0x0

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_REWINDING:I = 0x5

.field public static final PLAYSTATE_SKIPPING_BACKWARDS:I = 0x7

.field public static final PLAYSTATE_SKIPPING_FORWARDS:I = 0x6

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field private static final POSITION_DRIFT_MAX_MS:J = 0x1f4L

.field private static final POSITION_REFRESH_PERIOD_MIN_MS:J = 0x7d0L

.field private static final POSITION_REFRESH_PERIOD_PLAYING_MS:J = 0x3a98L

.field public static final RCSE_ID_UNREGISTERED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "RemoteControlClient"

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private final mCacheLock:Ljava/lang/Object;

.field private mCurrentClientGenId:I

.field private mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

.field private final mIRCC:Landroid/media/IRemoteControlClient;

.field private mInternalClientGenId:I

.field private mMetadata:Landroid/os/Bundle;

.field private mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

.field private mNeedsPositionSync:Z

.field private mOriginalArtwork:Landroid/graphics/Bitmap;

.field private mPlaybackPositionCapabilities:I

.field private mPlaybackPositionMs:J

.field private mPlaybackSpeed:F

.field private mPlaybackState:I

.field private mPlaybackStateChangeTimeMs:J

.field private mPlaybackStream:I

.field private mPlaybackType:I

.field private mPlaybackVolume:I

.field private mPlaybackVolumeHandling:I

.field private mPlaybackVolumeMax:I

.field private mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

.field private mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

.field private mRcDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/RemoteControlClient$DisplayInfoForClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mRcMediaIntent:Landroid/app/PendingIntent;

.field private mRcseId:I

.field private mTransportControlFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 835
    const/4 v0, 0x1

    sput v0, Landroid/media/RemoteControlClient;->MEDIA_POSITION_READABLE:I

    .line 842
    const/4 v0, 0x2

    sput v0, Landroid/media/RemoteControlClient;->MEDIA_POSITION_WRITABLE:I

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "mediaButtonIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/16 v1, 0xf

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    iput v3, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    .line 852
    iput v3, p0, Landroid/media/RemoteControlClient;->mPlaybackType:I

    .line 853
    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    .line 854
    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackVolume:I

    .line 855
    iput v5, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeHandling:I

    .line 856
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackStream:I

    .line 965
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    .line 970
    iput v3, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    .line 975
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    .line 979
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    .line 983
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    .line 996
    iput v3, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 1002
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    .line 1020
    iput v4, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    .line 1027
    const/4 v1, -0x2

    iput v1, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    .line 1040
    iput-boolean v3, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 1065
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    .line 1085
    new-instance v1, Landroid/media/RemoteControlClient$1;

    invoke-direct {v1, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mIRCC:Landroid/media/IRemoteControlClient;

    .line 1205
    iput v4, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    .line 355
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    .line 358
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 359
    new-instance v1, Landroid/media/RemoteControlClient$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    .line 366
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 361
    new-instance v1, Landroid/media/RemoteControlClient$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    goto :goto_0

    .line 363
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    .line 364
    const-string v1, "RemoteControlClient"

    const-string v2, "RemoteControlClient() couldn\'t find main application thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/os/Looper;)V
    .locals 5
    .param p1, "mediaButtonIntent"    # Landroid/app/PendingIntent;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/16 v0, 0xf

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    .line 852
    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackType:I

    .line 853
    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    .line 854
    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolume:I

    .line 855
    iput v4, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeHandling:I

    .line 856
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackStream:I

    .line 965
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    .line 970
    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    .line 975
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    .line 979
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    .line 983
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    .line 996
    iput v2, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 1002
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    .line 1020
    iput v3, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    .line 1027
    const/4 v0, -0x2

    iput v0, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    .line 1040
    iput-boolean v2, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 1065
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    .line 1085
    new-instance v0, Landroid/media/RemoteControlClient$1;

    invoke-direct {v0, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mIRCC:Landroid/media/IRemoteControlClient;

    .line 1205
    iput v3, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    .line 384
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    .line 386
    new-instance v0, Landroid/media/RemoteControlClient$EventHandler;

    invoke-direct {v0, p0, p0, p2}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    .line 387
    return-void
.end method

.method static synthetic access$000(Landroid/media/RemoteControlClient;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/RemoteControlClient;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/RemoteControlClient;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->onNewInternalClientGen(I)V

    return-void
.end method

.method static synthetic access$102(Landroid/media/RemoteControlClient;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 66
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/media/RemoteControlClient;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->onNewCurrentClientGen(I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onPlugDisplay(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->onUnplugDisplay(Landroid/media/IRemoteControlDisplay;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onUpdateDisplayArtworkSize(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method static synthetic access$1500(Landroid/media/RemoteControlClient;IJ)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onSeekTo(IJ)V

    return-void
.end method

.method static synthetic access$1600(Landroid/media/RemoteControlClient;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->onPositionDriftCheck()V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "x2"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->onDisplayWantsSync(Landroid/media/IRemoteControlDisplay;Z)V

    return-void
.end method

.method static synthetic access$1800(Landroid/media/RemoteControlClient;IILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onUpdateMetadata(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "x2"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->onDisplayEnable(Landroid/media/IRemoteControlDisplay;Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Landroid/media/RemoteControlClient;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 66
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->sendMetadataWithArtwork_syncCacheLock(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method static synthetic access$400(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->sendMetadata_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V

    return-void
.end method

.method static synthetic access$500(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->sendArtwork_syncCacheLock(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method static synthetic access$700(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;
    .locals 1
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    return-object v0
.end method

.method static synthetic access$800(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->sendPlaybackState_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V

    return-void
.end method

.method static synthetic access$900(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->sendTransportControlInfo_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V

    return-void
.end method

.method private static getCheckPeriodFromSpeed(F)J
    .locals 4
    .param p0, "speed"    # F

    .prologue
    .line 1753
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 1754
    const-wide/16 v0, 0x3a98

    .line 1756
    :goto_0
    return-wide v0

    :cond_0
    const v0, 0x466a6000    # 15000.0f

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-long v0, v0

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static getService()Landroid/media/IAudioService;
    .locals 2

    .prologue
    .line 1484
    sget-object v1, Landroid/media/RemoteControlClient;->sService:Landroid/media/IAudioService;

    if-eqz v1, :cond_0

    .line 1485
    sget-object v1, Landroid/media/RemoteControlClient;->sService:Landroid/media/IAudioService;

    .line 1489
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 1487
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1488
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/RemoteControlClient;->sService:Landroid/media/IAudioService;

    .line 1489
    sget-object v1, Landroid/media/RemoteControlClient;->sService:Landroid/media/IAudioService;

    goto :goto_0
.end method

.method private initiateCheckForDrift_syncCacheLock()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 634
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    if-nez v0, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    invoke-virtual {v0, v4}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    .line 638
    iget-boolean v0, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    if-eqz v0, :cond_0

    .line 641
    iget-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 648
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    invoke-static {v0}, Landroid/media/RemoteControlClient;->playbackPositionShouldMove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    invoke-virtual {v1, v4}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-static {v2}, Landroid/media/RemoteControlClient;->getCheckPeriodFromSpeed(F)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/RemoteControlClient$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private onDisplayEnable(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "enable"    # Z

    .prologue
    .line 1642
    iget-object v3, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1643
    :try_start_0
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1644
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1645
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1646
    .local v0, "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1647
    # setter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mEnabled:Z
    invoke-static {v0, p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2002(Landroid/media/RemoteControlClient$DisplayInfoForClient;Z)Z

    goto :goto_0

    .line 1650
    .end local v0    # "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1651
    return-void
.end method

.method private onDisplayWantsSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 7
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 1615
    iget-object v5, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1616
    :try_start_0
    iget-boolean v3, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 1617
    .local v3, "oldNeedsPositionSync":Z
    const/4 v2, 0x0

    .line 1618
    .local v2, "newNeedsPositionSync":Z
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1621
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1622
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1623
    .local v0, "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mEnabled:Z
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2000(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1624
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1625
    # setter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mWantsPositionSync:Z
    invoke-static {v0, p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2402(Landroid/media/RemoteControlClient$DisplayInfoForClient;Z)Z

    .line 1627
    :cond_1
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mWantsPositionSync:Z
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2400(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1628
    const/4 v2, 0x1

    goto :goto_0

    .line 1632
    .end local v0    # "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    :cond_2
    iput-boolean v2, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 1633
    iget-boolean v4, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    if-eq v3, v4, :cond_3

    .line 1635
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->initiateCheckForDrift_syncCacheLock()V

    .line 1637
    :cond_3
    monitor-exit v5

    .line 1638
    return-void

    .line 1637
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    .end local v2    # "newNeedsPositionSync":Z
    .end local v3    # "oldNeedsPositionSync":Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private onNewCurrentClientGen(I)V
    .locals 2
    .param p1, "clientGeneration"    # I

    .prologue
    .line 1530
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1531
    :try_start_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    .line 1532
    monitor-exit v1

    .line 1533
    return-void

    .line 1532
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onNewInternalClientGen(I)V
    .locals 2
    .param p1, "clientGeneration"    # I

    .prologue
    .line 1522
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1525
    :try_start_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    .line 1526
    monitor-exit v1

    .line 1527
    return-void

    .line 1526
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onPlugDisplay(Landroid/media/IRemoteControlDisplay;II)V
    .locals 6
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1537
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1539
    const/4 v2, 0x0

    .line 1540
    .local v2, "displayKnown":Z
    :try_start_0
    iget-object v3, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1541
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 1542
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1543
    .local v0, "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1544
    if-eqz v2, :cond_0

    .line 1547
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2200(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v3

    if-ne v3, p2, :cond_1

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v3

    if-eq v3, p3, :cond_0

    .line 1548
    :cond_1
    # setter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {v0, p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2202(Landroid/media/RemoteControlClient$DisplayInfoForClient;I)I

    .line 1549
    # setter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {v0, p3}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2302(Landroid/media/RemoteControlClient$DisplayInfoForClient;I)I

    .line 1550
    invoke-direct {p0, v0}, Landroid/media/RemoteControlClient;->sendArtworkToDisplay(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1551
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1559
    .end local v0    # "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1556
    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_2
    if-nez v2, :cond_3

    .line 1557
    :try_start_1
    iget-object v3, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    new-instance v5, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    invoke-direct {v5, p0, p1, p2, p3}, Landroid/media/RemoteControlClient$DisplayInfoForClient;-><init>(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1559
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1560
    return-void
.end method

.method private onPositionDriftCheck()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 658
    iget-object v5, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v5

    .line 659
    :try_start_0
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    if-nez v4, :cond_1

    .line 660
    :cond_0
    monitor-exit v5

    .line 686
    :goto_0
    return-void

    .line 662
    :cond_1
    iget-wide v6, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    cmp-long v4, v6, v12

    if-ltz v4, :cond_2

    iget v4, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-nez v4, :cond_3

    .line 664
    :cond_2
    monitor-exit v5

    goto :goto_0

    .line 685
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 666
    :cond_3
    :try_start_1
    iget-wide v6, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    sub-long/2addr v8, v10

    long-to-float v4, v8

    iget v8, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    div-float/2addr v4, v8

    float-to-long v8, v4

    add-long v2, v6, v8

    .line 668
    .local v2, "estPos":J
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    invoke-interface {v4}, Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;->onGetPlaybackPosition()J

    move-result-wide v0

    .line 669
    .local v0, "actPos":J
    cmp-long v4, v0, v12

    if-ltz v4, :cond_5

    .line 670
    sub-long v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    cmp-long v4, v6, v8

    if-lez v4, :cond_4

    .line 673
    iget v4, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    iget v6, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-virtual {p0, v4, v0, v1, v6}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 685
    :goto_1
    monitor-exit v5

    goto :goto_0

    .line 677
    :cond_4
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    iget-object v6, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iget v7, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-static {v7}, Landroid/media/RemoteControlClient;->getCheckPeriodFromSpeed(F)J

    move-result-wide v7

    invoke-virtual {v4, v6, v7, v8}, Landroid/media/RemoteControlClient$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 683
    :cond_5
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    const/16 v6, 0xb

    invoke-virtual {v4, v6}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private onSeekTo(IJ)V
    .locals 2
    .param p1, "generationId"    # I
    .param p2, "timeMs"    # J

    .prologue
    .line 1654
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1655
    :try_start_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    invoke-interface {v0, p2, p3}, Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;->onPlaybackPositionUpdate(J)V

    .line 1658
    :cond_0
    monitor-exit v1

    .line 1659
    return-void

    .line 1658
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onUnplugDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 7
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 1564
    iget-object v5, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1565
    :try_start_0
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1566
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1567
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1568
    .local v0, "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1569
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1574
    .end local v0    # "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    :cond_1
    iget-boolean v3, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 1575
    .local v3, "oldNeedsPositionSync":Z
    const/4 v2, 0x0

    .line 1576
    .local v2, "newNeedsPositionSync":Z
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1577
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1578
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1579
    .restart local v0    # "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mWantsPositionSync:Z
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2400(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1580
    const/4 v2, 0x1

    .line 1584
    .end local v0    # "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    :cond_3
    iput-boolean v2, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 1585
    iget-boolean v4, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    if-eq v3, v4, :cond_4

    .line 1587
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->initiateCheckForDrift_syncCacheLock()V

    .line 1589
    :cond_4
    monitor-exit v5

    .line 1590
    return-void

    .line 1589
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    .end local v2    # "newNeedsPositionSync":Z
    .end local v3    # "oldNeedsPositionSync":Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private onUpdateDisplayArtworkSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1594
    iget-object v3, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1595
    :try_start_0
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1596
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1597
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1598
    .local v0, "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2200(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v2

    if-ne v2, p2, :cond_1

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v2

    if-eq v2, p3, :cond_0

    .line 1600
    :cond_1
    # setter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {v0, p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2202(Landroid/media/RemoteControlClient$DisplayInfoForClient;I)I

    .line 1601
    # setter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {v0, p3}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2302(Landroid/media/RemoteControlClient$DisplayInfoForClient;I)I

    .line 1602
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mEnabled:Z
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2000(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1603
    invoke-direct {p0, v0}, Landroid/media/RemoteControlClient;->sendArtworkToDisplay(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1604
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1610
    .end local v0    # "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    :cond_2
    monitor-exit v3

    .line 1611
    return-void

    .line 1610
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private onUpdateMetadata(IILjava/lang/Object;)V
    .locals 2
    .param p1, "generationId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 1662
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1663
    :try_start_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    if-eqz v0, :cond_0

    .line 1664
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    invoke-interface {v0, p2, p3}, Landroid/media/RemoteControlClient$OnMetadataUpdateListener;->onMetadataUpdate(ILjava/lang/Object;)V

    .line 1666
    :cond_0
    monitor-exit v1

    .line 1667
    return-void

    .line 1666
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static playbackPositionShouldMove(I)Z
    .locals 1
    .param p0, "playstate"    # I

    .prologue
    .line 1716
    packed-switch p0, :pswitch_data_0

    .line 1728
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1723
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1716
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .prologue
    .line 1683
    if-eqz p1, :cond_2

    .line 1684
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 1685
    .local v9, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1686
    .local v2, "height":I
    move/from16 v0, p2

    if-gt v9, v0, :cond_0

    move/from16 v0, p3

    if-le v2, v0, :cond_2

    .line 1687
    :cond_0
    move/from16 v0, p2

    int-to-float v10, v0

    int-to-float v11, v9

    div-float/2addr v10, v11

    move/from16 v0, p3

    int-to-float v11, v0

    int-to-float v12, v2

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1688
    .local v8, "scale":F
    int-to-float v10, v9

    mul-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1689
    .local v5, "newWidth":I
    int-to-float v10, v2

    mul-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1690
    .local v4, "newHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 1691
    .local v3, "newConfig":Landroid/graphics/Bitmap$Config;
    if-nez v3, :cond_1

    .line 1692
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1694
    :cond_1
    invoke-static {v5, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1695
    .local v6, "outBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1696
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 1697
    .local v7, "paint":Landroid/graphics/Paint;
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1698
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1699
    const/4 v10, 0x0

    new-instance v11, Landroid/graphics/RectF;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v10, v11, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1701
    move-object/from16 p1, v6

    .line 1704
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "height":I
    .end local v3    # "newConfig":Landroid/graphics/Bitmap$Config;
    .end local v4    # "newHeight":I
    .end local v5    # "newWidth":I
    .end local v6    # "outBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "paint":Landroid/graphics/Paint;
    .end local v8    # "scale":F
    .end local v9    # "width":I
    :cond_2
    return-object p1
.end method

.method private sendArtworkToDisplay(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z
    .locals 5
    .param p1, "di"    # Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .prologue
    .line 1426
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2200(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v2

    if-lez v2, :cond_0

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v2

    if-lez v2, :cond_0

    .line 1427
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2200(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v3

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Landroid/media/RemoteControlClient;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1430
    .local v0, "artwork":Landroid/graphics/Bitmap;
    :try_start_0
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    iget v3, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    invoke-interface {v2, v3, v0}, Landroid/media/IRemoteControlDisplay;->setArtwork(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1436
    .end local v0    # "artwork":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 1431
    .restart local v0    # "artwork":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 1432
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteControlClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in sendArtworkToDisplay(), dead display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1433
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendArtwork_syncCacheLock(Landroid/media/IRemoteControlDisplay;II)V
    .locals 4
    .param p1, "target"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1403
    iget v2, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v3, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v2, v3, :cond_0

    .line 1404
    if-eqz p1, :cond_1

    .line 1405
    new-instance v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/RemoteControlClient$DisplayInfoForClient;-><init>(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V

    .line 1406
    .local v0, "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    invoke-direct {p0, v0}, Landroid/media/RemoteControlClient;->sendArtworkToDisplay(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    .line 1417
    .end local v0    # "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    :cond_0
    return-void

    .line 1410
    :cond_1
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1411
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1412
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    invoke-direct {p0, v2}, Landroid/media/RemoteControlClient;->sendArtworkToDisplay(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1413
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private sendAudioServiceNewPlaybackInfo_syncCacheLock(II)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "value"    # I

    .prologue
    .line 1493
    iget v2, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1503
    :goto_0
    return-void

    .line 1497
    :cond_0
    invoke-static {}, Landroid/media/RemoteControlClient;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1499
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget v2, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    invoke-interface {v1, v2, p1, p2}, Landroid/media/IAudioService;->setPlaybackInfoForRcc(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1500
    :catch_0
    move-exception v0

    .line 1501
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteControlClient"

    const-string v3, "Dead object in setPlaybackInfoForRcc"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendAudioServiceNewPlaybackState_syncCacheLock()V
    .locals 7

    .prologue
    .line 1506
    iget v1, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1516
    :goto_0
    return-void

    .line 1509
    :cond_0
    invoke-static {}, Landroid/media/RemoteControlClient;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1511
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    iget v1, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    iget v2, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    iget-wide v3, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    iget v5, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setPlaybackStateForRcc(IIJF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1513
    :catch_0
    move-exception v6

    .line 1514
    .local v6, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteControlClient"

    const-string v2, "Dead object in setPlaybackStateForRcc"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendMetadataWithArtwork_syncCacheLock(Landroid/media/IRemoteControlDisplay;II)V
    .locals 7
    .param p1, "target"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1441
    iget v4, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v5, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v4, v5, :cond_0

    .line 1442
    if-eqz p1, :cond_2

    .line 1444
    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 1445
    :try_start_0
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    invoke-direct {p0, v4, p2, p3}, Landroid/media/RemoteControlClient;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1446
    .local v0, "artwork":Landroid/graphics/Bitmap;
    iget v4, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v5, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {p1, v4, v5, v0}, Landroid/media/IRemoteControlDisplay;->setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 1475
    .end local v0    # "artwork":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 1448
    :cond_1
    iget v4, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v5, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {p1, v4, v5}, Landroid/media/IRemoteControlDisplay;->setMetadata(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1450
    :catch_0
    move-exception v3

    .line 1451
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "RemoteControlClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in set(All)Metadata() for dead display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1456
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1457
    .local v2, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1458
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1460
    .local v1, "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    :try_start_1
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mEnabled:Z
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2000(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1461
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2200(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v4

    if-lez v4, :cond_4

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v4

    if-lez v4, :cond_4

    .line 1462
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2200(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v5

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Landroid/media/RemoteControlClient;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1464
    .restart local v0    # "artwork":Landroid/graphics/Bitmap;
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    iget v5, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v6, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {v4, v5, v6, v0}, Landroid/media/IRemoteControlDisplay;->setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1469
    .end local v0    # "artwork":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v3

    .line 1470
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v4, "RemoteControlClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when setting metadata, dead display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1471
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1466
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_4
    :try_start_2
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    iget v5, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v6, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {v4, v5, v6}, Landroid/media/IRemoteControlDisplay;->setMetadata(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private sendMetadata_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V
    .locals 6
    .param p1, "target"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 1346
    iget v3, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v4, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v3, v4, :cond_0

    .line 1347
    if-eqz p1, :cond_1

    .line 1349
    :try_start_0
    iget v3, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v4, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {p1, v3, v4}, Landroid/media/IRemoteControlDisplay;->setMetadata(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    :cond_0
    :goto_0
    return-void

    .line 1350
    :catch_0
    move-exception v2

    .line 1351
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteControlClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in setMetadata() for dead display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1356
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1357
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1358
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1359
    .local v0, "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mEnabled:Z
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2000(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1361
    :try_start_1
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    iget v4, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v5, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {v3, v4, v5}, Landroid/media/IRemoteControlDisplay;->setMetadata(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1362
    :catch_1
    move-exception v2

    .line 1363
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v3, "RemoteControlClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in setMetadata(), dead display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1364
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method private sendPlaybackState_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V
    .locals 11
    .param p1, "target"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 1316
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v1, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v0, v1, :cond_0

    .line 1317
    if-eqz p1, :cond_1

    .line 1319
    :try_start_0
    iget v1, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget v2, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    iget-wide v3, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    iget-wide v5, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    iget v7, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Landroid/media/IRemoteControlDisplay;->setPlaybackState(IIJJF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1343
    :cond_0
    :goto_0
    return-void

    .line 1322
    :catch_0
    move-exception v10

    .line 1323
    .local v10, "e":Landroid/os/RemoteException;
    const-string v0, "RemoteControlClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in setPlaybackState() for dead display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1328
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1329
    .local v9, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1330
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1331
    .local v8, "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mEnabled:Z
    invoke-static {v8}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2000(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1333
    :try_start_1
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v8}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v0

    iget v1, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget v2, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    iget-wide v3, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    iget-wide v5, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    iget v7, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-interface/range {v0 .. v7}, Landroid/media/IRemoteControlDisplay;->setPlaybackState(IIJJF)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1336
    :catch_1
    move-exception v10

    .line 1337
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v0, "RemoteControlClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in setPlaybackState(), dead display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v8}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1338
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method private sendTransportControlInfo_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V
    .locals 7
    .param p1, "target"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 1372
    iget v3, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v4, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v3, v4, :cond_0

    .line 1373
    if-eqz p1, :cond_1

    .line 1375
    :try_start_0
    iget v3, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget v4, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    iget v5, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    invoke-interface {p1, v3, v4, v5}, Landroid/media/IRemoteControlDisplay;->setTransportControlInfo(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1399
    :cond_0
    :goto_0
    return-void

    .line 1377
    :catch_0
    move-exception v2

    .line 1378
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteControlClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in setTransportControlFlags() for dead display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1384
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1385
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1386
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1387
    .local v0, "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mEnabled:Z
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2000(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1389
    :try_start_1
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    iget v4, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget v5, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    iget v6, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    invoke-interface {v3, v4, v5, v6}, Landroid/media/IRemoteControlDisplay;->setTransportControlInfo(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1391
    :catch_1
    move-exception v2

    .line 1392
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v3, "RemoteControlClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in setTransportControlFlags(), dead display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2100(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1394
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method private setPlaybackStateInt(IJFZ)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "timeInMs"    # J
    .param p4, "playbackSpeed"    # F
    .param p5, "hasPosition"    # Z

    .prologue
    .line 601
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 602
    :try_start_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    if-ne v0, p1, :cond_0

    iget-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    cmp-long v0, v2, p2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    cmpl-float v0, v0, p4

    if-eqz v0, :cond_1

    .line 605
    :cond_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    .line 609
    if-eqz p5, :cond_3

    .line 610
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gez v0, :cond_2

    .line 611
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    .line 618
    :goto_0
    iput p4, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    .line 620
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    .line 623
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/RemoteControlClient;->sendPlaybackState_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V

    .line 625
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendAudioServiceNewPlaybackState_syncCacheLock()V

    .line 628
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->initiateCheckForDrift_syncCacheLock()V

    .line 630
    :cond_1
    monitor-exit v1

    .line 631
    return-void

    .line 613
    :cond_2
    iput-wide p2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    goto :goto_0

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 616
    :cond_3
    const-wide v2, -0x7fe688e67fe67d00L

    :try_start_1
    iput-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 5
    .param p1, "startEmpty"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 538
    new-instance v0, Landroid/media/RemoteControlClient$MetadataEditor;

    invoke-direct {v0, p0, v4}, Landroid/media/RemoteControlClient$MetadataEditor;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient$1;)V

    .line 539
    .local v0, "editor":Landroid/media/RemoteControlClient$MetadataEditor;
    if-eqz p1, :cond_0

    .line 540
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 541
    iput-object v4, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 542
    iput-boolean v2, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    .line 543
    iput-boolean v2, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    .line 544
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditableKeys:J

    .line 551
    :goto_0
    return-object v0

    .line 546
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 547
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 548
    iput-boolean v3, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    .line 549
    iput-boolean v3, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    goto :goto_0
.end method

.method public getIRemoteControlClient()Landroid/media/IRemoteControlClient;
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mIRCC:Landroid/media/IRemoteControlClient;

    return-object v0
.end method

.method public getIntPlaybackInformation(I)I
    .locals 4
    .param p1, "what"    # I

    .prologue
    .line 943
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 944
    packed-switch p1, :pswitch_data_0

    .line 956
    :try_start_0
    const-string v0, "RemoteControlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntPlaybackInformation() unknown key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/high16 v0, -0x80000000

    monitor-exit v1

    :goto_0
    return v0

    .line 946
    :pswitch_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackType:I

    monitor-exit v1

    goto :goto_0

    .line 959
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 948
    :pswitch_1
    :try_start_1
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolume:I

    monitor-exit v1

    goto :goto_0

    .line 950
    :pswitch_2
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    monitor-exit v1

    goto :goto_0

    .line 952
    :pswitch_3
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackStream:I

    monitor-exit v1

    goto :goto_0

    .line 954
    :pswitch_4
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeHandling:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 944
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getRcMediaIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getRcseId()I
    .locals 1

    .prologue
    .line 1221
    iget v0, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    return v0
.end method

.method public setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V
    .locals 2
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    .prologue
    .line 735
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 736
    :try_start_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    .line 737
    monitor-exit v1

    .line 738
    return-void

    .line 737
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnGetPlaybackPositionListener(Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;)V
    .locals 6
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    .prologue
    .line 806
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 807
    :try_start_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    .line 808
    .local v0, "oldCapa":I
    if-eqz p1, :cond_2

    .line 809
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    sget v3, Landroid/media/RemoteControlClient;->MEDIA_POSITION_READABLE:I

    or-int/2addr v1, v3

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    .line 813
    :goto_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    .line 814
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    if-eq v0, v1, :cond_0

    .line 816
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/RemoteControlClient;->sendTransportControlInfo_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V

    .line 818
    :cond_0
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    invoke-static {v1}, Landroid/media/RemoteControlClient;->playbackPositionShouldMove(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 822
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    iget-object v3, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/media/RemoteControlClient$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 826
    :cond_1
    monitor-exit v2

    .line 827
    return-void

    .line 811
    :cond_2
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    sget v3, Landroid/media/RemoteControlClient;->MEDIA_POSITION_READABLE:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    goto :goto_0

    .line 826
    .end local v0    # "oldCapa":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPlaybackInformation(II)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 871
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 872
    packed-switch p1, :pswitch_data_0

    .line 923
    :try_start_0
    const-string v0, "RemoteControlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPlaybackInformation() ignoring unknown key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_0
    :goto_0
    monitor-exit v1

    .line 927
    return-void

    .line 874
    :pswitch_0
    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 875
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackType:I

    if-eq v0, p2, :cond_0

    .line 876
    iput p2, p0, Landroid/media/RemoteControlClient;->mPlaybackType:I

    .line 877
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->sendAudioServiceNewPlaybackInfo_syncCacheLock(II)V

    goto :goto_0

    .line 926
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 880
    :cond_1
    :try_start_1
    const-string v0, "RemoteControlClient"

    const-string/jumbo v2, "using invalid value for PLAYBACKINFO_PLAYBACK_TYPE"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 884
    :pswitch_1
    const/4 v0, -0x1

    if-le p2, v0, :cond_2

    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    if-gt p2, v0, :cond_2

    .line 885
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolume:I

    if-eq v0, p2, :cond_0

    .line 886
    iput p2, p0, Landroid/media/RemoteControlClient;->mPlaybackVolume:I

    .line 887
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->sendAudioServiceNewPlaybackInfo_syncCacheLock(II)V

    goto :goto_0

    .line 890
    :cond_2
    const-string v0, "RemoteControlClient"

    const-string/jumbo v2, "using invalid value for PLAYBACKINFO_VOLUME"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 894
    :pswitch_2
    if-lez p2, :cond_3

    .line 895
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    if-eq v0, p2, :cond_0

    .line 896
    iput p2, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    .line 897
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->sendAudioServiceNewPlaybackInfo_syncCacheLock(II)V

    goto :goto_0

    .line 900
    :cond_3
    const-string v0, "RemoteControlClient"

    const-string/jumbo v2, "using invalid value for PLAYBACKINFO_VOLUME_MAX"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 904
    :pswitch_3
    if-ltz p2, :cond_4

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 905
    iput p2, p0, Landroid/media/RemoteControlClient;->mPlaybackStream:I

    goto :goto_0

    .line 907
    :cond_4
    const-string v0, "RemoteControlClient"

    const-string/jumbo v2, "using invalid value for PLAYBACKINFO_USES_STREAM"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 911
    :pswitch_4
    if-ltz p2, :cond_5

    if-gt p2, v0, :cond_5

    .line 912
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeHandling:I

    if-eq v0, p2, :cond_0

    .line 913
    iput p2, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeHandling:I

    .line 914
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->sendAudioServiceNewPlaybackInfo_syncCacheLock(II)V

    goto :goto_0

    .line 917
    :cond_5
    const-string v0, "RemoteControlClient"

    const-string/jumbo v2, "using invalid value for PLAYBACKINFO_VOLUME_HANDLING"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 872
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V
    .locals 4
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    .prologue
    .line 784
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 785
    :try_start_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    .line 786
    .local v0, "oldCapa":I
    if-eqz p1, :cond_1

    .line 787
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    sget v3, Landroid/media/RemoteControlClient;->MEDIA_POSITION_WRITABLE:I

    or-int/2addr v1, v3

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    .line 791
    :goto_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    .line 792
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    if-eq v0, v1, :cond_0

    .line 794
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/RemoteControlClient;->sendTransportControlInfo_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V

    .line 796
    :cond_0
    monitor-exit v2

    .line 797
    return-void

    .line 789
    :cond_1
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    sget v3, Landroid/media/RemoteControlClient;->MEDIA_POSITION_WRITABLE:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    goto :goto_0

    .line 796
    .end local v0    # "oldCapa":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPlaybackState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 568
    const-wide v2, -0x7fe688e67fe67d00L

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/RemoteControlClient;->setPlaybackStateInt(IJFZ)V

    .line 570
    return-void
.end method

.method public setPlaybackState(IJF)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "timeInMs"    # J
    .param p4, "playbackSpeed"    # F

    .prologue
    .line 596
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/RemoteControlClient;->setPlaybackStateInt(IJFZ)V

    .line 597
    return-void
.end method

.method public setRcseId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1214
    iput p1, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    .line 1215
    return-void
.end method

.method public setTransportControlFlags(I)V
    .locals 2
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 703
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 705
    :try_start_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 708
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/RemoteControlClient;->sendTransportControlInfo_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V

    .line 709
    monitor-exit v1

    .line 710
    return-void

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
