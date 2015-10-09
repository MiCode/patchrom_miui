.class final Landroid/location/Location$1;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Location;
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
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/Location;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 863
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 864
    .local v1, "provider":Ljava/lang/String;
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 865
    .local v0, "l":Landroid/location/Location;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    # setter for: Landroid/location/Location;->mTime:J
    invoke-static {v0, v5, v6}, Landroid/location/Location;->access$002(Landroid/location/Location;J)J

    .line 866
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    # setter for: Landroid/location/Location;->mElapsedRealtimeNanos:J
    invoke-static {v0, v5, v6}, Landroid/location/Location;->access$102(Landroid/location/Location;J)J

    .line 867
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    # setter for: Landroid/location/Location;->mLatitude:D
    invoke-static {v0, v5, v6}, Landroid/location/Location;->access$202(Landroid/location/Location;D)D

    .line 868
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    # setter for: Landroid/location/Location;->mLongitude:D
    invoke-static {v0, v5, v6}, Landroid/location/Location;->access$302(Landroid/location/Location;D)D

    .line 869
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    # setter for: Landroid/location/Location;->mHasAltitude:Z
    invoke-static {v0, v2}, Landroid/location/Location;->access$402(Landroid/location/Location;Z)Z

    .line 870
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    # setter for: Landroid/location/Location;->mAltitude:D
    invoke-static {v0, v5, v6}, Landroid/location/Location;->access$502(Landroid/location/Location;D)D

    .line 871
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    # setter for: Landroid/location/Location;->mHasSpeed:Z
    invoke-static {v0, v2}, Landroid/location/Location;->access$602(Landroid/location/Location;Z)Z

    .line 872
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    # setter for: Landroid/location/Location;->mSpeed:F
    invoke-static {v0, v2}, Landroid/location/Location;->access$702(Landroid/location/Location;F)F

    .line 873
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    # setter for: Landroid/location/Location;->mHasBearing:Z
    invoke-static {v0, v2}, Landroid/location/Location;->access$802(Landroid/location/Location;Z)Z

    .line 874
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    # setter for: Landroid/location/Location;->mBearing:F
    invoke-static {v0, v2}, Landroid/location/Location;->access$902(Landroid/location/Location;F)F

    .line 875
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    # setter for: Landroid/location/Location;->mHasAccuracy:Z
    invoke-static {v0, v2}, Landroid/location/Location;->access$1002(Landroid/location/Location;Z)Z

    .line 876
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    # setter for: Landroid/location/Location;->mAccuracy:F
    invoke-static {v0, v2}, Landroid/location/Location;->access$1102(Landroid/location/Location;F)F

    .line 877
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    # setter for: Landroid/location/Location;->mExtras:Landroid/os/Bundle;
    invoke-static {v0, v2}, Landroid/location/Location;->access$1202(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 878
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    :goto_4
    # setter for: Landroid/location/Location;->mIsFromMockProvider:Z
    invoke-static {v0, v3}, Landroid/location/Location;->access$1302(Landroid/location/Location;Z)Z

    .line 879
    return-object v0

    :cond_0
    move v2, v4

    .line 869
    goto :goto_0

    :cond_1
    move v2, v4

    .line 871
    goto :goto_1

    :cond_2
    move v2, v4

    .line 873
    goto :goto_2

    :cond_3
    move v2, v4

    .line 875
    goto :goto_3

    :cond_4
    move v3, v4

    .line 878
    goto :goto_4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 860
    invoke-virtual {p0, p1}, Landroid/location/Location$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/Location;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 884
    new-array v0, p1, [Landroid/location/Location;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 860
    invoke-virtual {p0, p1}, Landroid/location/Location$1;->newArray(I)[Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
