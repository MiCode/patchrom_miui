.class Landroid/hardware/location/GeofenceHardwareImpl$3;
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
    .line 695
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 703
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 705
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 706
    .local v1, "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 707
    .local v3, "monitoringType":I
    new-instance v4, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {v4, v5, v1, v3}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareCallback;I)V

    .line 708
    .local v4, "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mReapers:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->access$900(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 709
    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mReapers:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->access$900(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    invoke-interface {v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 712
    .local v0, "b":Landroid/os/IBinder;
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v0, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 713
    :catch_0
    move-exception v5

    goto :goto_0

    .line 717
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    .end local v3    # "monitoringType":I
    .end local v4    # "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 718
    .local v2, "monitorCallback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 720
    .restart local v3    # "monitoringType":I
    new-instance v4, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {v4, v5, v2, v3}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareMonitorCallback;I)V

    .line 721
    .restart local v4    # "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mReapers:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->access$900(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 722
    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mReapers:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->access$900(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    invoke-interface {v2}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 725
    .restart local v0    # "b":Landroid/os/IBinder;
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v0, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 726
    :catch_1
    move-exception v5

    goto :goto_0

    .line 730
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "monitorCallback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .end local v3    # "monitoringType":I
    .end local v4    # "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    .line 731
    .restart local v4    # "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mReapers:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->access$900(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 703
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
