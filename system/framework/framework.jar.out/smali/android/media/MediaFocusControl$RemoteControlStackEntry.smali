.class public Landroid/media/MediaFocusControl$RemoteControlStackEntry;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RemoteControlStackEntry"
.end annotation


# instance fields
.field public mCallingPackageName:Ljava/lang/String;

.field public mCallingUid:I

.field public final mController:Landroid/media/MediaFocusControl;

.field public final mMediaIntent:Landroid/app/PendingIntent;

.field public mPlaybackState:Landroid/media/MediaFocusControl$RccPlaybackState;

.field public mPlaybackStream:I

.field public mPlaybackType:I

.field public mPlaybackVolume:I

.field public mPlaybackVolumeHandling:I

.field public mPlaybackVolumeMax:I

.field public mRcClient:Landroid/media/IRemoteControlClient;

.field public mRcClientDeathHandler:Landroid/media/MediaFocusControl$RcClientDeathHandler;

.field public mRccId:I

.field public final mReceiverComponent:Landroid/content/ComponentName;

.field public mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

.field public mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/media/MediaFocusControl;Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "controller"    # Landroid/media/MediaFocusControl;
    .param p2, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "eventReceiver"    # Landroid/content/ComponentName;
    .param p4, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, -0x1

    .line 1246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1202
    iput v1, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    .line 1247
    iput-object p1, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mController:Landroid/media/MediaFocusControl;

    .line 1248
    iput-object p2, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    .line 1249
    iput-object p3, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    .line 1250
    iput-object p4, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mToken:Landroid/os/IBinder;

    .line 1251
    iput v1, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingUid:I

    .line 1252
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 1253
    # ++operator for: Landroid/media/MediaFocusControl;->sLastRccId:I
    invoke-static {}, Landroid/media/MediaFocusControl;->access$3004()I

    move-result v1

    iput v1, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    .line 1254
    new-instance v1, Landroid/media/MediaFocusControl$RccPlaybackState;

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/media/MediaFocusControl$RccPlaybackState;-><init>(IJF)V

    iput-object v1, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackState:Landroid/media/MediaFocusControl$RccPlaybackState;

    .line 1259
    invoke-virtual {p0}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->resetPlaybackInfo()V

    .line 1260
    iget-object v1, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mToken:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 1262
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1271
    :cond_0
    :goto_0
    return-void

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mController:Landroid/media/MediaFocusControl;

    # getter for: Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;
    invoke-static {v1}, Landroid/media/MediaFocusControl;->access$200(Landroid/media/MediaFocusControl;)Landroid/media/MediaFocusControl$MediaEventHandler;

    move-result-object v1

    new-instance v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry$1;

    invoke-direct {v2, p0}, Landroid/media/MediaFocusControl$RemoteControlStackEntry$1;-><init>(Landroid/media/MediaFocusControl$RemoteControlStackEntry;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaFocusControl$MediaEventHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 1296
    iget-object v0, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mController:Landroid/media/MediaFocusControl;

    iget-object v1, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/media/MediaFocusControl;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    .line 1297
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 1287
    invoke-virtual {p0}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 1288
    iget-object v0, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1290
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mToken:Landroid/os/IBinder;

    .line 1292
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1301
    invoke-virtual {p0}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->destroy()V

    .line 1302
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1303
    return-void
.end method

.method public resetPlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0xf

    .line 1235
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackType:I

    .line 1236
    iput v1, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolume:I

    .line 1237
    iput v1, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    .line 1238
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    .line 1239
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackStream:I

    .line 1240
    iget-object v0, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackState:Landroid/media/MediaFocusControl$RccPlaybackState;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl$RccPlaybackState;->reset()V

    .line 1241
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    .line 1242
    return-void
.end method

.method public unlinkToRcClientDeath()V
    .locals 4

    .prologue
    .line 1274
    iget-object v1, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/MediaFocusControl$RcClientDeathHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/MediaFocusControl$RcClientDeathHandler;

    # getter for: Landroid/media/MediaFocusControl$RcClientDeathHandler;->mCb:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/MediaFocusControl$RcClientDeathHandler;->access$3100(Landroid/media/MediaFocusControl$RcClientDeathHandler;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1276
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/MediaFocusControl$RcClientDeathHandler;

    # getter for: Landroid/media/MediaFocusControl$RcClientDeathHandler;->mCb:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/MediaFocusControl$RcClientDeathHandler;->access$3100(Landroid/media/MediaFocusControl$RcClientDeathHandler;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/MediaFocusControl$RcClientDeathHandler;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1277
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/MediaFocusControl$RcClientDeathHandler;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    :cond_0
    :goto_0
    return-void

    .line 1278
    :catch_0
    move-exception v0

    .line 1280
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in unlinkToRcClientDeath()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    goto :goto_0
.end method
