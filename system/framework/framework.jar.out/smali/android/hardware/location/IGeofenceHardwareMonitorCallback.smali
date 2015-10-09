.class public interface abstract Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
.super Ljava/lang/Object;
.source "IGeofenceHardwareMonitorCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IGeofenceHardwareMonitorCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMonitoringSystemChange(IZLandroid/location/Location;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
