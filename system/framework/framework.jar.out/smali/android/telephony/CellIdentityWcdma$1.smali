.class final Landroid/telephony/CellIdentityWcdma$1;
.super Ljava/lang/Object;
.source "CellIdentityWcdma.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellIdentityWcdma;
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
        "Landroid/telephony/CellIdentityWcdma;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellIdentityWcdma;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 190
    new-instance v0, Landroid/telephony/CellIdentityWcdma;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/CellIdentityWcdma;-><init>(Landroid/os/Parcel;Landroid/telephony/CellIdentityWcdma$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentityWcdma$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/CellIdentityWcdma;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 195
    new-array v0, p1, [Landroid/telephony/CellIdentityWcdma;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentityWcdma$1;->newArray(I)[Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    return-object v0
.end method
