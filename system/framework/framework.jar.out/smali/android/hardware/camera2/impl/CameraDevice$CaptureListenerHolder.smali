.class Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;
.super Ljava/lang/Object;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CaptureListenerHolder"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/hardware/camera2/CameraDevice$CaptureListener;

.field private final mRepeating:Z

.field private final mRequest:Landroid/hardware/camera2/CaptureRequest;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraDevice$CaptureListener;Landroid/hardware/camera2/CaptureRequest;Landroid/os/Handler;Z)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/camera2/CameraDevice$CaptureListener;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "repeating"    # Z

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 437
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Must have a valid handler and a valid listener"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_1
    iput-boolean p4, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mRepeating:Z

    .line 441
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mHandler:Landroid/os/Handler;

    .line 442
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 443
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mListener:Landroid/hardware/camera2/CameraDevice$CaptureListener;

    .line 444
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getListener()Landroid/hardware/camera2/CameraDevice$CaptureListener;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mListener:Landroid/hardware/camera2/CameraDevice$CaptureListener;

    return-object v0
.end method

.method public getRequest()Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method public isRepeating()Z
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->mRepeating:Z

    return v0
.end method
