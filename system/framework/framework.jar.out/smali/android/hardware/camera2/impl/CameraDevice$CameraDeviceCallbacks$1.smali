.class Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$1;
.super Ljava/lang/Object;
.source "CameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->onCameraError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;I)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$1;->this$1:Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;

    iput p2, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$1;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 514
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$1;->this$1:Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # invokes: Landroid/hardware/camera2/impl/CameraDevice;->isClosed()Z
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$000(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$1;->this$1:Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->mDeviceListener:Landroid/hardware/camera2/CameraDevice$StateListener;
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$100(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/hardware/camera2/CameraDevice$StateListener;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$1;->this$1:Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    iget v2, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$1;->val$errorCode:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraDevice$StateListener;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    .line 517
    :cond_0
    return-void
.end method
