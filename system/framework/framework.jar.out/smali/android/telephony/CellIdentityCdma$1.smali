.class final Landroid/telephony/CellIdentityCdma$1;
.super Ljava/lang/Object;
.source "CellIdentityCdma.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellIdentityCdma;
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
        "Landroid/telephony/CellIdentityCdma;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellIdentityCdma;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 209
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/CellIdentityCdma;-><init>(Landroid/os/Parcel;Landroid/telephony/CellIdentityCdma$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentityCdma$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/CellIdentityCdma;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 214
    new-array v0, p1, [Landroid/telephony/CellIdentityCdma;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentityCdma$1;->newArray(I)[Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    return-object v0
.end method
