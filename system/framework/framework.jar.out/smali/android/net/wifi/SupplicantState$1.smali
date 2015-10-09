.class final Landroid/net/wifi/SupplicantState$1;
.super Ljava/lang/Object;
.source "SupplicantState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SupplicantState;
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
        "Landroid/net/wifi/SupplicantState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/SupplicantState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Landroid/net/wifi/SupplicantState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/SupplicantState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 259
    new-array v0, p1, [Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Landroid/net/wifi/SupplicantState$1;->newArray(I)[Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method
