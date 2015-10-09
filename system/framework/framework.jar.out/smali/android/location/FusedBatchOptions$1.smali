.class final Landroid/location/FusedBatchOptions$1;
.super Ljava/lang/Object;
.source "FusedBatchOptions.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/FusedBatchOptions;
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
        "Landroid/location/FusedBatchOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/FusedBatchOptions;
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 109
    new-instance v0, Landroid/location/FusedBatchOptions;

    invoke-direct {v0}, Landroid/location/FusedBatchOptions;-><init>()V

    .line 110
    .local v0, "options":Landroid/location/FusedBatchOptions;
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/FusedBatchOptions;->setMaxPowerAllocationInMW(D)V

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/FusedBatchOptions;->setPeriodInNS(J)V

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/FusedBatchOptions;->setSourceToUse(I)V

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/FusedBatchOptions;->setFlag(I)V

    .line 114
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/location/FusedBatchOptions$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/FusedBatchOptions;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/FusedBatchOptions;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 119
    new-array v0, p1, [Landroid/location/FusedBatchOptions;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/location/FusedBatchOptions$1;->newArray(I)[Landroid/location/FusedBatchOptions;

    move-result-object v0

    return-object v0
.end method
