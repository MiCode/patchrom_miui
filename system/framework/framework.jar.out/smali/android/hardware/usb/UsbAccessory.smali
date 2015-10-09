.class public Landroid/hardware/usb/UsbAccessory;
.super Ljava/lang/Object;
.source "UsbAccessory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/usb/UsbAccessory;",
            ">;"
        }
    .end annotation
.end field

.field public static final DESCRIPTION_STRING:I = 0x2

.field public static final MANUFACTURER_STRING:I = 0x0

.field public static final MODEL_STRING:I = 0x1

.field public static final SERIAL_STRING:I = 0x5

.field private static final TAG:Ljava/lang/String; = "UsbAccessory"

.field public static final URI_STRING:I = 0x4

.field public static final VERSION_STRING:I = 0x3


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mManufacturer:Ljava/lang/String;

.field private final mModel:Ljava/lang/String;

.field private final mSerial:Ljava/lang/String;

.field private final mUri:Ljava/lang/String;

.field private final mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    new-instance v0, Landroid/hardware/usb/UsbAccessory$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbAccessory$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "manufacturer"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;
    .param p5, "uri"    # Ljava/lang/String;
    .param p6, "serial"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    .line 81
    iput-object p5, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    .line 82
    iput-object p6, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    .line 91
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    .line 92
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    .line 93
    const/4 v0, 0x3

    aget-object v0, p1, v0

    iput-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    .line 94
    const/4 v0, 0x4

    aget-object v0, p1, v0

    iput-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    .line 95
    const/4 v0, 0x5

    aget-object v0, p1, v0

    iput-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    .line 96
    return-void
.end method

.method private static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    .line 157
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 163
    instance-of v2, p1, Landroid/hardware/usb/UsbAccessory;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 164
    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 165
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 172
    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :cond_0
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    xor-int/2addr v2, v0

    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    xor-int/2addr v2, v0

    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    xor-int/2addr v2, v0

    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    xor-int/2addr v0, v2

    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    if-nez v2, :cond_5

    :goto_5
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbAccessory[mManufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSerial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 217
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mModel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    return-void
.end method
