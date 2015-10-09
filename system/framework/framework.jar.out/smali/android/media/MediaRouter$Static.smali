.class Landroid/media/MediaRouter$Static;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Static"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter$Static$Client;
    }
.end annotation


# instance fields
.field mActivelyScanningWifiDisplays:Z

.field final mAppContext:Landroid/content/Context;

.field final mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

.field final mAudioService:Landroid/media/IAudioService;

.field mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

.field final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/media/MediaRouter$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mCanConfigureWifiDisplays:Z

.field final mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaRouter$RouteCategory;",
            ">;"
        }
    .end annotation
.end field

.field mClient:Landroid/media/IMediaRouterClient;

.field mClientState:Landroid/media/MediaRouterClientState;

.field final mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

.field mCurrentUserId:I

.field mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

.field mDiscoverRequestActiveScan:Z

.field mDiscoveryRequestRouteTypes:I

.field final mDisplayService:Landroid/hardware/display/DisplayManager;

.field final mHandler:Landroid/os/Handler;

.field final mMediaRouterService:Landroid/media/IMediaRouterService;

.field mPreviousActiveWifiDisplayAddress:Ljava/lang/String;

.field final mResources:Landroid/content/res/Resources;

.field final mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

.field final mSystemCategory:Landroid/media/MediaRouter$RouteCategory;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    .line 78
    new-instance v1, Landroid/media/AudioRoutesInfo;

    invoke-direct {v1}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    .line 92
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/MediaRouter$Static;->mCurrentUserId:I

    .line 96
    new-instance v1, Landroid/media/MediaRouter$Static$1;

    invoke-direct {v1, p0}, Landroid/media/MediaRouter$Static$1;-><init>(Landroid/media/MediaRouter$Static;)V

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

    .line 108
    iput-object p1, p0, Landroid/media/MediaRouter$Static;->mAppContext:Landroid/content/Context;

    .line 109
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    .line 110
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    .line 112
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 113
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    .line 115
    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    .line 117
    const-string/jumbo v1, "media_router"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouterService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 120
    new-instance v1, Landroid/media/MediaRouter$RouteCategory;

    sget v4, Lcom/android/internal/R$string;->default_audio_route_category_name:I

    const/4 v5, 0x3

    invoke-direct {v1, v4, v5, v3}, Landroid/media/MediaRouter$RouteCategory;-><init>(IIZ)V

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    .line 123
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    iput-boolean v2, v1, Landroid/media/MediaRouter$RouteCategory;->mIsSystem:Z

    .line 128
    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/media/MediaRouter$Static;->mCanConfigureWifiDisplays:Z

    .line 131
    return-void

    :cond_0
    move v1, v3

    .line 128
    goto :goto_0
.end method

.method private updatePresentationDisplays(I)V
    .locals 4
    .param p1, "changedDisplayId"    # I

    .prologue
    .line 320
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 321
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 322
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 323
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 325
    :cond_0
    invoke-static {v2}, Landroid/media/MediaRouter;->dispatchRoutePresentationDisplayChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 321
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_2
    return-void
.end method


# virtual methods
.method findGlobalRoute(Ljava/lang/String;)Landroid/media/MediaRouter$RouteInfo;
    .locals 4
    .param p1, "globalRouteId"    # Ljava/lang/String;

    .prologue
    .line 559
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 560
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 561
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 562
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 566
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :goto_1
    return-object v2

    .line 560
    .restart local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getAllPresentationDisplays()[Landroid/view/Display;
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    const-string v1, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method makeGlobalRoute(Landroid/media/MediaRouterClientState$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;
    .locals 2
    .param p1, "globalRoute"    # Landroid/media/MediaRouterClientState$RouteInfo;

    .prologue
    .line 474
    new-instance v0, Landroid/media/MediaRouter$RouteInfo;

    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-direct {v0, v1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 475
    .local v0, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    .line 476
    iget-object v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 477
    iget-object v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 478
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 479
    iget-boolean v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    iput-boolean v1, v0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 480
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->setRealStatusCode(I)Z

    .line 481
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 482
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 483
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    .line 484
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 485
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 486
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 487
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    .line 488
    return-object v0
.end method

.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 302
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$Static;->updatePresentationDisplays(I)V

    .line 303
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 307
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$Static;->updatePresentationDisplays(I)V

    .line 308
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 312
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$Static;->updatePresentationDisplays(I)V

    .line 313
    return-void
.end method

.method publishClientDiscoveryRequest()V
    .locals 5

    .prologue
    .line 365
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v1, :cond_0

    .line 367
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    iget v3, p0, Landroid/media/MediaRouter$Static;->mDiscoveryRequestRouteTypes:I

    iget-boolean v4, p0, Landroid/media/MediaRouter$Static;->mDiscoverRequestActiveScan:Z

    invoke-interface {v1, v2, v3, v4}, Landroid/media/IMediaRouterService;->setDiscoveryRequest(Landroid/media/IMediaRouterClient;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MediaRouter"

    const-string v2, "Unable to publish media router client discovery request."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method publishClientSelectedRoute(Z)V
    .locals 4
    .param p1, "explicit"    # Z

    .prologue
    .line 376
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v1, :cond_0

    .line 378
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    iget-object v1, v1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    :goto_0
    invoke-interface {v2, v3, v1, p1}, Landroid/media/IMediaRouterService;->setSelectedRoute(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_0
    :goto_1
    return-void

    .line 378
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MediaRouter"

    const-string v2, "Unable to publish media router client selected route."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method rebindAsUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 337
    iget v2, p0, Landroid/media/MediaRouter$Static;->mCurrentUserId:I

    if-ne v2, p1, :cond_0

    if-ltz p1, :cond_0

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-nez v2, :cond_2

    .line 338
    :cond_0
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v2, :cond_1

    .line 340
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    invoke-interface {v2, v3}, Landroid/media/IMediaRouterService;->unregisterClient(Landroid/media/IMediaRouterClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    .line 347
    :cond_1
    iput p1, p0, Landroid/media/MediaRouter$Static;->mCurrentUserId:I

    .line 350
    :try_start_1
    new-instance v0, Landroid/media/MediaRouter$Static$Client;

    invoke-direct {v0, p0}, Landroid/media/MediaRouter$Static$Client;-><init>(Landroid/media/MediaRouter$Static;)V

    .line 351
    .local v0, "client":Landroid/media/MediaRouter$Static$Client;
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3, p1}, Landroid/media/IMediaRouterService;->registerClientAsUser(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    .line 353
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 358
    .end local v0    # "client":Landroid/media/MediaRouter$Static$Client;
    :goto_1
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->publishClientDiscoveryRequest()V

    .line 359
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/media/MediaRouter$Static;->publishClientSelectedRoute(Z)V

    .line 360
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->updateClientState()V

    .line 362
    :cond_2
    return-void

    .line 341
    :catch_0
    move-exception v1

    .line 342
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "MediaRouter"

    const-string v3, "Unable to unregister media router client."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 354
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 355
    .restart local v1    # "ex":Landroid/os/RemoteException;
    const-string v2, "MediaRouter"

    const-string v3, "Unable to register media router client."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method requestSetVolume(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 4
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "volume"    # I

    .prologue
    .line 452
    iget-object v1, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v1, :cond_0

    .line 454
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    iget-object v3, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p2}, Landroid/media/IMediaRouterService;->requestSetVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MediaRouter"

    const-string v2, "Unable to request volume change."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method requestUpdateVolume(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 4
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "direction"    # I

    .prologue
    .line 463
    iget-object v1, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v1, :cond_0

    .line 465
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    iget-object v3, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p2}, Landroid/media/IMediaRouterService;->requestUpdateVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MediaRouter"

    const-string v2, "Unable to request volume change."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method setSelectedRoute(Landroid/media/MediaRouter$RouteInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "explicit"    # Z

    .prologue
    .line 332
    iput-object p1, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 333
    invoke-virtual {p0, p2}, Landroid/media/MediaRouter$Static;->publishClientSelectedRoute(Z)V

    .line 334
    return-void
.end method

.method startMonitoringRoutes(Landroid/content/Context;)V
    .locals 4
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 135
    new-instance v1, Landroid/media/MediaRouter$RouteInfo;

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-direct {v1, v2}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    .line 136
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    sget v2, Lcom/android/internal/R$string;->default_audio_route_name:I

    iput v2, v1, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    .line 137
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    const/4 v2, 0x3

    iput v2, v1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 138
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    .line 139
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v1}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 142
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaRouter;->updateWifiDisplayStatus(Landroid/hardware/display/WifiDisplayStatus;)V

    .line 144
    new-instance v1, Landroid/media/MediaRouter$WifiDisplayStatusChangedReceiver;

    invoke-direct {v1}, Landroid/media/MediaRouter$WifiDisplayStatusChangedReceiver;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    new-instance v1, Landroid/media/MediaRouter$VolumeChangeReceiver;

    invoke-direct {v1}, Landroid/media/MediaRouter$VolumeChangeReceiver;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, "newAudioRoutes":Landroid/media/AudioRoutesInfo;
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    :goto_0
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$Static;->updateAudioRoutes(Landroid/media/AudioRoutesInfo;)V

    .line 164
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/MediaRouter$Static;->rebindAsUser(I)V

    .line 168
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-nez v1, :cond_1

    .line 169
    invoke-static {}, Landroid/media/MediaRouter;->selectDefaultRouteStatic()V

    .line 171
    :cond_1
    return-void

    .line 154
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method updateAudioRoutes(Landroid/media/AudioRoutesInfo;)V
    .locals 9
    .param p1, "newRoutes"    # Landroid/media/AudioRoutesInfo;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 174
    iget v5, p1, Landroid/media/AudioRoutesInfo;->mMainType:I

    iget-object v6, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget v6, v6, Landroid/media/AudioRoutesInfo;->mMainType:I

    if-eq v5, v6, :cond_1

    .line 175
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget v6, p1, Landroid/media/AudioRoutesInfo;->mMainType:I

    iput v6, v5, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 177
    iget v5, p1, Landroid/media/AudioRoutesInfo;->mMainType:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    iget v5, p1, Landroid/media/AudioRoutesInfo;->mMainType:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    .line 179
    :cond_0
    sget v4, Lcom/android/internal/R$string;->default_audio_route_name_headphones:I

    .line 187
    .local v4, "name":I
    :goto_0
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    iput v4, v5, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    .line 188
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v5}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 191
    .end local v4    # "name":I
    :cond_1
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget v3, v5, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 195
    .local v3, "mainType":I
    :try_start_0
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v5}, Landroid/media/IAudioService;->isBluetoothA2dpOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 201
    .local v0, "a2dpEnabled":Z
    :goto_1
    iget-object v5, p1, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v6, v6, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 202
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v6, p1, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    iput-object v6, v5, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 203
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v5, v5, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    if-eqz v5, :cond_8

    .line 204
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-nez v5, :cond_7

    .line 205
    new-instance v2, Landroid/media/MediaRouter$RouteInfo;

    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-direct {v2, v5}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 206
    .local v2, "info":Landroid/media/MediaRouter$RouteInfo;
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v5, v5, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    iput-object v5, v2, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 207
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/android/internal/R$string;->bluetooth_a2dp_audio_route_name:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v2, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 209
    iput v7, v2, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 210
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iput-object v2, v5, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 211
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v5}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 222
    .end local v2    # "info":Landroid/media/MediaRouter$RouteInfo;
    :cond_2
    :goto_2
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v5, :cond_3

    .line 223
    if-eqz v3, :cond_9

    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    iget-object v6, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-ne v5, v6, :cond_9

    if-nez v0, :cond_9

    .line 225
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v7, v5, v8}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 231
    :cond_3
    :goto_3
    return-void

    .line 180
    .end local v0    # "a2dpEnabled":Z
    .end local v3    # "mainType":I
    :cond_4
    iget v5, p1, Landroid/media/AudioRoutesInfo;->mMainType:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_5

    .line 181
    sget v4, Lcom/android/internal/R$string;->default_audio_route_name_dock_speakers:I

    .restart local v4    # "name":I
    goto :goto_0

    .line 182
    .end local v4    # "name":I
    :cond_5
    iget v5, p1, Landroid/media/AudioRoutesInfo;->mMainType:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_6

    .line 183
    sget v4, Lcom/android/internal/R$string;->default_media_route_name_hdmi:I

    .restart local v4    # "name":I
    goto/16 :goto_0

    .line 185
    .end local v4    # "name":I
    :cond_6
    sget v4, Lcom/android/internal/R$string;->default_audio_route_name:I

    .restart local v4    # "name":I
    goto/16 :goto_0

    .line 196
    .end local v4    # "name":I
    .restart local v3    # "mainType":I
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "MediaRouter"

    const-string v6, "Error querying Bluetooth A2DP state"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    const/4 v0, 0x0

    .restart local v0    # "a2dpEnabled":Z
    goto :goto_1

    .line 213
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_7
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    iget-object v6, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v6, v6, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    iput-object v6, v5, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 214
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v5}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_2

    .line 216
    :cond_8
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v5, :cond_2

    .line 217
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v5}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 218
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    goto :goto_2

    .line 226
    :cond_9
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    iget-object v6, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    if-eq v5, v6, :cond_a

    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-nez v5, :cond_3

    :cond_a
    if-eqz v0, :cond_3

    .line 228
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v7, v5, v8}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    goto :goto_3
.end method

.method updateClientState()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 389
    iput-object v10, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    .line 390
    iget-object v12, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v12, :cond_0

    .line 392
    :try_start_0
    iget-object v12, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v13, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    invoke-interface {v12, v13}, Landroid/media/IMediaRouterService;->getState(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;

    move-result-object v12

    iput-object v12, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_0
    :goto_0
    iget-object v12, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    if-eqz v12, :cond_1

    iget-object v12, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    iget-object v4, v12, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    .line 399
    .local v4, "globalRoutes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaRouterClientState$RouteInfo;>;"
    :goto_1
    iget-object v12, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    if-eqz v12, :cond_2

    iget-object v10, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    iget-object v5, v10, Landroid/media/MediaRouterClientState;->globallySelectedRouteId:Ljava/lang/String;

    .line 403
    .local v5, "globallySelectedRouteId":Ljava/lang/String;
    :goto_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 404
    .local v2, "globalRouteCount":I
    :goto_3
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v6, v2, :cond_5

    .line 405
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouterClientState$RouteInfo;

    .line 406
    .local v1, "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    iget-object v10, v1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    invoke-virtual {p0, v10}, Landroid/media/MediaRouter$Static;->findGlobalRoute(Ljava/lang/String;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v9

    .line 407
    .local v9, "route":Landroid/media/MediaRouter$RouteInfo;
    if-nez v9, :cond_4

    .line 408
    invoke-virtual {p0, v1}, Landroid/media/MediaRouter$Static;->makeGlobalRoute(Landroid/media/MediaRouterClientState$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v9

    .line 409
    invoke-static {v9}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 404
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 393
    .end local v1    # "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    .end local v2    # "globalRouteCount":I
    .end local v4    # "globalRoutes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaRouterClientState$RouteInfo;>;"
    .end local v5    # "globallySelectedRouteId":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v9    # "route":Landroid/media/MediaRouter$RouteInfo;
    :catch_0
    move-exception v0

    .line 394
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v12, "MediaRouter"

    const-string v13, "Unable to retrieve media router client state."

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    move-object v4, v10

    .line 397
    goto :goto_1

    .restart local v4    # "globalRoutes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaRouterClientState$RouteInfo;>;"
    :cond_2
    move-object v5, v10

    .line 399
    goto :goto_2

    .restart local v5    # "globallySelectedRouteId":Ljava/lang/String;
    :cond_3
    move v2, v11

    .line 403
    goto :goto_3

    .line 411
    .restart local v1    # "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    .restart local v2    # "globalRouteCount":I
    .restart local v6    # "i":I
    .restart local v9    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_4
    invoke-virtual {p0, v9, v1}, Landroid/media/MediaRouter$Static;->updateGlobalRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouterClientState$RouteInfo;)V

    goto :goto_5

    .line 416
    .end local v1    # "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    .end local v9    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_5
    if-eqz v5, :cond_9

    .line 417
    invoke-virtual {p0, v5}, Landroid/media/MediaRouter$Static;->findGlobalRoute(Ljava/lang/String;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v9

    .line 418
    .restart local v9    # "route":Landroid/media/MediaRouter$RouteInfo;
    if-nez v9, :cond_7

    .line 419
    const-string v10, "MediaRouter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not find new globally selected route: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .end local v9    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_6
    :goto_6
    iget-object v10, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v6

    .end local v6    # "i":I
    .local v7, "i":I
    :goto_7
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    if-lez v7, :cond_e

    .line 436
    iget-object v10, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaRouter$RouteInfo;

    .line 437
    .restart local v9    # "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v3, v9, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    .line 438
    .local v3, "globalRouteId":Ljava/lang/String;
    if-eqz v3, :cond_d

    .line 439
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_8
    if-ge v8, v2, :cond_c

    .line 440
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouterClientState$RouteInfo;

    .line 441
    .restart local v1    # "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    iget-object v10, v1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    move v7, v6

    .line 442
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_7

    .line 421
    .end local v1    # "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    .end local v3    # "globalRouteId":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "j":I
    .restart local v6    # "i":I
    :cond_7
    iget-object v10, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eq v9, v10, :cond_6

    .line 422
    # getter for: Landroid/media/MediaRouter;->DEBUG:Z
    invoke-static {}, Landroid/media/MediaRouter;->access$000()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 423
    const-string v10, "MediaRouter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Selecting new globally selected route: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_8
    iget v10, v9, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    invoke-static {v10, v9, v11}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    goto :goto_6

    .line 427
    .end local v9    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_9
    iget-object v10, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v10, :cond_6

    iget-object v10, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    iget-object v10, v10, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 428
    # getter for: Landroid/media/MediaRouter;->DEBUG:Z
    invoke-static {}, Landroid/media/MediaRouter;->access$000()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 429
    const-string v10, "MediaRouter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unselecting previous globally selected route: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_a
    invoke-static {}, Landroid/media/MediaRouter;->selectDefaultRouteStatic()V

    goto :goto_6

    .line 439
    .restart local v1    # "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    .restart local v3    # "globalRouteId":Ljava/lang/String;
    .restart local v8    # "j":I
    .restart local v9    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 446
    .end local v1    # "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    :cond_c
    invoke-static {v9}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .end local v8    # "j":I
    :cond_d
    move v7, v6

    .line 448
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_7

    .line 449
    .end local v3    # "globalRouteId":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "route":Landroid/media/MediaRouter$RouteInfo;
    .restart local v6    # "i":I
    :cond_e
    return-void
.end method

.method updateDiscoveryRequest()V
    .locals 9

    .prologue
    .line 235
    const/4 v6, 0x0

    .line 236
    .local v6, "routeTypes":I
    const/4 v5, 0x0

    .line 237
    .local v5, "passiveRouteTypes":I
    const/4 v0, 0x0

    .line 238
    .local v0, "activeScan":Z
    const/4 v1, 0x0

    .line 239
    .local v1, "activeScanWifiDisplay":Z
    iget-object v7, p0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    .line 240
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 241
    iget-object v7, p0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$CallbackInfo;

    .line 242
    .local v2, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    iget v7, v2, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    and-int/lit8 v7, v7, 0x5

    if-eqz v7, :cond_1

    .line 245
    iget v7, v2, Landroid/media/MediaRouter$CallbackInfo;->type:I

    or-int/2addr v6, v7

    .line 255
    :goto_1
    iget v7, v2, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    .line 256
    const/4 v0, 0x1

    .line 257
    iget v7, v2, Landroid/media/MediaRouter$CallbackInfo;->type:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_0

    .line 258
    const/4 v1, 0x1

    .line 240
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 246
    :cond_1
    iget v7, v2, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_2

    .line 248
    iget v7, v2, Landroid/media/MediaRouter$CallbackInfo;->type:I

    or-int/2addr v5, v7

    goto :goto_1

    .line 253
    :cond_2
    iget v7, v2, Landroid/media/MediaRouter$CallbackInfo;->type:I

    or-int/2addr v6, v7

    goto :goto_1

    .line 262
    .end local v2    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_3
    if-nez v6, :cond_4

    if-eqz v0, :cond_5

    .line 266
    :cond_4
    or-int/2addr v6, v5

    .line 271
    :cond_5
    iget-boolean v7, p0, Landroid/media/MediaRouter$Static;->mCanConfigureWifiDisplays:Z

    if-eqz v7, :cond_7

    .line 272
    iget-object v7, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 276
    const/4 v1, 0x0

    .line 278
    :cond_6
    if-eqz v1, :cond_a

    .line 279
    iget-boolean v7, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    if-nez v7, :cond_7

    .line 280
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    .line 281
    iget-object v7, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7}, Landroid/hardware/display/DisplayManager;->startWifiDisplayScan()V

    .line 292
    :cond_7
    :goto_2
    iget v7, p0, Landroid/media/MediaRouter$Static;->mDiscoveryRequestRouteTypes:I

    if-ne v6, v7, :cond_8

    iget-boolean v7, p0, Landroid/media/MediaRouter$Static;->mDiscoverRequestActiveScan:Z

    if-eq v0, v7, :cond_9

    .line 294
    :cond_8
    iput v6, p0, Landroid/media/MediaRouter$Static;->mDiscoveryRequestRouteTypes:I

    .line 295
    iput-boolean v0, p0, Landroid/media/MediaRouter$Static;->mDiscoverRequestActiveScan:Z

    .line 296
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->publishClientDiscoveryRequest()V

    .line 298
    :cond_9
    return-void

    .line 284
    :cond_a
    iget-boolean v7, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    if-eqz v7, :cond_7

    .line 285
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    .line 286
    iget-object v7, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7}, Landroid/hardware/display/DisplayManager;->stopWifiDisplayScan()V

    goto :goto_2
.end method

.method updateGlobalRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouterClientState$RouteInfo;)V
    .locals 6
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "globalRoute"    # Landroid/media/MediaRouterClientState$RouteInfo;

    .prologue
    .line 492
    const/4 v0, 0x0

    .line 493
    .local v0, "changed":Z
    const/4 v3, 0x0

    .line 494
    .local v3, "volumeChanged":Z
    const/4 v2, 0x0

    .line 496
    .local v2, "presentationDisplayChanged":Z
    iget-object v4, p1, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    iget-object v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 497
    iget-object v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    iput-object v4, p1, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 498
    const/4 v0, 0x1

    .line 500
    :cond_0
    iget-object v4, p1, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    iget-object v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 501
    iget-object v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    iput-object v4, p1, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 502
    const/4 v0, 0x1

    .line 504
    :cond_1
    iget v1, p1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 505
    .local v1, "oldSupportedTypes":I
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    if-eq v1, v4, :cond_2

    .line 506
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 507
    const/4 v0, 0x1

    .line 509
    :cond_2
    iget-boolean v4, p1, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    iget-boolean v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    if-eq v4, v5, :cond_3

    .line 510
    iget-boolean v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    iput-boolean v4, p1, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 511
    const/4 v0, 0x1

    .line 513
    :cond_3
    # getter for: Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I
    invoke-static {p1}, Landroid/media/MediaRouter$RouteInfo;->access$100(Landroid/media/MediaRouter$RouteInfo;)I

    move-result v4

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    if-eq v4, v5, :cond_4

    .line 514
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    invoke-virtual {p1, v4}, Landroid/media/MediaRouter$RouteInfo;->setRealStatusCode(I)Z

    .line 515
    const/4 v0, 0x1

    .line 517
    :cond_4
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    if-eq v4, v5, :cond_5

    .line 518
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 519
    const/4 v0, 0x1

    .line 521
    :cond_5
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    if-eq v4, v5, :cond_6

    .line 522
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 523
    const/4 v0, 0x1

    .line 525
    :cond_6
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    if-eq v4, v5, :cond_7

    .line 526
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    .line 527
    const/4 v0, 0x1

    .line 528
    const/4 v3, 0x1

    .line 530
    :cond_7
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    if-eq v4, v5, :cond_8

    .line 531
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 532
    const/4 v0, 0x1

    .line 533
    const/4 v3, 0x1

    .line 535
    :cond_8
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    if-eq v4, v5, :cond_9

    .line 536
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 537
    const/4 v0, 0x1

    .line 538
    const/4 v3, 0x1

    .line 540
    :cond_9
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    if-eq v4, v5, :cond_a

    .line 541
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 542
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    .line 543
    const/4 v0, 0x1

    .line 544
    const/4 v2, 0x1

    .line 547
    :cond_a
    if-eqz v0, :cond_b

    .line 548
    invoke-static {p1, v1}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 550
    :cond_b
    if-eqz v3, :cond_c

    .line 551
    invoke-static {p1}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 553
    :cond_c
    if-eqz v2, :cond_d

    .line 554
    invoke-static {p1}, Landroid/media/MediaRouter;->dispatchRoutePresentationDisplayChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 556
    :cond_d
    return-void
.end method
