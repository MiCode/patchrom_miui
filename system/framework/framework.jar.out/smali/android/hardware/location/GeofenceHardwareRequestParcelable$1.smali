.class final Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;
.super Ljava/lang/Object;
.source "GeofenceHardwareRequestParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareRequestParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/hardware/location/GeofenceHardwareRequestParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    .locals 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 108
    .local v6, "geofenceType":I
    if-eqz v6, :cond_0

    .line 109
    const-string v0, "GeofenceHardwareRequest"

    const-string v1, "Invalid Geofence type: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    .line 115
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/hardware/location/GeofenceHardwareRequest;->createCircularGeofence(DDD)Landroid/hardware/location/GeofenceHardwareRequest;

    move-result-object v8

    .line 119
    .local v8, "request":Landroid/hardware/location/GeofenceHardwareRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/hardware/location/GeofenceHardwareRequest;->setLastTransition(I)V

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/hardware/location/GeofenceHardwareRequest;->setMonitorTransitions(I)V

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/hardware/location/GeofenceHardwareRequest;->setUnknownTimer(I)V

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/hardware/location/GeofenceHardwareRequest;->setNotificationResponsiveness(I)V

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 125
    .local v7, "id":I
    new-instance v0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    invoke-direct {v0, v7, v8}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;-><init>(ILandroid/hardware/location/GeofenceHardwareRequest;)V

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 130
    new-array v0, p1, [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;->newArray(I)[Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    move-result-object v0

    return-object v0
.end method
