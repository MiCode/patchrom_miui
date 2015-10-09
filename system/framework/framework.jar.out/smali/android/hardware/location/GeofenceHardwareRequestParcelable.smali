.class public final Landroid/hardware/location/GeofenceHardwareRequestParcelable;
.super Ljava/lang/Object;
.source "GeofenceHardwareRequestParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/location/GeofenceHardwareRequestParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:I

.field private mRequest:Landroid/hardware/location/GeofenceHardwareRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;

    invoke-direct {v0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;-><init>()V

    sput-object v0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/hardware/location/GeofenceHardwareRequest;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "request"    # Landroid/hardware/location/GeofenceHardwareRequest;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mId:I

    .line 34
    iput-object p2, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mId:I

    return v0
.end method

.method public getLastTransition()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getLastTransition()I

    move-result v0

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMonitorTransitions()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getMonitorTransitions()I

    move-result v0

    return v0
.end method

.method public getNotificationResponsiveness()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getNotificationResponsiveness()I

    move-result v0

    return v0
.end method

.method public getRadius()D
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getRadius()D

    move-result-wide v0

    return-wide v0
.end method

.method getType()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getType()I

    move-result v0

    return v0
.end method

.method public getUnknownTimer()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getUnknownTimer()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 143
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 144
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getRadius()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 145
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLastTransition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getMonitorTransitions()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getUnknownTimer()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getNotificationResponsiveness()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    return-void
.end method
