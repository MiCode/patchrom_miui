.class public Landroid/net/wifi/RssiPacketCountInfo;
.super Ljava/lang/Object;
.source "RssiPacketCountInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/RssiPacketCountInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public rssi:I

.field public txbad:I

.field public txgood:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Landroid/net/wifi/RssiPacketCountInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/RssiPacketCountInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/RssiPacketCountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/wifi/RssiPacketCountInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/net/wifi/RssiPacketCountInfo$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/net/wifi/RssiPacketCountInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 49
    iget v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    return-void
.end method
