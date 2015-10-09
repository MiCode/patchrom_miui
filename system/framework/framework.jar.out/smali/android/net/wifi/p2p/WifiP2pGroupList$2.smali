.class final Landroid/net/wifi/p2p/WifiP2pGroupList$2;
.super Ljava/lang/Object;
.source "WifiP2pGroupList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pGroupList;
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
        "Landroid/net/wifi/p2p/WifiP2pGroupList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pGroupList;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 224
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pGroupList;-><init>()V

    .line 226
    .local v1, "grpList":Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 227
    .local v0, "deviceCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 228
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pGroupList;->add(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    :cond_0
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroupList$2;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pGroupList;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 234
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pGroupList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroupList$2;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object v0

    return-object v0
.end method
