.class final Landroid/net/wifi/WifiSsid$1;
.super Ljava/lang/Object;
.source "WifiSsid.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiSsid;
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
        "Landroid/net/wifi/WifiSsid;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiSsid;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 223
    new-instance v2, Landroid/net/wifi/WifiSsid;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiSsid;-><init>(Landroid/net/wifi/WifiSsid$1;)V

    .line 224
    .local v2, "ssid":Landroid/net/wifi/WifiSsid;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 225
    .local v1, "length":I
    new-array v0, v1, [B

    .line 226
    .local v0, "b":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 227
    iget-object v3, v2, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 228
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiSsid$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiSsid;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiSsid;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 232
    new-array v0, p1, [Landroid/net/wifi/WifiSsid;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiSsid$1;->newArray(I)[Landroid/net/wifi/WifiSsid;

    move-result-object v0

    return-object v0
.end method
