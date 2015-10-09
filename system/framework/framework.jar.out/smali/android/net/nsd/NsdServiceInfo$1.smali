.class final Landroid/net/nsd/NsdServiceInfo$1;
.super Ljava/lang/Object;
.source "NsdServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdServiceInfo;
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
        "Landroid/net/nsd/NsdServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/nsd/NsdServiceInfo;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 134
    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 135
    .local v0, "info":Landroid/net/nsd/NsdServiceInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->access$002(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->access$102(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/nsd/DnsSdTxtRecord;

    # setter for: Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/net/nsd/DnsSdTxtRecord;
    invoke-static {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->access$202(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/DnsSdTxtRecord;)Landroid/net/nsd/DnsSdTxtRecord;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 141
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    # setter for: Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;
    invoke-static {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->access$302(Landroid/net/nsd/NsdServiceInfo;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/net/nsd/NsdServiceInfo;->mPort:I
    invoke-static {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->access$402(Landroid/net/nsd/NsdServiceInfo;I)I

    .line 146
    return-object v0

    .line 142
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Landroid/net/nsd/NsdServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/nsd/NsdServiceInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 150
    new-array v0, p1, [Landroid/net/nsd/NsdServiceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Landroid/net/nsd/NsdServiceInfo$1;->newArray(I)[Landroid/net/nsd/NsdServiceInfo;

    move-result-object v0

    return-object v0
.end method
