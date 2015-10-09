.class final Landroid/hardware/usb/UsbInterface$1;
.super Ljava/lang/Object;
.source "UsbInterface.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbInterface;
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
        "Landroid/hardware/usb/UsbInterface;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbInterface;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 124
    .local v1, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .local v2, "Class":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 126
    .local v3, "subClass":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 127
    .local v4, "protocol":I
    const-class v0, Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 128
    .local v5, "endpoints":[Landroid/os/Parcelable;
    new-instance v0, Landroid/hardware/usb/UsbInterface;

    invoke-direct/range {v0 .. v5}, Landroid/hardware/usb/UsbInterface;-><init>(IIII[Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbInterface$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/usb/UsbInterface;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 132
    new-array v0, p1, [Landroid/hardware/usb/UsbInterface;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbInterface$1;->newArray(I)[Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    return-object v0
.end method
