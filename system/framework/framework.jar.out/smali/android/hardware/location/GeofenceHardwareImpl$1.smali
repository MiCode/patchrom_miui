.class Landroid/hardware/location/GeofenceHardwareImpl$1;
.super Landroid/os/Handler;
.source "GeofenceHardwareImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 538
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 634
    :goto_0
    return-void

    .line 540
    :pswitch_0
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 541
    .local v8, "geofenceId":I
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 542
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 543
    .local v0, "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    if-eqz v0, :cond_0

    .line 547
    :try_start_1
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v8, v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceAdd(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 550
    :cond_0
    :goto_1
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # invokes: Landroid/hardware/location/GeofenceHardwareImpl;->releaseWakeLock()V
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    goto :goto_0

    .line 543
    .end local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 548
    .restart local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    const-string v1, "GeofenceHardwareImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 553
    .end local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v8    # "geofenceId":I
    :pswitch_1
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 554
    .restart local v8    # "geofenceId":I
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 555
    :try_start_3
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 556
    .restart local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 558
    if-eqz v0, :cond_1

    .line 560
    :try_start_4
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v8, v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceRemove(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 562
    :goto_2
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 563
    :try_start_5
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 564
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 566
    :cond_1
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # invokes: Landroid/hardware/location/GeofenceHardwareImpl;->releaseWakeLock()V
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    goto :goto_0

    .line 556
    .end local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 564
    .restart local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    .line 570
    .end local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    .end local v8    # "geofenceId":I
    :pswitch_2
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 571
    .restart local v8    # "geofenceId":I
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 572
    :try_start_8
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 573
    .restart local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 575
    if-eqz v0, :cond_2

    .line 577
    :try_start_9
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v8, v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofencePause(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    .line 580
    :cond_2
    :goto_3
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # invokes: Landroid/hardware/location/GeofenceHardwareImpl;->releaseWakeLock()V
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    goto/16 :goto_0

    .line 573
    .end local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_3
    move-exception v1

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v1

    .line 584
    .end local v8    # "geofenceId":I
    :pswitch_3
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 585
    .restart local v8    # "geofenceId":I
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 586
    :try_start_b
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 587
    .restart local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 589
    if-eqz v0, :cond_3

    .line 591
    :try_start_c
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v8, v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceResume(II)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2

    .line 594
    :cond_3
    :goto_4
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # invokes: Landroid/hardware/location/GeofenceHardwareImpl;->releaseWakeLock()V
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    goto/16 :goto_0

    .line 587
    .end local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_4
    move-exception v1

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v1

    .line 598
    .end local v8    # "geofenceId":I
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;

    move-object v9, v1

    check-cast v9, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;

    .line 599
    .local v9, "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 600
    :try_start_e
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mGeofenceId:I
    invoke-static {v9}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$200(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 603
    .restart local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->access$300()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "GeofenceHardwareImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeofenceTransistionCallback: GPS : GeofenceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mGeofenceId:I
    invoke-static {v9}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$200(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Transition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mTransition:I
    invoke-static {v9}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$400(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mLocation:Landroid/location/Location;
    invoke-static {v9}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$500(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v4}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_4
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 609
    if-eqz v0, :cond_5

    .line 611
    :try_start_f
    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mGeofenceId:I
    invoke-static {v9}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$200(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v1

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mTransition:I
    invoke-static {v9}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$400(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v2

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mLocation:Landroid/location/Location;
    invoke-static {v9}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$500(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)Landroid/location/Location;

    move-result-object v3

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mTimestamp:J
    invoke-static {v9}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$600(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)J

    move-result-wide v4

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->mMonitoringType:I
    invoke-static {v9}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;->access$700(Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;)I

    move-result v6

    invoke-interface/range {v0 .. v6}, Landroid/hardware/location/IGeofenceHardwareCallback;->onGeofenceTransition(IILandroid/location/Location;JI)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1

    .line 617
    :cond_5
    :goto_5
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # invokes: Landroid/hardware/location/GeofenceHardwareImpl;->releaseWakeLock()V
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V

    goto/16 :goto_0

    .line 607
    .end local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    :catchall_5
    move-exception v1

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v1

    .line 621
    .end local v9    # "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/location/IGeofenceHardwareCallback;

    move-object v0, v1

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 622
    .restart local v0    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->access$300()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "GeofenceHardwareImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Geofence callback reaped:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_6
    iget v11, p1, Landroid/os/Message;->arg1:I

    .line 624
    .local v11, "monitoringType":I
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 625
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6
    :try_start_11
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v10, v1, :cond_8

    .line 626
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 627
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 628
    .restart local v8    # "geofenceId":I
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v3, v11}, Landroid/hardware/location/GeofenceHardwareImpl;->removeGeofence(II)Z

    .line 629
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$1;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 625
    .end local v8    # "geofenceId":I
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 632
    :cond_8
    monitor-exit v2

    goto/16 :goto_0

    :catchall_6
    move-exception v1

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v1

    .line 615
    .end local v10    # "i":I
    .end local v11    # "monitoringType":I
    .restart local v9    # "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    :catch_1
    move-exception v1

    goto/16 :goto_5

    .line 592
    .end local v9    # "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    .restart local v8    # "geofenceId":I
    :catch_2
    move-exception v1

    goto/16 :goto_4

    .line 578
    :catch_3
    move-exception v1

    goto/16 :goto_3

    .line 561
    :catch_4
    move-exception v1

    goto/16 :goto_2

    .line 538
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
