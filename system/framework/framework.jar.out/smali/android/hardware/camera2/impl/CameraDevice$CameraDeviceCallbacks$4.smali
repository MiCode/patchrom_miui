.class Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$4;
.super Ljava/lang/Object;
.source "CameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->onResultReceived(ILandroid/hardware/camera2/impl/CameraMetadataNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;

.field final synthetic val$holder:Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;

.field final synthetic val$request:Landroid/hardware/camera2/CaptureRequest;

.field final synthetic val$resultAsCapture:Landroid/hardware/camera2/CaptureResult;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$4;->this$1:Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$4;->val$holder:Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$4;->val$request:Landroid/hardware/camera2/CaptureRequest;

    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$4;->val$resultAsCapture:Landroid/hardware/camera2/CaptureResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 646
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$4;->this$1:Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # invokes: Landroid/hardware/camera2/impl/CameraDevice;->isClosed()Z
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$000(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$4;->val$holder:Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->getListener()Landroid/hardware/camera2/CameraDevice$CaptureListener;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$4;->this$1:Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$4;->val$request:Landroid/hardware/camera2/CaptureRequest;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$4;->val$resultAsCapture:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraDevice$CaptureListener;->onCaptureCompleted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 652
    :cond_0
    return-void
.end method
