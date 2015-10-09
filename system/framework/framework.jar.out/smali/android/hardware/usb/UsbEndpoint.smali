.class public Landroid/hardware/usb/UsbEndpoint;
.super Ljava/lang/Object;
.source "UsbEndpoint.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/usb/UsbEndpoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAddress:I

.field private final mAttributes:I

.field private final mInterval:I

.field private final mMaxPacketSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Landroid/hardware/usb/UsbEndpoint$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbEndpoint$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "address"    # I
    .param p2, "attributes"    # I
    .param p3, "maxPacketSize"    # I
    .param p4, "interval"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    .line 46
    iput p2, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    .line 47
    iput p3, p0, Landroid/hardware/usb/UsbEndpoint;->mMaxPacketSize:I

    .line 48
    iput p4, p0, Landroid/hardware/usb/UsbEndpoint;->mInterval:I

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    return v0
.end method

.method public getAttributes()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    return v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    and-int/lit16 v0, v0, 0x80

    return v0
.end method

.method public getEndpointNumber()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mInterval:I

    return v0
.end method

.method public getMaxPacketSize()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mMaxPacketSize:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbEndpoint[mAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMaxPacketSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbEndpoint;->mMaxPacketSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbEndpoint;->mInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 157
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAddress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mAttributes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mMaxPacketSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget v0, p0, Landroid/hardware/usb/UsbEndpoint;->mInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    return-void
.end method
