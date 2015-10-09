.class Landroid/hardware/camera2/CameraManager$CameraServiceListener;
.super Landroid/hardware/ICameraServiceListener$Stub;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraServiceListener"
.end annotation


# static fields
.field public static final STATUS_ENUMERATING:I = 0x2

.field public static final STATUS_NOT_AVAILABLE:I = -0x80000000

.field public static final STATUS_NOT_PRESENT:I = 0x0

.field public static final STATUS_PRESENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraServiceListener"


# instance fields
.field private final mDeviceStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/camera2/CameraManager;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/CameraManager;)V
    .locals 1

    .prologue
    .line 401
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0}, Landroid/hardware/ICameraServiceListener$Stub;-><init>()V

    .line 417
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->mDeviceStatus:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/CameraManager;Landroid/hardware/camera2/CameraManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/camera2/CameraManager;
    .param p2, "x1"    # Landroid/hardware/camera2/CameraManager$1;

    .prologue
    .line 401
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;-><init>(Landroid/hardware/camera2/CameraManager;)V

    return-void
.end method

.method private isAvailable(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 427
    packed-switch p1, :pswitch_data_0

    .line 431
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 429
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private validStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 436
    sparse-switch p1, :sswitch_data_0

    .line 443
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 441
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 436
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 423
    return-object p0
.end method

.method public onStatusChanged(II)V
    .locals 12
    .param p1, "status"    # I
    .param p2, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 449
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    # getter for: Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Landroid/hardware/camera2/CameraManager;->access$100(Landroid/hardware/camera2/CameraManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 451
    :try_start_0
    const-string v6, "CameraServiceListener"

    const-string v8, "Camera id %d has status changed to 0x%x"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, "id":Ljava/lang/String;
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->validStatus(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 457
    const-string v6, "CameraServiceListener"

    const-string v8, "Ignoring invalid device %d status 0x%x"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    monitor-exit v7

    .line 518
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->mDeviceStatus:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 464
    .local v5, "oldStatus":Ljava/lang/Integer;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 465
    const-string v6, "CameraServiceListener"

    const-string v8, "Device status changed to 0x%x, which is what it already was"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    monitor-exit v7

    goto :goto_0

    .line 517
    .end local v2    # "id":Ljava/lang/String;
    .end local v5    # "oldStatus":Ljava/lang/Integer;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 484
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v5    # "oldStatus":Ljava/lang/Integer;
    :cond_1
    if-eqz v5, :cond_2

    :try_start_1
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->isAvailable(I)Z

    move-result v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->isAvailable(I)Z

    move-result v8

    if-ne v6, v8, :cond_2

    .line 486
    const-string v6, "CameraServiceListener"

    const-string v8, "Device status was previously available (%d),  and is now again available (%d)so no new client visible update will be sent"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->isAvailable(I)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->isAvailable(I)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    monitor-exit v7

    goto :goto_0

    .line 495
    :cond_2
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    # getter for: Landroid/hardware/camera2/CameraManager;->mListenerMap:Landroid/util/ArrayMap;
    invoke-static {v6}, Landroid/hardware/camera2/CameraManager;->access$200(Landroid/hardware/camera2/CameraManager;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 496
    .local v4, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 497
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    # getter for: Landroid/hardware/camera2/CameraManager;->mListenerMap:Landroid/util/ArrayMap;
    invoke-static {v6}, Landroid/hardware/camera2/CameraManager;->access$200(Landroid/hardware/camera2/CameraManager;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 498
    .local v0, "handler":Landroid/os/Handler;
    iget-object v6, p0, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->this$0:Landroid/hardware/camera2/CameraManager;

    # getter for: Landroid/hardware/camera2/CameraManager;->mListenerMap:Landroid/util/ArrayMap;
    invoke-static {v6}, Landroid/hardware/camera2/CameraManager;->access$200(Landroid/hardware/camera2/CameraManager;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager$AvailabilityListener;

    .line 499
    .local v3, "listener":Landroid/hardware/camera2/CameraManager$AvailabilityListener;
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->isAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 500
    new-instance v6, Landroid/hardware/camera2/CameraManager$CameraServiceListener$1;

    invoke-direct {v6, p0, v3, v2}, Landroid/hardware/camera2/CameraManager$CameraServiceListener$1;-><init>(Landroid/hardware/camera2/CameraManager$CameraServiceListener;Landroid/hardware/camera2/CameraManager$AvailabilityListener;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 496
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 508
    :cond_3
    new-instance v6, Landroid/hardware/camera2/CameraManager$CameraServiceListener$2;

    invoke-direct {v6, p0, v3, v2}, Landroid/hardware/camera2/CameraManager$CameraServiceListener$2;-><init>(Landroid/hardware/camera2/CameraManager$CameraServiceListener;Landroid/hardware/camera2/CameraManager$AvailabilityListener;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 517
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v3    # "listener":Landroid/hardware/camera2/CameraManager$AvailabilityListener;
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
