.class public abstract Landroid/hardware/location/GeofenceHardwareCallback;
.super Ljava/lang/Object;
.source "GeofenceHardwareCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeofenceAdd(II)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 52
    return-void
.end method

.method public onGeofencePause(II)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 74
    return-void
.end method

.method public onGeofenceRemove(II)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 63
    return-void
.end method

.method public onGeofenceResume(II)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 86
    return-void
.end method

.method public onGeofenceTransition(IILandroid/location/Location;JI)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "transition"    # I
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "timestamp"    # J
    .param p6, "monitoringType"    # I

    .prologue
    .line 39
    return-void
.end method
