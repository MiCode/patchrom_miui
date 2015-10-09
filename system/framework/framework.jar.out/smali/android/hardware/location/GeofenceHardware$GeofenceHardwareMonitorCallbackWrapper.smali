.class Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
.super Landroid/hardware/location/IGeofenceHardwareMonitorCallback$Stub;
.source "GeofenceHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GeofenceHardwareMonitorCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/hardware/location/GeofenceHardwareMonitorCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/location/GeofenceHardware;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V
    .locals 1
    .param p2, "c"    # Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    .prologue
    .line 455
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;->this$0:Landroid/hardware/location/GeofenceHardware;

    invoke-direct {p0}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback$Stub;-><init>()V

    .line 456
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    .line 457
    return-void
.end method


# virtual methods
.method public onMonitoringSystemChange(IZLandroid/location/Location;)V
    .locals 2
    .param p1, "monitoringType"    # I
    .param p2, "available"    # Z
    .param p3, "location"    # Landroid/location/Location;

    .prologue
    .line 461
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    .line 462
    .local v0, "c":Landroid/hardware/location/GeofenceHardwareMonitorCallback;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/location/GeofenceHardwareMonitorCallback;->onMonitoringSystemChange(IZLandroid/location/Location;)V

    .line 463
    :cond_0
    return-void
.end method
