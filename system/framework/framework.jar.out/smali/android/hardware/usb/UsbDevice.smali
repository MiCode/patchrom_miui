.class public Landroid/hardware/usb/UsbDevice;
.super Ljava/lang/Object;
.source "UsbDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UsbDevice"


# instance fields
.field private final mClass:I

.field private final mInterfaces:[Landroid/os/Parcelable;

.field private final mName:Ljava/lang/String;

.field private final mProductId:I

.field private final mProtocol:I

.field private final mSubclass:I

.field private final mVendorId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Landroid/hardware/usb/UsbDevice$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbDevice$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII[Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I
    .param p4, "Class"    # I
    .param p5, "subClass"    # I
    .param p6, "protocol"    # I
    .param p7, "interfaces"    # [Landroid/os/Parcelable;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    .line 63
    iput p2, p0, Landroid/hardware/usb/UsbDevice;->mVendorId:I

    .line 64
    iput p3, p0, Landroid/hardware/usb/UsbDevice;->mProductId:I

    .line 65
    iput p4, p0, Landroid/hardware/usb/UsbDevice;->mClass:I

    .line 66
    iput p5, p0, Landroid/hardware/usb/UsbDevice;->mSubclass:I

    .line 67
    iput p6, p0, Landroid/hardware/usb/UsbDevice;->mProtocol:I

    .line 68
    iput-object p7, p0, Landroid/hardware/usb/UsbDevice;->mInterfaces:[Landroid/os/Parcelable;

    .line 69
    return-void
.end method

.method public static getDeviceId(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-static {p0}, Landroid/hardware/usb/UsbDevice;->native_get_device_id(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDeviceName(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 219
    invoke-static {p0}, Landroid/hardware/usb/UsbDevice;->native_get_device_name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native native_get_device_id(Ljava/lang/String;)I
.end method

.method private static native native_get_device_name(I)Ljava/lang/String;
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 160
    instance-of v0, p1, Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_0

    .line 161
    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 165
    :goto_0
    return v0

    .line 162
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 163
    check-cast p1, Ljava/lang/String;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 165
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceClass()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mClass:I

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceProtocol()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mProtocol:I

    return v0
.end method

.method public getDeviceSubclass()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mSubclass:I

    return v0
.end method

.method public getInterface(I)Landroid/hardware/usb/UsbInterface;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 155
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mInterfaces:[Landroid/os/Parcelable;

    aget-object v0, v0, p1

    check-cast v0, Landroid/hardware/usb/UsbInterface;

    return-object v0
.end method

.method public getInterfaceCount()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mInterfaces:[Landroid/os/Parcelable;

    array-length v0, v0

    return v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mProductId:I

    return v0
.end method

.method public getVendorId()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mVendorId:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbDevice[mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mVendorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbDevice;->mVendorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mProductId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbDevice;->mProductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbDevice;->mClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mSubclass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbDevice;->mSubclass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbDevice;->mProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mInterfaces="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbDevice;->mInterfaces:[Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 205
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mSubclass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget v0, p0, Landroid/hardware/usb/UsbDevice;->mProtocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget-object v0, p0, Landroid/hardware/usb/UsbDevice;->mInterfaces:[Landroid/os/Parcelable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 212
    return-void
.end method
