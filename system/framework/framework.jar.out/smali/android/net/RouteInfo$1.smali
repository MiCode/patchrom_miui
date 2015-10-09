.class final Landroid/net/RouteInfo$1;
.super Ljava/lang/Object;
.source "RouteInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/RouteInfo;
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
        "Landroid/net/RouteInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/RouteInfo;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x1

    .line 246
    const/4 v2, 0x0

    .line 247
    .local v2, "destAddr":Ljava/net/InetAddress;
    const/4 v5, 0x0

    .line 248
    .local v5, "prefix":I
    const/4 v3, 0x0

    .line 250
    .local v3, "gateway":Ljava/net/InetAddress;
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-ne v6, v7, :cond_0

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 252
    .local v0, "addr":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 255
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 259
    .end local v0    # "addr":[B
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-ne v6, v7, :cond_1

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 263
    .restart local v0    # "addr":[B
    :try_start_1
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 267
    .end local v0    # "addr":[B
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, "iface":Ljava/lang/String;
    const/4 v1, 0x0

    .line 271
    .local v1, "dest":Landroid/net/LinkAddress;
    if-eqz v2, :cond_2

    .line 272
    new-instance v1, Landroid/net/LinkAddress;

    .end local v1    # "dest":Landroid/net/LinkAddress;
    invoke-direct {v1, v2, v5}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 275
    .restart local v1    # "dest":Landroid/net/LinkAddress;
    :cond_2
    new-instance v6, Landroid/net/RouteInfo;

    invoke-direct {v6, v1, v3, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    return-object v6

    .line 256
    .end local v1    # "dest":Landroid/net/LinkAddress;
    .end local v4    # "iface":Ljava/lang/String;
    .restart local v0    # "addr":[B
    :catch_0
    move-exception v6

    goto :goto_0

    .line 264
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Landroid/net/RouteInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/RouteInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 279
    new-array v0, p1, [Landroid/net/RouteInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Landroid/net/RouteInfo$1;->newArray(I)[Landroid/net/RouteInfo;

    move-result-object v0

    return-object v0
.end method
