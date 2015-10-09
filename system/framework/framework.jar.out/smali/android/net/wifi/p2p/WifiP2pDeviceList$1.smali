.class final Landroid/net/wifi/p2p/WifiP2pDeviceList$1;
.super Ljava/lang/Object;
.source "WifiP2pDeviceList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pDeviceList;
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
        "Landroid/net/wifi/p2p/WifiP2pDeviceList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 204
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    .line 206
    .local v1, "deviceList":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    .local v0, "deviceCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 208
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    :cond_0
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 214
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v0

    return-object v0
.end method
