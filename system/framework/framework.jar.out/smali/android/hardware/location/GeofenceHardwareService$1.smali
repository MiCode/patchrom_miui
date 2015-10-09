.class Landroid/hardware/location/GeofenceHardwareService$1;
.super Landroid/hardware/location/IGeofenceHardware$Stub;
.source "GeofenceHardwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareService;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardwareService;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-direct {p0}, Landroid/hardware/location/IGeofenceHardware$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addCircularFence(IIDDDIIIILandroid/hardware/location/IGeofenceHardwareCallback;)Z
    .locals 15
    .param p1, "id"    # I
    .param p2, "monitoringType"    # I
    .param p3, "lat"    # D
    .param p5, "longitude"    # D
    .param p7, "radius"    # D
    .param p9, "lastTransition"    # I
    .param p10, "monitorTransitions"    # I
    .param p11, "notificationResponsiveness"    # I
    .param p12, "unknownTimer"    # I
    .param p13, "callback"    # Landroid/hardware/location/IGeofenceHardwareCallback;

    .prologue
    .line 92
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.LOCATION_HARDWARE"

    const-string v3, "Location Hardware permission not granted to access hardware geofence"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move/from16 v0, p2

    # invokes: Landroid/hardware/location/GeofenceHardwareService;->checkPermission(III)V
    invoke-static {v1, v2, v3, v0}, Landroid/hardware/location/GeofenceHardwareService;->access$200(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 95
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    invoke-virtual/range {v1 .. v14}, Landroid/hardware/location/GeofenceHardwareImpl;->addCircularFence(IIDDDIIIILandroid/hardware/location/IGeofenceHardwareCallback;)Z

    move-result v1

    return v1
.end method

.method public getMonitoringTypes()[I
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware geofence"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getMonitoringTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public getStatusOfMonitoringType(I)I
    .locals 3
    .param p1, "monitoringType"    # I

    .prologue
    .line 84
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware geofence"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->getStatusOfMonitoringType(I)I

    move-result v0

    return v0
.end method

.method public pauseGeofence(II)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "monitoringType"    # I

    .prologue
    .line 109
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware geofence"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    # invokes: Landroid/hardware/location/GeofenceHardwareService;->checkPermission(III)V
    invoke-static {v0, v1, v2, p2}, Landroid/hardware/location/GeofenceHardwareService;->access$200(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 113
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->pauseGeofence(II)Z

    move-result v0

    return v0
.end method

.method public registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    .locals 3
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .prologue
    .line 126
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware geofence"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    # invokes: Landroid/hardware/location/GeofenceHardwareService;->checkPermission(III)V
    invoke-static {v0, v1, v2, p1}, Landroid/hardware/location/GeofenceHardwareService;->access$200(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 130
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    move-result v0

    return v0
.end method

.method public removeGeofence(II)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "monitoringType"    # I

    .prologue
    .line 101
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware geofence"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    # invokes: Landroid/hardware/location/GeofenceHardwareService;->checkPermission(III)V
    invoke-static {v0, v1, v2, p2}, Landroid/hardware/location/GeofenceHardwareService;->access$200(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 105
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->removeGeofence(II)Z

    move-result v0

    return v0
.end method

.method public resumeGeofence(III)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "monitoringType"    # I
    .param p3, "monitorTransitions"    # I

    .prologue
    .line 117
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware geofence"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    # invokes: Landroid/hardware/location/GeofenceHardwareService;->checkPermission(III)V
    invoke-static {v0, v1, v2, p2}, Landroid/hardware/location/GeofenceHardwareService;->access$200(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 121
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/location/GeofenceHardwareImpl;->resumeGeofence(III)Z

    move-result v0

    return v0
.end method

.method public setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V
    .locals 1
    .param p1, "service"    # Landroid/location/IFusedGeofenceHardware;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V

    .line 74
    return-void
.end method

.method public setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V
    .locals 1
    .param p1, "service"    # Landroid/location/IGpsGeofenceHardware;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->setGpsHardwareGeofence(Landroid/location/IGpsGeofenceHardware;)V

    .line 70
    return-void
.end method

.method public unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    .locals 3
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .prologue
    .line 136
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$100(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware geofence"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    # invokes: Landroid/hardware/location/GeofenceHardwareService;->checkPermission(III)V
    invoke-static {v0, v1, v2, p1}, Landroid/hardware/location/GeofenceHardwareService;->access$200(Landroid/hardware/location/GeofenceHardwareService;III)V

    .line 140
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService$1;->this$0:Landroid/hardware/location/GeofenceHardwareService;

    # getter for: Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareService;->access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    move-result v0

    return v0
.end method
