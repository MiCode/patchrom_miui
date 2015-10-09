.class final Landroid/telephony/CellInfoGsm$1;
.super Ljava/lang/Object;
.source "CellInfoGsm.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellInfoGsm;
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
        "Landroid/telephony/CellInfoGsm;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellInfoGsm;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 128
    invoke-static {p1}, Landroid/telephony/CellInfoGsm;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoGsm;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Landroid/telephony/CellInfoGsm$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellInfoGsm;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/CellInfoGsm;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 133
    new-array v0, p1, [Landroid/telephony/CellInfoGsm;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Landroid/telephony/CellInfoGsm$1;->newArray(I)[Landroid/telephony/CellInfoGsm;

    move-result-object v0

    return-object v0
.end method
