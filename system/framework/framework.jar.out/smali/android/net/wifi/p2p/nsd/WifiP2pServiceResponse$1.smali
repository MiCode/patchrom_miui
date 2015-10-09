.class final Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;
.super Ljava/lang/Object;
.source "WifiP2pServiceResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
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
        "Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 366
    .local v1, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 367
    .local v2, "status":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 368
    .local v3, "transId":I
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 369
    .local v4, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 370
    .local v6, "len":I
    const/4 v5, 0x0

    .line 371
    .local v5, "data":[B
    if-lez v6, :cond_0

    .line 372
    new-array v5, v6, [B

    .line 373
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    .line 375
    :cond_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 376
    invoke-static {v2, v3, v4, v5}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    .line 378
    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    .line 379
    invoke-static {v2, v3, v4, v5}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_2
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;-><init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 386
    new-array v0, p1, [Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;->newArray(I)[Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    move-result-object v0

    return-object v0
.end method
