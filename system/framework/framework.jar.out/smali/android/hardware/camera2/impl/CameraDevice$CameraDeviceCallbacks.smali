.class public Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;
.super Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraDeviceCallbacks"
.end annotation


# static fields
.field static final ERROR_CAMERA_DEVICE:I = 0x1

.field static final ERROR_CAMERA_DISCONNECTED:I = 0x0

.field static final ERROR_CAMERA_SERVICE:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDevice;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraDevice;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-direct {p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 494
    return-object p0
.end method

.method public onCameraError(I)V
    .locals 6
    .param p1, "errorCode"    # I

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # invokes: Landroid/hardware/camera2/impl/CameraDevice;->isClosed()Z
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDevice;->access$000(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDevice;->access$200(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 503
    packed-switch p1, :pswitch_data_0

    .line 508
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->TAG:Ljava/lang/String;
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDevice;->access$400(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown error from camera device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :pswitch_0
    new-instance v1, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$1;

    invoke-direct {v1, p0, p1}, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$1;-><init>(Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;I)V

    .end local v0    # "r":Ljava/lang/Runnable;
    .local v1, "r":Ljava/lang/Runnable;
    move-object v0, v1

    .line 521
    .end local v1    # "r":Ljava/lang/Runnable;
    .restart local v0    # "r":Ljava/lang/Runnable;
    :goto_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDevice;->access$500(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 522
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 505
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->mCallOnDisconnected:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDevice;->access$300(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Runnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 506
    goto :goto_1

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCameraIdle()V
    .locals 3

    .prologue
    .line 527
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # invokes: Landroid/hardware/camera2/impl/CameraDevice;->isClosed()Z
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$000(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->DEBUG:Z
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$600(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$400(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera now idle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$200(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 533
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->mIdle:Z
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$700(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 534
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$500(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->mCallOnIdle:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDevice;->access$800(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 536
    :cond_2
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    const/4 v2, 0x1

    # setter for: Landroid/hardware/camera2/impl/CameraDevice;->mIdle:Z
    invoke-static {v0, v2}, Landroid/hardware/camera2/impl/CameraDevice;->access$702(Landroid/hardware/camera2/impl/CameraDevice;Z)Z

    .line 537
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCaptureStarted(IJ)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "timestamp"    # J

    .prologue
    .line 542
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->DEBUG:Z
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDevice;->access$600(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDevice;->access$400(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capture started for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDevice;->access$200(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 549
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->mCaptureListenerMap:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDevice;->access$900(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;

    .line 550
    .local v0, "holder":Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;
    monitor-exit v2

    .line 552
    if-nez v0, :cond_2

    .line 570
    :cond_1
    :goto_0
    return-void

    .line 550
    .end local v0    # "holder":Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 556
    .restart local v0    # "holder":Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;
    :cond_2
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # invokes: Landroid/hardware/camera2/impl/CameraDevice;->isClosed()Z
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDevice;->access$000(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 559
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$2;

    invoke-direct {v2, p0, v0, p2, p3}, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$2;-><init>(Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;J)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onResultReceived(ILandroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 11
    .param p1, "requestId"    # I
    .param p2, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 575
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->DEBUG:Z
    invoke-static {v8}, Landroid/hardware/camera2/impl/CameraDevice;->access$600(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 576
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/hardware/camera2/impl/CameraDevice;->access$400(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received result for id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_0
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->QUIRKS_PARTIAL_RESULT:Landroid/hardware/camera2/CameraMetadata$Key;

    invoke-virtual {p2, v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 581
    .local v4, "quirkPartial":Ljava/lang/Boolean;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v3, 0x1

    .line 583
    .local v3, "quirkIsPartialResult":Z
    :goto_0
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Landroid/hardware/camera2/impl/CameraDevice;->access$200(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 588
    :try_start_0
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->mCaptureListenerMap:Landroid/util/SparseArray;
    invoke-static {v8}, Landroid/hardware/camera2/impl/CameraDevice;->access$900(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;

    .line 591
    .local v1, "holder":Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->isRepeating()Z

    move-result v8

    if-nez v8, :cond_1

    if-nez v3, :cond_1

    .line 592
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->mCaptureListenerMap:Landroid/util/SparseArray;
    invoke-static {v8}, Landroid/hardware/camera2/impl/CameraDevice;->access$900(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 601
    :cond_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->isRepeating()Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v3, :cond_4

    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestIdDeletedList:Ljava/util/ArrayList;
    invoke-static {v8}, Landroid/hardware/camera2/impl/CameraDevice;->access$1000(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 603
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->mRepeatingRequestIdDeletedList:Ljava/util/ArrayList;
    invoke-static {v8}, Landroid/hardware/camera2/impl/CameraDevice;->access$1000(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 604
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 605
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 606
    .local v0, "deletedRequestId":I
    if-ge v0, p1, :cond_2

    .line 607
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # getter for: Landroid/hardware/camera2/impl/CameraDevice;->mCaptureListenerMap:Landroid/util/SparseArray;
    invoke-static {v8}, Landroid/hardware/camera2/impl/CameraDevice;->access$900(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 608
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 613
    .end local v0    # "deletedRequestId":I
    .end local v1    # "holder":Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 581
    .end local v3    # "quirkIsPartialResult":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 613
    .restart local v1    # "holder":Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;
    .restart local v3    # "quirkIsPartialResult":Z
    :cond_4
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    if-nez v1, :cond_6

    .line 657
    :cond_5
    :goto_2
    return-void

    .line 620
    :cond_6
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    # invokes: Landroid/hardware/camera2/impl/CameraDevice;->isClosed()Z
    invoke-static {v8}, Landroid/hardware/camera2/impl/CameraDevice;->access$000(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 622
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    .line 623
    .local v5, "request":Landroid/hardware/camera2/CaptureRequest;
    new-instance v6, Landroid/hardware/camera2/CaptureResult;

    invoke-direct {v6, p2, v5, p1}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;I)V

    .line 625
    .local v6, "resultAsCapture":Landroid/hardware/camera2/CaptureResult;
    const/4 v7, 0x0

    .line 628
    .local v7, "resultDispatch":Ljava/lang/Runnable;
    if-eqz v3, :cond_7

    .line 630
    new-instance v7, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$3;

    .end local v7    # "resultDispatch":Ljava/lang/Runnable;
    invoke-direct {v7, p0, v1, v5, v6}, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$3;-><init>(Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 656
    .restart local v7    # "resultDispatch":Ljava/lang/Runnable;
    :goto_3
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 643
    :cond_7
    new-instance v7, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$4;

    .end local v7    # "resultDispatch":Ljava/lang/Runnable;
    invoke-direct {v7, p0, v1, v5, v6}, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$4;-><init>(Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .restart local v7    # "resultDispatch":Ljava/lang/Runnable;
    goto :goto_3
.end method
