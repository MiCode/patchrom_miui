.class final Landroid/bluetooth/BluetoothClass$1;
.super Ljava/lang/Object;
.source "BluetoothClass.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothClass;
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
        "Landroid/bluetooth/BluetoothClass;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothClass;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 90
    new-instance v0, Landroid/bluetooth/BluetoothClass;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothClass$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothClass;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 93
    new-array v0, p1, [Landroid/bluetooth/BluetoothClass;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothClass$1;->newArray(I)[Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    return-object v0
.end method
