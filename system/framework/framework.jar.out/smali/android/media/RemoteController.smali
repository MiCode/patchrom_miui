.class public final Landroid/media/RemoteController;
.super Ljava/lang/Object;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteController$PlaybackInfo;,
        Landroid/media/RemoteController$EventHandler;,
        Landroid/media/RemoteController$RcDisplay;,
        Landroid/media/RemoteController$MetadataEditor;,
        Landroid/media/RemoteController$OnClientUpdateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_BITMAP_DIMENSION:I = 0x200

.field private static final MSG_CLIENT_CHANGE:I = 0x4

.field private static final MSG_DISPLAY_ENABLE:I = 0x5

.field private static final MSG_NEW_METADATA:I = 0x3

.field private static final MSG_NEW_PENDING_INTENT:I = 0x0

.field private static final MSG_NEW_PLAYBACK_INFO:I = 0x1

.field private static final MSG_NEW_TRANSPORT_INFO:I = 0x2

.field public static final POSITION_SYNCHRONIZATION_CHECK:I = 0x1

.field public static final POSITION_SYNCHRONIZATION_NONE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RemoteController"

.field private static final TRANSPORT_UNKNOWN:I

.field private static final mGenLock:Ljava/lang/Object;

.field private static final mInfoLock:Ljava/lang/Object;


# instance fields
.field private mArtworkHeight:I

.field private mArtworkWidth:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mClientGenerationIdCurrent:I

.field private mClientPendingIntentCurrent:Landroid/app/PendingIntent;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mEventHandler:Landroid/media/RemoteController$EventHandler;

.field private mIsRegistered:Z

.field private mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

.field private final mMaxBitmapDimension:I

.field private mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

.field private mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private final mRcd:Landroid/media/RemoteController$RcDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateListener"    # Landroid/media/RemoteController$OnClientUpdateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;Landroid/os/Looper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateListener"    # Landroid/media/RemoteController$OnClientUpdateListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v3, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    .line 78
    iput-boolean v3, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    .line 82
    iput v2, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    .line 83
    iput v2, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    .line 84
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/RemoteController;->mEnabled:Z

    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid null Context"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_0
    if-nez p2, :cond_1

    .line 113
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid null OnClientUpdateListener"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_1
    if-eqz p3, :cond_2

    .line 116
    new-instance v2, Landroid/media/RemoteController$EventHandler;

    invoke-direct {v2, p0, p0, p3}, Landroid/media/RemoteController$EventHandler;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    .line 125
    :goto_0
    iput-object p2, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 126
    iput-object p1, p0, Landroid/media/RemoteController;->mContext:Landroid/content/Context;

    .line 127
    new-instance v2, Landroid/media/RemoteController$RcDisplay;

    invoke-direct {v2, p0}, Landroid/media/RemoteController$RcDisplay;-><init>(Landroid/media/RemoteController;)V

    iput-object v2, p0, Landroid/media/RemoteController;->mRcd:Landroid/media/RemoteController$RcDisplay;

    .line 128
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Landroid/media/RemoteController;->mAudioManager:Landroid/media/AudioManager;

    .line 130
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 131
    const/16 v2, 0x200

    iput v2, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    .line 136
    :goto_1
    return-void

    .line 118
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 119
    .local v1, "l":Landroid/os/Looper;
    if-eqz v1, :cond_3

    .line 120
    new-instance v2, Landroid/media/RemoteController$EventHandler;

    invoke-direct {v2, p0, p0, v1}, Landroid/media/RemoteController$EventHandler;-><init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    goto :goto_0

    .line 122
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Calling thread not associated with a looper"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    .end local v1    # "l":Landroid/os/Looper;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 134
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/RemoteController;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/RemoteController;

    .prologue
    .line 56
    iget v0, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    return v0
.end method

.method static synthetic access$1000(Landroid/media/RemoteController;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteController;->onClientChange(IZ)V

    return-void
.end method

.method static synthetic access$102(Landroid/media/RemoteController;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteController;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    return p1
.end method

.method static synthetic access$1100(Landroid/media/RemoteController;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteController;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/media/RemoteController;->onDisplayEnable(Z)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/RemoteController;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Landroid/media/RemoteController;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/media/RemoteController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;
    .locals 1
    .param p0, "x0"    # Landroid/media/RemoteController;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Handler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    .line 56
    invoke-static/range {p0 .. p6}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$600(Landroid/media/RemoteController;ILandroid/app/PendingIntent;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/app/PendingIntent;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteController;->onNewPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic access$700(Landroid/media/RemoteController;ILandroid/media/RemoteController$PlaybackInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/media/RemoteController$PlaybackInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteController;->onNewPlaybackInfo(ILandroid/media/RemoteController$PlaybackInfo;)V

    return-void
.end method

.method static synthetic access$800(Landroid/media/RemoteController;II)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteController;->onNewTransportInfo(II)V

    return-void
.end method

.method static synthetic access$900(Landroid/media/RemoteController;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteController;->onNewMetadata(ILandroid/os/Bundle;)V

    return-void
.end method

.method private onClientChange(IZ)V
    .locals 3
    .param p1, "genId"    # I
    .param p2, "clearing"    # Z

    .prologue
    .line 807
    sget-object v2, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    monitor-enter v2

    .line 808
    :try_start_0
    iget v1, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    if-eq v1, p1, :cond_1

    .line 809
    monitor-exit v2

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    sget-object v2, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 814
    :try_start_1
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 815
    .local v0, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    .line 816
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 817
    if-eqz v0, :cond_0

    .line 818
    invoke-interface {v0, p2}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientChange(Z)V

    goto :goto_0

    .line 811
    .end local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 816
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private onDisplayEnable(Z)V
    .locals 10
    .param p1, "enabled"    # Z

    .prologue
    .line 824
    sget-object v2, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 825
    :try_start_0
    iput-boolean p1, p0, Landroid/media/RemoteController;->mEnabled:Z

    .line 826
    iget-object v9, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 827
    .local v9, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    if-nez p1, :cond_0

    .line 831
    sget-object v2, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    monitor-enter v2

    .line 832
    :try_start_1
    iget v8, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    .line 833
    .local v8, "genId":I
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 835
    new-instance v0, Landroid/media/RemoteController$PlaybackInfo;

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/RemoteController$PlaybackInfo;-><init>(IJJF)V

    .line 838
    .local v0, "pi":Landroid/media/RemoteController$PlaybackInfo;
    iget-object v1, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v4, v8

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 841
    iget-object v1, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, v8

    invoke-static/range {v1 .. v7}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 845
    new-instance v6, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v6, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 846
    .local v6, "metadata":Landroid/os/Bundle;
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v6, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 849
    iget-object v1, p0, Landroid/media/RemoteController;->mEventHandler:Landroid/media/RemoteController$EventHandler;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v4, v8

    invoke-static/range {v1 .. v7}, Landroid/media/RemoteController;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 852
    .end local v0    # "pi":Landroid/media/RemoteController$PlaybackInfo;
    .end local v6    # "metadata":Landroid/os/Bundle;
    .end local v8    # "genId":I
    :cond_0
    return-void

    .line 827
    .end local v9    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 833
    .restart local v9    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private onNewMetadata(ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "genId"    # I
    .param p2, "metadata"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v7, 0x0

    const v6, 0x1fffffff

    .line 771
    sget-object v5, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    monitor-enter v5

    .line 772
    :try_start_0
    iget v4, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    if-eq v4, p1, :cond_1

    .line 773
    monitor-exit v5

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 781
    .local v0, "editableKeys":J
    cmp-long v4, v0, v7

    if-eqz v4, :cond_2

    .line 782
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 784
    :cond_2
    sget-object v5, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v5

    .line 785
    :try_start_1
    iget-object v2, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 786
    .local v2, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    iget-object v4, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    iget-object v4, v4, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    if-eqz v4, :cond_4

    .line 787
    iget-object v4, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    iget-object v4, v4, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    if-eq v4, p2, :cond_3

    .line 789
    iget-object v4, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    iget-object v4, v4, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-virtual {v4, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 792
    :cond_3
    iget-object v6, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    const/16 v7, 0x64

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7, v4}, Landroid/media/RemoteController$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/MediaMetadataEditor;

    .line 795
    iget-object v4, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    const/16 v6, 0x64

    # invokes: Landroid/media/RemoteController$MetadataEditor;->cleanupBitmapFromBundle(I)V
    invoke-static {v4, v6}, Landroid/media/RemoteController$MetadataEditor;->access$1200(Landroid/media/RemoteController$MetadataEditor;I)V

    .line 799
    :goto_1
    iget-object v3, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    .line 800
    .local v3, "metadataEditor":Landroid/media/RemoteController$MetadataEditor;
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 801
    if-eqz v2, :cond_0

    .line 802
    invoke-interface {v2, v3}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V

    goto :goto_0

    .line 775
    .end local v0    # "editableKeys":J
    .end local v2    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    .end local v3    # "metadataEditor":Landroid/media/RemoteController$MetadataEditor;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 797
    .restart local v0    # "editableKeys":J
    .restart local v2    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :cond_4
    :try_start_3
    new-instance v4, Landroid/media/RemoteController$MetadataEditor;

    invoke-direct {v4, p0, p2, v0, v1}, Landroid/media/RemoteController$MetadataEditor;-><init>(Landroid/media/RemoteController;Landroid/os/Bundle;J)V

    iput-object v4, p0, Landroid/media/RemoteController;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    goto :goto_1

    .line 800
    .end local v2    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method private onNewPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 2
    .param p1, "genId"    # I
    .param p2, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 720
    sget-object v1, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    monitor-enter v1

    .line 721
    :try_start_0
    iget v0, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    if-eq v0, p1, :cond_0

    .line 722
    monitor-exit v1

    .line 728
    :goto_0
    return-void

    .line 724
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 725
    sget-object v1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 726
    :try_start_1
    iput-object p2, p0, Landroid/media/RemoteController;->mClientPendingIntentCurrent:Landroid/app/PendingIntent;

    .line 727
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 724
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private onNewPlaybackInfo(ILandroid/media/RemoteController$PlaybackInfo;)V
    .locals 7
    .param p1, "genId"    # I
    .param p2, "pi"    # Landroid/media/RemoteController$PlaybackInfo;

    .prologue
    .line 731
    sget-object v2, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    monitor-enter v2

    .line 732
    :try_start_0
    iget v1, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    if-eq v1, p1, :cond_1

    .line 733
    monitor-exit v2

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    sget-object v2, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 738
    :try_start_1
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 739
    .local v0, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    iput-object p2, p0, Landroid/media/RemoteController;->mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

    .line 740
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 741
    if-eqz v0, :cond_0

    .line 742
    iget-wide v1, p2, Landroid/media/RemoteController$PlaybackInfo;->mCurrentPosMs:J

    const-wide v3, -0x7fe688e67fe67d00L

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 743
    iget v1, p2, Landroid/media/RemoteController$PlaybackInfo;->mState:I

    invoke-interface {v0, v1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    goto :goto_0

    .line 735
    .end local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 740
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 745
    .restart local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :cond_2
    iget v1, p2, Landroid/media/RemoteController$PlaybackInfo;->mState:I

    iget-wide v2, p2, Landroid/media/RemoteController$PlaybackInfo;->mStateChangeTimeMs:J

    iget-wide v4, p2, Landroid/media/RemoteController$PlaybackInfo;->mCurrentPosMs:J

    iget v6, p2, Landroid/media/RemoteController$PlaybackInfo;->mSpeed:F

    invoke-interface/range {v0 .. v6}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(IJJF)V

    goto :goto_0
.end method

.method private onNewTransportInfo(II)V
    .locals 3
    .param p1, "genId"    # I
    .param p2, "transportControlFlags"    # I

    .prologue
    .line 752
    sget-object v2, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    monitor-enter v2

    .line 753
    :try_start_0
    iget v1, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    if-eq v1, p1, :cond_1

    .line 754
    monitor-exit v2

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    sget-object v2, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 759
    :try_start_1
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 760
    .local v0, "l":Landroid/media/RemoteController$OnClientUpdateListener;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 761
    if-eqz v0, :cond_0

    .line 762
    invoke-interface {v0, p2}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientTransportControlUpdate(I)V

    goto :goto_0

    .line 756
    .end local v0    # "l":Landroid/media/RemoteController$OnClientUpdateListener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 760
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delayMs"    # I

    .prologue
    .line 707
    if-nez p0, :cond_0

    .line 708
    const-string v0, "RemoteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "null event handler, will not deliver message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :goto_0
    return-void

    .line 711
    :cond_0
    if-nez p2, :cond_2

    .line 712
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 716
    :cond_1
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p6

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 713
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method


# virtual methods
.method public clearArtworkConfiguration()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 377
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    move-result v0

    return v0
.end method

.method public editMetadata()Landroid/media/RemoteController$MetadataEditor;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 427
    new-instance v0, Landroid/media/RemoteController$MetadataEditor;

    invoke-direct {v0, p0}, Landroid/media/RemoteController$MetadataEditor;-><init>(Landroid/media/RemoteController;)V

    .line 428
    .local v0, "editor":Landroid/media/RemoteController$MetadataEditor;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 429
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/RemoteController$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 430
    iput-boolean v2, v0, Landroid/media/RemoteController$MetadataEditor;->mMetadataChanged:Z

    .line 431
    iput-boolean v2, v0, Landroid/media/RemoteController$MetadataEditor;->mArtworkChanged:Z

    .line 432
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/media/RemoteController$MetadataEditor;->mEditableKeys:J

    .line 433
    return-object v0
.end method

.method getArtworkSize()[I
    .locals 4

    .prologue
    .line 895
    sget-object v2, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 896
    const/4 v1, 0x2

    :try_start_0
    new-array v0, v1, [I

    const/4 v1, 0x0

    iget v3, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    aput v3, v0, v1

    const/4 v1, 0x1

    iget v3, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    aput v3, v0, v1

    .line 897
    .local v0, "size":[I
    monitor-exit v2

    return-object v0

    .line 898
    .end local v0    # "size":[I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEstimatedMediaPosition()J
    .locals 14

    .prologue
    const-wide/16 v10, -0x1

    .line 221
    iget-object v12, p0, Landroid/media/RemoteController;->mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

    if-eqz v12, :cond_0

    .line 222
    iget-object v12, p0, Landroid/media/RemoteController;->mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

    iget v12, v12, Landroid/media/RemoteController$PlaybackInfo;->mState:I

    invoke-static {v12}, Landroid/media/RemoteControlClient;->playbackPositionShouldMove(I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 223
    iget-object v10, p0, Landroid/media/RemoteController;->mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

    iget-wide v10, v10, Landroid/media/RemoteController$PlaybackInfo;->mCurrentPosMs:J

    .line 238
    :cond_0
    :goto_0
    return-wide v10

    .line 227
    :cond_1
    iget-object v12, p0, Landroid/media/RemoteController;->mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

    iget-wide v8, v12, Landroid/media/RemoteController$PlaybackInfo;->mCurrentPosMs:J

    .line 228
    .local v8, "thenPos":J
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-ltz v12, :cond_0

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 233
    .local v0, "now":J
    iget-object v10, p0, Landroid/media/RemoteController;->mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

    iget-wide v6, v10, Landroid/media/RemoteController$PlaybackInfo;->mStateChangeTimeMs:J

    .line 234
    .local v6, "then":J
    sub-long v4, v0, v6

    .line 235
    .local v4, "sinceThen":J
    long-to-float v10, v4

    iget-object v11, p0, Landroid/media/RemoteController;->mLastPlaybackInfo:Landroid/media/RemoteController$PlaybackInfo;

    iget v11, v11, Landroid/media/RemoteController$PlaybackInfo;->mSpeed:F

    mul-float/2addr v10, v11

    float-to-long v2, v10

    .line 236
    .local v2, "scaledSinceThen":J
    add-long v10, v8, v2

    goto :goto_0
.end method

.method getRcDisplay()Landroid/media/RemoteController$RcDisplay;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Landroid/media/RemoteController;->mRcd:Landroid/media/RemoteController$RcDisplay;

    return-object v0
.end method

.method public getRemoteControlClientPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroid/media/RemoteController;->mClientPendingIntentCurrent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RemoteController;->mClientPendingIntentCurrent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getUpdateListener()Landroid/media/RemoteController$OnClientUpdateListener;
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Landroid/media/RemoteController;->mOnClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    return-object v0
.end method

.method public seekTo(J)Z
    .locals 3
    .param p1, "timeMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 310
    iget-boolean v1, p0, Landroid/media/RemoteController;->mEnabled:Z

    if-nez v1, :cond_0

    .line 311
    const-string v1, "RemoteController"

    const-string v2, "Cannot use seekTo() from a disabled RemoteController"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v1, 0x0

    .line 322
    :goto_0
    return v1

    .line 314
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 315
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "illegal negative time value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    :cond_1
    sget-object v2, Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;

    monitor-enter v2

    .line 319
    :try_start_0
    iget v0, p0, Landroid/media/RemoteController;->mClientGenerationIdCurrent:I

    .line 320
    .local v0, "genId":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    iget-object v1, p0, Landroid/media/RemoteController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0, p1, p2}, Landroid/media/AudioManager;->setRemoteControlClientPlaybackPosition(IJ)V

    .line 322
    const/4 v1, 0x1

    goto :goto_0

    .line 320
    .end local v0    # "genId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public sendMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 270
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Landroid/media/MediaFocusControl;->isMediaKeyCode(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 271
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "not a media key event"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 274
    :cond_0
    sget-object v4, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v4

    .line 275
    :try_start_0
    iget-boolean v5, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    if-nez v5, :cond_1

    .line 276
    const-string v5, "RemoteController"

    const-string v6, "Cannot use sendMediaKeyEvent() from an unregistered RemoteController"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    monitor-exit v4

    .line 298
    :goto_0
    return v3

    .line 279
    :cond_1
    iget-boolean v5, p0, Landroid/media/RemoteController;->mEnabled:Z

    if-nez v5, :cond_2

    .line 280
    const-string v5, "RemoteController"

    const-string v6, "Cannot use sendMediaKeyEvent() from a disabled RemoteController"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    monitor-exit v4

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 283
    :cond_2
    :try_start_1
    iget-object v2, p0, Landroid/media/RemoteController;->mClientPendingIntentCurrent:Landroid/app/PendingIntent;

    .line 284
    .local v2, "pi":Landroid/app/PendingIntent;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    if-eqz v2, :cond_3

    .line 286
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 289
    :try_start_2
    iget-object v4, p0, Landroid/media/RemoteController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0

    .line 298
    const/4 v3, 0x1

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v4, "RemoteController"

    const-string v5, "Error sending intent for media button down: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 295
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v4, "RemoteController"

    const-string v5, "No-op when sending key click, no receiver right now"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setArtworkConfiguration(II)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 369
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    move-result v0

    return v0
.end method

.method public setArtworkConfiguration(ZII)Z
    .locals 5
    .param p1, "wantBitmap"    # Z
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 336
    sget-object v1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 337
    if-eqz p1, :cond_4

    .line 338
    if-lez p2, :cond_3

    if-lez p3, :cond_3

    .line 339
    :try_start_0
    iget v0, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    if-le p2, v0, :cond_0

    iget p2, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    .line 340
    :cond_0
    iget v0, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    if-le p3, v0, :cond_1

    iget p3, p0, Landroid/media/RemoteController;->mMaxBitmapDimension:I

    .line 341
    :cond_1
    iput p2, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    .line 342
    iput p3, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    .line 350
    :goto_0
    iget-boolean v0, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Landroid/media/RemoteController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Landroid/media/RemoteController;->mRcd:Landroid/media/RemoteController$RcDisplay;

    iget v3, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    iget v4, p0, Landroid/media/RemoteController;->mArtworkHeight:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    .line 356
    :cond_2
    monitor-exit v1

    .line 357
    const/4 v0, 0x1

    return v0

    .line 344
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid dimensions"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 347
    :cond_4
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Landroid/media/RemoteController;->mArtworkWidth:I

    .line 348
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/RemoteController;->mArtworkHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method setIsRegistered(Z)V
    .locals 2
    .param p1, "registered"    # Z

    .prologue
    .line 875
    sget-object v1, Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 876
    :try_start_0
    iput-boolean p1, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    .line 877
    monitor-exit v1

    .line 878
    return-void

    .line 877
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSynchronizationMode(I)Z
    .locals 4
    .param p1, "sync"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 407
    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    .line 408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown synchronization mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    iget-boolean v2, p0, Landroid/media/RemoteController;->mIsRegistered:Z

    if-nez v2, :cond_1

    .line 411
    const-string v1, "RemoteController"

    const-string v2, "Cannot set synchronization mode on an unregistered RemoteController"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :goto_0
    return v0

    .line 414
    :cond_1
    iget-object v2, p0, Landroid/media/RemoteController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Landroid/media/RemoteController;->mRcd:Landroid/media/RemoteController$RcDisplay;

    if-ne v1, p1, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v2, v3, v0}, Landroid/media/AudioManager;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    move v0, v1

    .line 416
    goto :goto_0
.end method
