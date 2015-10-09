.class final Landroid/location/LocationRequest$1;
.super Ljava/lang/Object;
.source "LocationRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationRequest;
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
        "Landroid/location/LocationRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/LocationRequest;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 579
    new-instance v1, Landroid/location/LocationRequest;

    invoke-direct {v1}, Landroid/location/LocationRequest;-><init>()V

    .line 580
    .local v1, "request":Landroid/location/LocationRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/location/LocationRequest;->setExpireAt(J)Landroid/location/LocationRequest;

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    .line 585
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/location/LocationRequest;->setSmallestDisplacement(F)Landroid/location/LocationRequest;

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v3}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 587
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "provider":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    .line 589
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 590
    .local v2, "workSource":Landroid/os/WorkSource;
    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setWorkSource(Landroid/os/WorkSource;)V

    .line 591
    :cond_1
    return-object v1

    .line 586
    .end local v0    # "provider":Ljava/lang/String;
    .end local v2    # "workSource":Landroid/os/WorkSource;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 576
    invoke-virtual {p0, p1}, Landroid/location/LocationRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/LocationRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 595
    new-array v0, p1, [Landroid/location/LocationRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 576
    invoke-virtual {p0, p1}, Landroid/location/LocationRequest$1;->newArray(I)[Landroid/location/LocationRequest;

    move-result-object v0

    return-object v0
.end method
