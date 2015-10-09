.class final Landroid/telephony/ServiceState$1;
.super Ljava/lang/Object;
.source "ServiceState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ServiceState;
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
        "Landroid/telephony/ServiceState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ServiceState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 289
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0, p1}, Landroid/telephony/ServiceState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/ServiceState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 293
    new-array v0, p1, [Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState$1;->newArray(I)[Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method
