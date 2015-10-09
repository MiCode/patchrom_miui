.class public final Landroid/bluetooth/BluetoothHealthAppConfiguration;
.super Ljava/lang/Object;
.source "BluetoothHealthAppConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothHealthAppConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChannelType:I

.field private final mDataType:I

.field private final mName:Ljava/lang/String;

.field private final mRole:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Landroid/bluetooth/BluetoothHealthAppConfiguration$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHealthAppConfiguration$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dataType"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    .line 45
    iput p2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    .line 47
    const/16 v0, 0xc

    iput v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    .line 48
    return-void
.end method

.method constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dataType"    # I
    .param p3, "role"    # I
    .param p4, "channelType"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    .line 62
    iput p2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    .line 63
    iput p3, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    .line 64
    iput p4, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    .line 65
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 69
    instance-of v2, p1, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 70
    check-cast v0, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 72
    .local v0, "config":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    iget-object v2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getDataType()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getRole()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->getChannelType()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 77
    .end local v0    # "config":Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :cond_0
    return v1
.end method

.method public getChannelType()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    return v0
.end method

.method public getDataType()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 82
    const/16 v0, 0x11

    .line 83
    .local v0, "result":I
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 84
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    add-int v0, v1, v2

    .line 85
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    add-int v0, v1, v2

    .line 86
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    add-int v0, v1, v2

    .line 87
    return v0

    .line 83
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothHealthAppConfiguration [mName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mDataType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRole = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mChannelType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

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
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 160
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mDataType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget v0, p0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->mChannelType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    return-void
.end method
