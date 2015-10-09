.class public final Landroid/hardware/location/GeofenceHardware;
.super Ljava/lang/Object;
.source "GeofenceHardware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;,
        Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    }
.end annotation


# static fields
.field public static final GEOFENCE_ENTERED:I = 0x1

.field public static final GEOFENCE_ERROR_ID_EXISTS:I = 0x2

.field public static final GEOFENCE_ERROR_ID_UNKNOWN:I = 0x3

.field public static final GEOFENCE_ERROR_INSUFFICIENT_MEMORY:I = 0x6

.field public static final GEOFENCE_ERROR_INVALID_TRANSITION:I = 0x4

.field public static final GEOFENCE_ERROR_TOO_MANY_GEOFENCES:I = 0x1

.field public static final GEOFENCE_EXITED:I = 0x2

.field public static final GEOFENCE_FAILURE:I = 0x5

.field public static final GEOFENCE_SUCCESS:I = 0x0

.field public static final GEOFENCE_UNCERTAIN:I = 0x4

.field public static final MONITORING_TYPE_FUSED_HARDWARE:I = 0x1

.field public static final MONITORING_TYPE_GPS_HARDWARE:I = 0x0

.field public static final MONITOR_CURRENTLY_AVAILABLE:I = 0x0

.field public static final MONITOR_CURRENTLY_UNAVAILABLE:I = 0x1

.field public static final MONITOR_UNSUPPORTED:I = 0x2

.field static final NUM_MONITORS:I = 0x2


# instance fields
.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/location/GeofenceHardwareCallback;",
            "Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitorCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/location/GeofenceHardwareMonitorCallback;",
            "Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/hardware/location/IGeofenceHardware;


# direct methods
.method public constructor <init>(Landroid/hardware/location/IGeofenceHardware;)V
    .locals 1
    .param p1, "service"    # Landroid/hardware/location/IGeofenceHardware;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    .line 145
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    .line 146
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareCallback;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/location/GeofenceHardware;
    .param p1, "x1"    # Landroid/hardware/location/GeofenceHardwareCallback;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/hardware/location/GeofenceHardware;->removeCallback(Landroid/hardware/location/GeofenceHardwareCallback;)V

    return-void
.end method

.method private getCallbackWrapper(Landroid/hardware/location/GeofenceHardwareCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    .locals 3
    .param p1, "callback"    # Landroid/hardware/location/GeofenceHardwareCallback;

    .prologue
    .line 424
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v2

    .line 425
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;

    .line 426
    .local v0, "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    if-nez v0, :cond_0

    .line 427
    new-instance v0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;

    .end local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    invoke-direct {v0, p0, p1}, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;-><init>(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareCallback;)V

    .line 428
    .restart local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :cond_0
    monitor-exit v2

    return-object v0

    .line 431
    .end local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getMonitorCallbackWrapper(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    .locals 3
    .param p1, "callback"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    .prologue
    .line 442
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    monitor-enter v2

    .line 443
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    .line 444
    .local v0, "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    if-nez v0, :cond_0

    .line 445
    new-instance v0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    .end local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    invoke-direct {v0, p0, p1}, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;-><init>(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V

    .line 446
    .restart local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    :cond_0
    monitor-exit v2

    return-object v0

    .line 449
    .end local v0    # "wrapper":Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeCallback(Landroid/hardware/location/GeofenceHardwareCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/location/GeofenceHardwareCallback;

    .prologue
    .line 418
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    .line 419
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    monitor-exit v1

    .line 421
    return-void

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeMonitorCallback(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    .prologue
    .line 435
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    .line 436
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mMonitorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    monitor-exit v1

    .line 438
    return-void

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addGeofence(IILandroid/hardware/location/GeofenceHardwareRequest;Landroid/hardware/location/GeofenceHardwareCallback;)Z
    .locals 15
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I
    .param p3, "geofenceRequest"    # Landroid/hardware/location/GeofenceHardwareRequest;
    .param p4, "callback"    # Landroid/hardware/location/GeofenceHardwareCallback;

    .prologue
    .line 244
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/location/GeofenceHardwareRequest;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 245
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/location/GeofenceHardwareRequest;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/location/GeofenceHardwareRequest;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/location/GeofenceHardwareRequest;->getRadius()D

    move-result-wide v8

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/location/GeofenceHardwareRequest;->getLastTransition()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/location/GeofenceHardwareRequest;->getMonitorTransitions()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/location/GeofenceHardwareRequest;->getNotificationResponsiveness()I

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/location/GeofenceHardwareRequest;->getUnknownTimer()I

    move-result v13

    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Landroid/hardware/location/GeofenceHardware;->getCallbackWrapper(Landroid/hardware/location/GeofenceHardwareCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;

    move-result-object v14

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-interface/range {v1 .. v14}, Landroid/hardware/location/IGeofenceHardware;->addCircularFence(IIDDDIIIILandroid/hardware/location/IGeofenceHardwareCallback;)Z

    move-result v1

    .line 258
    :goto_0
    return v1

    .line 254
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Geofence Request type not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :catch_0
    move-exception v1

    .line 258
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMonitoringTypes()[I
    .locals 1

    .prologue
    .line 162
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v0}, Landroid/hardware/location/IGeofenceHardware;->getMonitoringTypes()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 165
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0
.end method

.method public getStatusOfMonitoringType(I)I
    .locals 2
    .param p1, "monitoringType"    # I

    .prologue
    .line 185
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v1, p1}, Landroid/hardware/location/IGeofenceHardware;->getStatusOfMonitoringType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 187
    :goto_0
    return v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public pauseGeofence(II)Z
    .locals 1
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I

    .prologue
    .line 315
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IGeofenceHardware;->pauseGeofence(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 318
    :goto_0
    return v0

    .line 316
    :catch_0
    move-exception v0

    .line 318
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerForMonitorStateChangeCallback(ILandroid/hardware/location/GeofenceHardwareMonitorCallback;)Z
    .locals 2
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    .prologue
    .line 378
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-direct {p0, p2}, Landroid/hardware/location/GeofenceHardware;->getMonitorCallbackWrapper(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/location/IGeofenceHardware;->registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 382
    :goto_0
    return v0

    .line 380
    :catch_0
    move-exception v0

    .line 382
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeGeofence(II)Z
    .locals 1
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I

    .prologue
    .line 285
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IGeofenceHardware;->removeGeofence(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 288
    :goto_0
    return v0

    .line 286
    :catch_0
    move-exception v0

    .line 288
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resumeGeofence(III)Z
    .locals 1
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I
    .param p3, "monitorTransition"    # I

    .prologue
    .line 347
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/location/IGeofenceHardware;->resumeGeofence(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 350
    :goto_0
    return v0

    .line 348
    :catch_0
    move-exception v0

    .line 350
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/GeofenceHardwareMonitorCallback;)Z
    .locals 3
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    .prologue
    .line 405
    const/4 v0, 0x0

    .line 407
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware;->mService:Landroid/hardware/location/IGeofenceHardware;

    invoke-direct {p0, p2}, Landroid/hardware/location/GeofenceHardware;->getMonitorCallbackWrapper(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/hardware/location/IGeofenceHardware;->unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z

    move-result v0

    .line 409
    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Landroid/hardware/location/GeofenceHardware;->removeMonitorCallback(Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :cond_0
    :goto_0
    return v0

    .line 411
    :catch_0
    move-exception v1

    goto :goto_0
.end method
