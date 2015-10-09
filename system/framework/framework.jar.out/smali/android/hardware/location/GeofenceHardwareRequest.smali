.class public final Landroid/hardware/location/GeofenceHardwareRequest;
.super Ljava/lang/Object;
.source "GeofenceHardwareRequest.java"


# static fields
.field static final GEOFENCE_TYPE_CIRCLE:I


# instance fields
.field private mLastTransition:I

.field private mLatitude:D

.field private mLongitude:D

.field private mMonitorTransitions:I

.field private mNotificationResponsiveness:I

.field private mRadius:D

.field private mType:I

.field private mUnknownTimer:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x4

    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLastTransition:I

    .line 34
    const/16 v0, 0x7530

    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mUnknownTimer:I

    .line 35
    const/4 v0, 0x7

    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mMonitorTransitions:I

    .line 37
    const/16 v0, 0x1388

    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mNotificationResponsiveness:I

    return-void
.end method

.method public static createCircularGeofence(DDD)Landroid/hardware/location/GeofenceHardwareRequest;
    .locals 7
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .param p4, "radius"    # D

    .prologue
    .line 55
    new-instance v0, Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-direct {v0}, Landroid/hardware/location/GeofenceHardwareRequest;-><init>()V

    .local v0, "geofenceRequest":Landroid/hardware/location/GeofenceHardwareRequest;
    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    .line 56
    invoke-direct/range {v0 .. v6}, Landroid/hardware/location/GeofenceHardwareRequest;->setCircularGeofence(DDD)V

    .line 57
    return-object v0
.end method

.method private setCircularGeofence(DDD)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # D

    .prologue
    .line 40
    iput-wide p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLatitude:D

    .line 41
    iput-wide p3, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLongitude:D

    .line 42
    iput-wide p5, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mRadius:D

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mType:I

    .line 44
    return-void
.end method


# virtual methods
.method public getLastTransition()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLastTransition:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLongitude:D

    return-wide v0
.end method

.method public getMonitorTransitions()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mMonitorTransitions:I

    return v0
.end method

.method public getNotificationResponsiveness()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mNotificationResponsiveness:I

    return v0
.end method

.method public getRadius()D
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mRadius:D

    return-wide v0
.end method

.method getType()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mType:I

    return v0
.end method

.method public getUnknownTimer()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mUnknownTimer:I

    return v0
.end method

.method public setLastTransition(I)V
    .locals 0
    .param p1, "lastTransition"    # I

    .prologue
    .line 68
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLastTransition:I

    .line 69
    return-void
.end method

.method public setMonitorTransitions(I)V
    .locals 0
    .param p1, "monitorTransitions"    # I

    .prologue
    .line 89
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mMonitorTransitions:I

    .line 90
    return-void
.end method

.method public setNotificationResponsiveness(I)V
    .locals 0
    .param p1, "notificationResponsiveness"    # I

    .prologue
    .line 103
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mNotificationResponsiveness:I

    .line 104
    return-void
.end method

.method public setUnknownTimer(I)V
    .locals 0
    .param p1, "unknownTimer"    # I

    .prologue
    .line 79
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mUnknownTimer:I

    .line 80
    return-void
.end method
