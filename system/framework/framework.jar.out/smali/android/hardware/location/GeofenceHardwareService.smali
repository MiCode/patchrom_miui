.class public Landroid/hardware/location/GeofenceHardwareService;
.super Landroid/app/Service;
.source "GeofenceHardwareService.java"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    new-instance v0, Landroid/hardware/location/GeofenceHardwareService$1;

    invoke-direct {v0, p0}, Landroid/hardware/location/GeofenceHardwareService$1;-><init>(Landroid/hardware/location/GeofenceHardwareService;)V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/location/GeofenceHardwareService;)Landroid/hardware/location/GeofenceHardwareImpl;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/location/GeofenceHardwareService;

    .prologue
    .line 33
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/location/GeofenceHardwareService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/location/GeofenceHardwareService;

    .prologue
    .line 33
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/location/GeofenceHardwareService;III)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/location/GeofenceHardwareService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/location/GeofenceHardwareService;->checkPermission(III)V

    return-void
.end method

.method private checkPermission(III)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "monitoringType"    # I

    .prologue
    .line 60
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->getAllowedResolutionLevel(II)I

    move-result v0

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-virtual {v1, p3}, Landroid/hardware/location/GeofenceHardwareImpl;->getMonitoringResolutionLevel(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insufficient permissions to access hardware geofence for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 39
    iput-object p0, p0, Landroid/hardware/location/GeofenceHardwareService;->mContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 41
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardwareService;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 56
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method
