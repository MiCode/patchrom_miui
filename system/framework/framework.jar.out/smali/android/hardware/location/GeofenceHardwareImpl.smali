.class public final Landroid/hardware/location/GeofenceHardwareImpl;
.super Ljava/lang/Object;
.source "GeofenceHardwareImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/GeofenceHardwareImpl$Reaper;,
        Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    }
.end annotation


# static fields
.field private static final ADD_GEOFENCE_CALLBACK:I = 0x2

.field private static final CALLBACK_ADD:I = 0x2

.field private static final CALLBACK_REMOVE:I = 0x3

.field private static final DEBUG:Z

.field private static final GEOFENCE_CALLBACK_BINDER_DIED:I = 0x6

.field private static final GEOFENCE_STATUS:I = 0x1

.field private static final GEOFENCE_TRANSITION_CALLBACK:I = 0x1

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final MONITOR_CALLBACK_BINDER_DIED:I = 0x4

.field private static final PAUSE_GEOFENCE_CALLBACK:I = 0x4

.field private static final REAPER_GEOFENCE_ADDED:I = 0x1

.field private static final REAPER_MONITOR_CALLBACK_ADDED:I = 0x2

.field private static final REAPER_REMOVED:I = 0x3

.field private static final REMOVE_GEOFENCE_CALLBACK:I = 0x3

.field private static final RESOLUTION_LEVEL_COARSE:I = 0x2

.field private static final RESOLUTION_LEVEL_FINE:I = 0x3

.field private static final RESOLUTION_LEVEL_NONE:I = 0x1

.field private static final RESUME_GEOFENCE_CALLBACK:I = 0x5

.field private static final TAG:Ljava/lang/String; = "GeofenceHardwareImpl"

.field private static sInstance:Landroid/hardware/location/GeofenceHardwareImpl;


# instance fields
.field private final mCallbacks:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/location/IGeofenceHardwareMonitorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacksHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mFusedService:Landroid/location/IFusedGeofenceHardware;

.field private mGeofenceHandler:Landroid/os/Handler;

.field private final mGeofences:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/location/IGeofenceHardwareCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mGpsService:Landroid/location/IGpsGeofenceHardware;

.field private mReaperHandler:Landroid/os/Handler;

.field private final mReapers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/location/GeofenceHardwareImpl$Reaper;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedMonitorTypes:[I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "GeofenceHardwareImpl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    .line 48
    new-array v0, v1, [Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacks:[Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReapers:Ljava/util/ArrayList;

    .line 55
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    .line 532
    new-instance v0, Landroid/hardware/location/GeofenceHardwareImpl$1;

    invoke-direct {v0, p0}, Landroid/hardware/location/GeofenceHardwareImpl$1;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;)V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofenceHandler:Landroid/os/Handler;

    .line 638
    new-instance v0, Landroid/hardware/location/GeofenceHardwareImpl$2;

    invoke-direct {v0, p0}, Landroid/hardware/location/GeofenceHardwareImpl$2;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;)V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    .line 695
    new-instance v0, Landroid/hardware/location/GeofenceHardwareImpl$3;

    invoke-direct {v0, p0}, Landroid/hardware/location/GeofenceHardwareImpl$3;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;)V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    .line 98
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mContext:Landroid/content/Context;

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/location/GeofenceHardwareImpl;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/location/GeofenceHardwareImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/location/GeofenceHardwareImpl;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$1000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/location/GeofenceHardwareImpl;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofenceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/location/GeofenceHardwareImpl;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/location/GeofenceHardwareImpl;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$800(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/location/GeofenceHardwareImpl;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacks:[Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/location/GeofenceHardwareImpl;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReapers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 112
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "GeofenceHardwareImpl"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 114
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_0
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 115
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const-class v1, Landroid/hardware/location/GeofenceHardwareImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/hardware/location/GeofenceHardwareImpl;->sInstance:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {v0, p0}, Landroid/hardware/location/GeofenceHardwareImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/hardware/location/GeofenceHardwareImpl;->sInstance:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 94
    :cond_0
    sget-object v0, Landroid/hardware/location/GeofenceHardwareImpl;->sInstance:Landroid/hardware/location/GeofenceHardwareImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 119
    :cond_0
    return-void
.end method

.method private reportGeofenceOperationStatus(III)V
    .locals 2
    .param p1, "operation"    # I
    .param p2, "geofenceId"    # I
    .param p3, "operationStatus"    # I

    .prologue
    .line 492
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->acquireWakeLock()V

    .line 493
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofenceHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 494
    .local v0, "message":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 495
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 496
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 497
    return-void
.end method

.method private setMonitorAvailability(II)V
    .locals 2
    .param p1, "monitor"    # I
    .param p2, "val"    # I

    .prologue
    .line 760
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    monitor-enter v1

    .line 761
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    aput p2, v0, p1

    .line 762
    monitor-exit v1

    .line 763
    return-void

    .line 762
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateFusedHardwareAvailability()V
    .locals 4

    .prologue
    .line 142
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    invoke-interface {v2}, Landroid/location/IFusedGeofenceHardware;->isSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 148
    .local v1, "fusedSupported":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 149
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    .line 153
    :cond_0
    return-void

    .line 143
    .end local v1    # "fusedSupported":Z
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GeofenceHardwareImpl"

    const-string v3, "RemoteException calling LocationManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v1, 0x0

    .restart local v1    # "fusedSupported":Z
    goto :goto_0
.end method

.method private updateGpsHardwareAvailability()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 125
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    invoke-interface {v2}, Landroid/location/IGpsGeofenceHardware;->isHardwareGeofenceSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 131
    .local v1, "gpsSupported":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 134
    invoke-direct {p0, v4, v4}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    .line 137
    :cond_0
    return-void

    .line 126
    .end local v1    # "gpsSupported":Z
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GeofenceHardwareImpl"

    const-string v3, "Remote Exception calling LocationManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v1, 0x0

    .restart local v1    # "gpsSupported":Z
    goto :goto_0
.end method


# virtual methods
.method public addCircularFence(IIDDDIIIILandroid/hardware/location/IGeofenceHardwareCallback;)Z
    .locals 20
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "radius"    # D
    .param p9, "lastTransition"    # I
    .param p10, "monitorTransitions"    # I
    .param p11, "notificationResponsivenes"    # I
    .param p12, "unknownTimer"    # I
    .param p13, "callback"    # Landroid/hardware/location/IGeofenceHardwareCallback;

    .prologue
    .line 218
    sget-boolean v3, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 219
    const-string v3, "GeofenceHardwareImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addCircularFence: GeofenceId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Latitude: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Longitude: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Radius: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p7

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LastTransition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MonitorTransition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NotificationResponsiveness: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " UnKnown Timer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p12

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MonitoringType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    monitor-enter v4

    .line 233
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p13

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    packed-switch p2, :pswitch_data_0

    .line 273
    const/16 v19, 0x0

    .line 275
    .local v19, "result":Z
    :goto_0
    if-eqz v19, :cond_4

    .line 276
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    move-object/from16 v0, p13

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 277
    .local v16, "m":Landroid/os/Message;
    move/from16 v0, p2

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 285
    .end local v16    # "m":Landroid/os/Message;
    :goto_1
    sget-boolean v3, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GeofenceHardwareImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addCircularFence: Result is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v19    # "result":Z
    :cond_1
    :goto_2
    return v19

    .line 234
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 238
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    if-nez v3, :cond_2

    const/16 v19, 0x0

    goto :goto_2

    .line 240
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    move/from16 v4, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-interface/range {v3 .. v14}, Landroid/location/IGpsGeofenceHardware;->addCircularHardwareGeofence(IDDDIIII)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v19

    .restart local v19    # "result":Z
    goto :goto_0

    .line 243
    .end local v19    # "result":Z
    :catch_0
    move-exception v15

    .line 244
    .local v15, "e":Landroid/os/RemoteException;
    const-string v3, "GeofenceHardwareImpl"

    const-string v4, "AddGeofence: Remote Exception calling LocationManagerService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/16 v19, 0x0

    .line 247
    .restart local v19    # "result":Z
    goto :goto_0

    .line 249
    .end local v15    # "e":Landroid/os/RemoteException;
    .end local v19    # "result":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    if-nez v3, :cond_3

    .line 250
    const/16 v19, 0x0

    goto :goto_2

    .line 252
    :cond_3
    invoke-static/range {p3 .. p8}, Landroid/hardware/location/GeofenceHardwareRequest;->createCircularGeofence(DDD)Landroid/hardware/location/GeofenceHardwareRequest;

    move-result-object v18

    .line 256
    .local v18, "request":Landroid/hardware/location/GeofenceHardwareRequest;
    move-object/from16 v0, v18

    move/from16 v1, p12

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareRequest;->setUnknownTimer(I)V

    .line 257
    move-object/from16 v0, v18

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareRequest;->setNotificationResponsiveness(I)V

    .line 258
    move-object/from16 v0, v18

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareRequest;->setMonitorTransitions(I)V

    .line 259
    move-object/from16 v0, v18

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareRequest;->setLastTransition(I)V

    .line 261
    new-instance v17, Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    move-object/from16 v0, v17

    move/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;-><init>(ILandroid/hardware/location/GeofenceHardwareRequest;)V

    .line 264
    .local v17, "parcelableRequest":Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    invoke-interface {v3, v4}, Landroid/location/IFusedGeofenceHardware;->addGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 266
    const/16 v19, 0x1

    .restart local v19    # "result":Z
    goto/16 :goto_0

    .line 267
    .end local v19    # "result":Z
    :catch_1
    move-exception v15

    .line 268
    .restart local v15    # "e":Landroid/os/RemoteException;
    const-string v3, "GeofenceHardwareImpl"

    const-string v4, "AddGeofence: RemoteException calling LocationManagerService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/16 v19, 0x0

    .line 271
    .restart local v19    # "result":Z
    goto/16 :goto_0

    .line 280
    .end local v15    # "e":Landroid/os/RemoteException;
    .end local v17    # "parcelableRequest":Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    .end local v18    # "request":Landroid/hardware/location/GeofenceHardwareRequest;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    monitor-enter v4

    .line 281
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 282
    monitor-exit v4

    goto/16 :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getAllowedResolutionLevel(II)I
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 828
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    .line 830
    const/4 v0, 0x3

    .line 835
    :goto_0
    return v0

    .line 831
    :cond_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    .line 833
    const/4 v0, 0x2

    goto :goto_0

    .line 835
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getMonitoringResolutionLevel(I)I
    .locals 1
    .param p1, "monitoringType"    # I

    .prologue
    const/4 v0, 0x3

    .line 767
    packed-switch p1, :pswitch_data_0

    .line 773
    const/4 v0, 0x1

    :pswitch_0
    return v0

    .line 767
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getMonitoringTypes()[I
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 182
    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    monitor-enter v5

    .line 183
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    if-eq v2, v7, :cond_0

    move v1, v3

    .line 185
    .local v1, "gpsSupported":Z
    :goto_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    const/4 v6, 0x1

    aget v2, v2, v6

    if-eq v2, v7, :cond_1

    move v0, v3

    .line 187
    .local v0, "fusedSupported":Z
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    if-eqz v1, :cond_3

    .line 190
    if-eqz v0, :cond_2

    .line 191
    new-array v2, v7, [I

    fill-array-data v2, :array_0

    .line 200
    :goto_2
    return-object v2

    .end local v0    # "fusedSupported":Z
    .end local v1    # "gpsSupported":Z
    :cond_0
    move v1, v4

    .line 183
    goto :goto_0

    .restart local v1    # "gpsSupported":Z
    :cond_1
    move v0, v4

    .line 185
    goto :goto_1

    .line 187
    .end local v1    # "gpsSupported":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 195
    .restart local v0    # "fusedSupported":Z
    .restart local v1    # "gpsSupported":Z
    :cond_2
    new-array v2, v3, [I

    aput v4, v2, v4

    goto :goto_2

    .line 197
    :cond_3
    if-eqz v0, :cond_4

    .line 198
    new-array v2, v3, [I

    aput v3, v2, v4

    goto :goto_2

    .line 200
    :cond_4
    new-array v2, v4, [I

    goto :goto_2

    .line 191
    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public getStatusOfMonitoringType(I)I
    .locals 3
    .param p1, "monitoringType"    # I

    .prologue
    .line 205
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown monitoring type"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 209
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mSupportedMonitorTypes:[I

    aget v0, v0, p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public pauseGeofence(II)Z
    .locals 6
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I

    .prologue
    const/4 v1, 0x0

    .line 332
    sget-boolean v2, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GeofenceHardwareImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pause Geofence: GeofenceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    monitor-enter v3

    .line 335
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 336
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Geofence "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not registered."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 338
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    packed-switch p2, :pswitch_data_0

    .line 362
    const/4 v1, 0x0

    .line 364
    .local v1, "result":Z
    :goto_0
    sget-boolean v2, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "GeofenceHardwareImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pauseGeofence: Result is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .end local v1    # "result":Z
    :cond_2
    return v1

    .line 341
    :pswitch_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    if-eqz v2, :cond_2

    .line 343
    :try_start_2
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    invoke-interface {v2, p1}, Landroid/location/IGpsGeofenceHardware;->pauseHardwareGeofence(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_0

    .line 344
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GeofenceHardwareImpl"

    const-string v3, "PauseGeofence: Remote Exception calling LocationManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v1, 0x0

    .line 348
    .restart local v1    # "result":Z
    goto :goto_0

    .line 350
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "result":Z
    :pswitch_1
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    if-eqz v2, :cond_2

    .line 354
    :try_start_3
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    invoke-interface {v2, p1}, Landroid/location/IFusedGeofenceHardware;->pauseMonitoringGeofence(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 355
    const/4 v1, 0x1

    .restart local v1    # "result":Z
    goto :goto_0

    .line 356
    .end local v1    # "result":Z
    :catch_1
    move-exception v0

    .line 357
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "GeofenceHardwareImpl"

    const-string v3, "PauseGeofence: RemoteException calling LocationManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v1, 0x0

    .line 360
    .restart local v1    # "result":Z
    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public registerForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    .locals 4
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .prologue
    const/4 v3, 0x2

    .line 410
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 412
    .local v1, "reaperMessage":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 413
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 415
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 416
    .local v0, "m":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 417
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 418
    const/4 v2, 0x1

    return v2
.end method

.method public removeGeofence(II)Z
    .locals 6
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I

    .prologue
    const/4 v2, 0x0

    .line 292
    sget-boolean v3, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "GeofenceHardwareImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove Geofence: GeofenceId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    const/4 v1, 0x0

    .line 295
    .local v1, "result":Z
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    monitor-enter v3

    .line 296
    :try_start_0
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 297
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Geofence "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not registered."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 299
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    packed-switch p2, :pswitch_data_0

    .line 323
    const/4 v1, 0x0

    .line 325
    :goto_0
    sget-boolean v2, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "GeofenceHardwareImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeGeofence: Result is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v2, v1

    .line 326
    :cond_3
    return v2

    .line 302
    :pswitch_0
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    if-eqz v3, :cond_3

    .line 304
    :try_start_2
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    invoke-interface {v2, p1}, Landroid/location/IGpsGeofenceHardware;->removeHardwareGeofence(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GeofenceHardwareImpl"

    const-string v3, "RemoveGeofence: Remote Exception calling LocationManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v1, 0x0

    .line 309
    goto :goto_0

    .line 311
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    if-eqz v3, :cond_3

    .line 315
    :try_start_3
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    invoke-interface {v2, v3}, Landroid/location/IFusedGeofenceHardware;->removeGeofences([I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 316
    const/4 v1, 0x1

    goto :goto_0

    .line 317
    :catch_1
    move-exception v0

    .line 318
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "GeofenceHardwareImpl"

    const-string v3, "RemoveGeofence: RemoteException calling LocationManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v1, 0x0

    .line 321
    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reportGeofenceAddStatus(II)V
    .locals 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 503
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GeofenceHardwareImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddCallback| id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceOperationStatus(III)V

    .line 505
    return-void
.end method

.method public reportGeofenceMonitorStatus(IILandroid/location/Location;I)V
    .locals 3
    .param p1, "monitoringType"    # I
    .param p2, "monitoringStatus"    # I
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "source"    # I

    .prologue
    .line 475
    invoke-direct {p0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->setMonitorAvailability(II)V

    .line 476
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->acquireWakeLock()V

    .line 477
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 478
    .local v0, "message":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 479
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 480
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 481
    return-void
.end method

.method public reportGeofencePauseStatus(II)V
    .locals 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 519
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GeofenceHardwareImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PauseCallbac| id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceOperationStatus(III)V

    .line 521
    return-void
.end method

.method public reportGeofenceRemoveStatus(II)V
    .locals 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 511
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GeofenceHardwareImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoveCallback| id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceOperationStatus(III)V

    .line 513
    return-void
.end method

.method public reportGeofenceResumeStatus(II)V
    .locals 3
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 527
    sget-boolean v0, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GeofenceHardwareImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResumeCallback| id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceOperationStatus(III)V

    .line 529
    return-void
.end method

.method public reportGeofenceTransition(ILandroid/location/Location;IJII)V
    .locals 12
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "transition"    # I
    .param p4, "transitionTimestamp"    # J
    .param p6, "monitoringType"    # I
    .param p7, "sourcesUsed"    # I

    .prologue
    .line 439
    if-nez p2, :cond_0

    .line 440
    const-string v3, "GeofenceHardwareImpl"

    const-string v4, "Invalid Geofence Transition: location=%p"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_0
    return-void

    .line 443
    :cond_0
    sget-boolean v3, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 444
    const-string v3, "GeofenceHardwareImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GeofenceTransition| "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", transition:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", transitionTimestamp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", monitoringType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sourcesUsed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_1
    new-instance v2, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;

    move-object v3, p0

    move v4, p1

    move v5, p3

    move-wide/from16 v6, p4

    move-object v8, p2

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;IIJLandroid/location/Location;II)V

    .line 458
    .local v2, "geofenceTransition":Landroid/hardware/location/GeofenceHardwareImpl$GeofenceTransition;
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->acquireWakeLock()V

    .line 460
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofenceHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 463
    .local v11, "message":Landroid/os/Message;
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public resumeGeofence(III)Z
    .locals 6
    .param p1, "geofenceId"    # I
    .param p2, "monitoringType"    # I
    .param p3, "monitorTransition"    # I

    .prologue
    const/4 v1, 0x0

    .line 372
    sget-boolean v2, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GeofenceHardwareImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resume Geofence: GeofenceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    monitor-enter v3

    .line 375
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGeofences:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 376
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Geofence "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not registered."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 378
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    packed-switch p2, :pswitch_data_0

    .line 402
    const/4 v1, 0x0

    .line 404
    .local v1, "result":Z
    :goto_0
    sget-boolean v2, Landroid/hardware/location/GeofenceHardwareImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "GeofenceHardwareImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resumeGeofence: Result is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .end local v1    # "result":Z
    :cond_2
    return v1

    .line 381
    :pswitch_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    if-eqz v2, :cond_2

    .line 383
    :try_start_2
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    invoke-interface {v2, p1, p3}, Landroid/location/IGpsGeofenceHardware;->resumeHardwareGeofence(II)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_0

    .line 384
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GeofenceHardwareImpl"

    const-string v3, "ResumeGeofence: Remote Exception calling LocationManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v1, 0x0

    .line 388
    .restart local v1    # "result":Z
    goto :goto_0

    .line 390
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "result":Z
    :pswitch_1
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    if-eqz v2, :cond_2

    .line 394
    :try_start_3
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    invoke-interface {v2, p1, p3}, Landroid/location/IFusedGeofenceHardware;->resumeMonitoringGeofence(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 395
    const/4 v1, 0x1

    .restart local v1    # "result":Z
    goto :goto_0

    .line 396
    .end local v1    # "result":Z
    :catch_1
    move-exception v0

    .line 397
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "GeofenceHardwareImpl"

    const-string v3, "ResumeGeofence: RemoteException calling LocationManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v1, 0x0

    .line 400
    .restart local v1    # "result":Z
    goto :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setFusedGeofenceHardware(Landroid/location/IFusedGeofenceHardware;)V
    .locals 2
    .param p1, "service"    # Landroid/location/IFusedGeofenceHardware;

    .prologue
    .line 168
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    if-nez v0, :cond_0

    .line 169
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    .line 170
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->updateFusedHardwareAvailability()V

    .line 177
    :goto_0
    return-void

    .line 171
    :cond_0
    if-nez p1, :cond_1

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mFusedService:Landroid/location/IFusedGeofenceHardware;

    .line 173
    const-string v0, "GeofenceHardwareImpl"

    const-string v1, "Fused Geofence Hardware service seems to have crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_1
    const-string v0, "GeofenceHardwareImpl"

    const-string v1, "Error: FusedService being set again"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setGpsHardwareGeofence(Landroid/location/IGpsGeofenceHardware;)V
    .locals 2
    .param p1, "service"    # Landroid/location/IGpsGeofenceHardware;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    if-nez v0, :cond_0

    .line 157
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    .line 158
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl;->updateGpsHardwareAvailability()V

    .line 165
    :goto_0
    return-void

    .line 159
    :cond_0
    if-nez p1, :cond_1

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mGpsService:Landroid/location/IGpsGeofenceHardware;

    .line 161
    const-string v0, "GeofenceHardwareImpl"

    const-string v1, "GPS Geofence Hardware service seems to have crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    :cond_1
    const-string v0, "GeofenceHardwareImpl"

    const-string v1, "Error: GpsService being set again."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterForMonitorStateChangeCallback(ILandroid/hardware/location/IGeofenceHardwareMonitorCallback;)Z
    .locals 3
    .param p1, "monitoringType"    # I
    .param p2, "callback"    # Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .prologue
    .line 423
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 424
    .local v0, "m":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 425
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 426
    const/4 v1, 0x1

    return v1
.end method
