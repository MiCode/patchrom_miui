.class public final Landroid/hardware/camera2/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$1;,
        Landroid/hardware/camera2/CameraManager$CameraServiceListener;,
        Landroid/hardware/camera2/CameraManager$AvailabilityListener;
    }
.end annotation


# static fields
.field private static final CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field private static final USE_CALLING_UID:I = -0x1


# instance fields
.field private final mCameraService:Landroid/hardware/ICameraService;

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/hardware/camera2/CameraManager$AvailabilityListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Landroid/hardware/camera2/CameraManager;->mListenerMap:Landroid/util/ArrayMap;

    .line 65
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 73
    const-string/jumbo v3, "media.camera"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 74
    .local v0, "cameraServiceBinder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v1

    .line 80
    .local v1, "cameraServiceRaw":Landroid/hardware/ICameraService;
    invoke-static {v1}, Landroid/hardware/camera2/utils/CameraBinderDecorator;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/ICameraService;

    iput-object v3, p0, Landroid/hardware/camera2/CameraManager;->mCameraService:Landroid/hardware/ICameraService;

    .line 83
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mCameraService:Landroid/hardware/ICameraService;

    new-instance v4, Landroid/hardware/camera2/CameraManager$CameraServiceListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;-><init>(Landroid/hardware/camera2/CameraManager;Landroid/hardware/camera2/CameraManager$1;)V

    invoke-interface {v3, v4}, Landroid/hardware/ICameraService;->addListener(Landroid/hardware/ICameraServiceListener;)I
    :try_end_0
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to register a camera service listener"

    invoke-virtual {v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 87
    .end local v2    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/CameraManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/CameraManager;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/camera2/CameraManager;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/camera2/CameraManager;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mListenerMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    if-nez v5, :cond_2

    .line 357
    const/4 v4, 0x0

    .line 360
    .local v4, "numCameras":I
    :try_start_0
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager;->mCameraService:Landroid/hardware/ICameraService;

    invoke-interface {v5}, Landroid/hardware/ICameraService;->getNumberOfCameras()I
    :try_end_0
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 368
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    .line 369
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 370
    .local v2, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 373
    const/4 v3, 0x0

    .line 375
    .local v3, "isDeviceSupported":Z
    :try_start_1
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager;->mCameraService:Landroid/hardware/ICameraService;

    invoke-interface {v5, v1, v2}, Landroid/hardware/ICameraService;->getCameraCharacteristics(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I

    .line 376
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v5

    if-nez v5, :cond_1

    .line 377
    const/4 v3, 0x1

    .line 390
    :goto_1
    if-eqz v3, :cond_0

    .line 391
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v3    # "isDeviceSupported":Z
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v5

    throw v5

    .line 363
    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_1
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    .line 396
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "numCameras":I
    :goto_2
    return-object v5

    .line 379
    .restart local v1    # "i":I
    .restart local v2    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v3    # "isDeviceSupported":Z
    .restart local v4    # "numCameras":I
    :cond_1
    :try_start_2
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "Expected to get non-empty characteristics"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    .line 381
    :catch_2
    move-exception v5

    goto :goto_1

    .line 384
    :catch_3
    move-exception v0

    .line 385
    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v5

    throw v5

    .line 396
    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v3    # "isDeviceSupported":Z
    .end local v4    # "numCameras":I
    :cond_2
    iget-object v5, p0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    goto :goto_2

    .line 386
    .restart local v1    # "i":I
    .restart local v2    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v3    # "isDeviceSupported":Z
    .restart local v4    # "numCameras":I
    :catch_4
    move-exception v5

    goto :goto_1
.end method

.method private openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateListener;Landroid/os/Handler;)V
    .locals 10
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/hardware/camera2/CameraDevice$StateListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 219
    :try_start_0
    iget-object v9, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 223
    :try_start_1
    new-instance v7, Landroid/hardware/camera2/impl/CameraDevice;

    invoke-direct {v7, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDevice;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateListener;Landroid/os/Handler;)V

    .line 229
    .local v7, "device":Landroid/hardware/camera2/impl/CameraDevice;
    new-instance v5, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v5}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .line 230
    .local v5, "holder":Landroid/hardware/camera2/utils/BinderHolder;
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mCameraService:Landroid/hardware/ICameraService;

    invoke-virtual {v7}, Landroid/hardware/camera2/impl/CameraDevice;->getCallbacks()Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface/range {v0 .. v5}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;ILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I

    .line 233
    invoke-virtual {v5}, Landroid/hardware/camera2/utils/BinderHolder;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v6

    .line 238
    .local v6, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    invoke-virtual {v7, v6}, Landroid/hardware/camera2/impl/CameraDevice;->setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V

    .line 239
    monitor-exit v9

    .line 249
    .end local v5    # "holder":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v6    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v7    # "device":Landroid/hardware/camera2/impl/CameraDevice;
    :goto_0
    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 241
    :catch_0
    move-exception v8

    .line 242
    .local v8, "e":Ljava/lang/NumberFormatException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected cameraId to be numeric, but it was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v8

    .line 245
    .local v8, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v8}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v0

    throw v0

    .line 246
    .end local v8    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_2
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addAvailabilityListener(Landroid/hardware/camera2/CameraManager$AvailabilityListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/camera2/CameraManager$AvailabilityListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 125
    if-nez p2, :cond_1

    .line 126
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 127
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 128
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No handler given, and current thread has no looper!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_0
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 134
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 135
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    monitor-exit v2

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 7
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 173
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Camera id %s does not match any currently connected camera device"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 181
    .local v1, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :try_start_2
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mCameraService:Landroid/hardware/ICameraService;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3, v1}, Landroid/hardware/ICameraService;->getCameraCharacteristics(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I
    :try_end_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 189
    new-instance v2, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v2, v1}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    :goto_0
    return-object v2

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v2

    throw v2

    .line 184
    .end local v0    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_1
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCameraIdList()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 105
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v2

    return-object v1

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to query camera service for device ID list"

    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 111
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/hardware/camera2/CameraDevice$StateListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 299
    if-nez p1, :cond_0

    .line 300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cameraId was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    if-nez p2, :cond_1

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_1
    if-nez p3, :cond_2

    .line 304
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 305
    new-instance p3, Landroid/os/Handler;

    .end local p3    # "handler":Landroid/os/Handler;
    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    .line 312
    .restart local p3    # "handler":Landroid/os/Handler;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraManager;->openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateListener;Landroid/os/Handler;)V

    .line 313
    return-void

    .line 307
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Looper doesn\'t exist in the calling thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAvailabilityListener(Landroid/hardware/camera2/CameraManager$AvailabilityListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/camera2/CameraManager$AvailabilityListener;

    .prologue
    .line 148
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
