.class final Landroid/hardware/usb/UsbDevice$1;
.super Ljava/lang/Object;
.source "UsbDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbDevice;
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
        "Landroid/hardware/usb/UsbDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbDevice;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 187
    .local v2, "vendorId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 188
    .local v3, "productId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 189
    .local v4, "clasz":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 190
    .local v5, "subClass":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 191
    .local v6, "protocol":I
    const-class v0, Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v7

    .line 192
    .local v7, "interfaces":[Landroid/os/Parcelable;
    new-instance v0, Landroid/hardware/usb/UsbDevice;

    invoke-direct/range {v0 .. v7}, Landroid/hardware/usb/UsbDevice;-><init>(Ljava/lang/String;IIIII[Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbDevice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/usb/UsbDevice;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 196
    new-array v0, p1, [Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbDevice$1;->newArray(I)[Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    return-object v0
.end method
