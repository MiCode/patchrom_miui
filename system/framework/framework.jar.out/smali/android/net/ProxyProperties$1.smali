.class final Landroid/net/ProxyProperties$1;
.super Ljava/lang/Object;
.source "ProxyProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ProxyProperties;
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
        "Landroid/net/ProxyProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ProxyProperties;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 256
    const/4 v1, 0x0

    .line 257
    .local v1, "host":Ljava/lang/String;
    const/4 v2, 0x0

    .line 258
    .local v2, "port":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-eqz v5, :cond_0

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 260
    .local v7, "url":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 261
    .local v6, "localPort":I
    new-instance v0, Landroid/net/ProxyProperties;

    invoke-direct {v0, v7, v6}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;I)V

    .line 271
    .end local v6    # "localPort":I
    .end local v7    # "url":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 263
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-eqz v5, :cond_1

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 267
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "exclList":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, "parsedExclList":[Ljava/lang/String;
    new-instance v0, Landroid/net/ProxyProperties;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Landroid/net/ProxyProperties$1;)V

    .line 271
    .local v0, "proxyProperties":Landroid/net/ProxyProperties;
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Landroid/net/ProxyProperties$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ProxyProperties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/ProxyProperties;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 275
    new-array v0, p1, [Landroid/net/ProxyProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Landroid/net/ProxyProperties$1;->newArray(I)[Landroid/net/ProxyProperties;

    move-result-object v0

    return-object v0
.end method
