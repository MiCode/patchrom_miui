.class public Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
.super Ljava/lang/Object;
.source "WifiP2pServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICE_TYPE_ALL:I = 0x0

.field public static final SERVICE_TYPE_BONJOUR:I = 0x1

.field public static final SERVICE_TYPE_UPNP:I = 0x2

.field public static final SERVICE_TYPE_VENDOR_SPECIFIC:I = 0xff

.field public static final SERVICE_TYPE_WS_DISCOVERY:I = 0x3


# instance fields
.field private mQueryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "queryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "query list cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iput-object p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    .line 99
    return-void
.end method

.method static bin2HexStr([B)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B

    .prologue
    .line 119
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    .local v6, "sb":Ljava/lang/StringBuffer;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-byte v1, v0, v3

    .line 122
    .local v1, "b":B
    const/4 v5, 0x0

    .line 124
    .local v5, "s":Ljava/lang/String;
    and-int/lit16 v7, v1, 0xff

    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 130
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 131
    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    :cond_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    const/4 v7, 0x0

    .line 135
    .end local v1    # "b":B
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "s":Ljava/lang/String;
    :goto_1
    return-object v7

    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 140
    if-ne p1, p0, :cond_0

    .line 141
    const/4 v1, 0x1

    .line 148
    :goto_0
    return v1

    .line 143
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    if-nez v1, :cond_1

    .line 144
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 147
    check-cast v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .line 148
    .local v0, "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    iget-object v2, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getSupplicantQueryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 153
    const/16 v0, 0x11

    .line 154
    .local v0, "result":I
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 155
    return v0

    .line 154
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 165
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 166
    return-void
.end method
