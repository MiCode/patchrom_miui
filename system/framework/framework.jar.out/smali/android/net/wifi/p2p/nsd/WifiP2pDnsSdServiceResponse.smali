.class public Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;
.super Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
.source "WifiP2pDnsSdServiceResponse.java"


# static fields
.field private static final sVmpack:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDnsQueryName:Ljava/lang/String;

.field private mDnsType:I

.field private mInstanceName:Ljava/lang/String;

.field private final mTxtRecord:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->sVmpack:Ljava/util/Map;

    .line 82
    sget-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->sVmpack:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_tcp.local."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->sVmpack:Ljava/util/Map;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "local."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->sVmpack:Ljava/util/Map;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_udp.local."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method protected constructor <init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "tranId"    # I
    .param p3, "dev"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p4, "data"    # [B

    .prologue
    .line 154
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;-><init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    .line 156
    invoke-direct {p0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->parse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Malformed bonjour service response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    return-void
.end method

.method static newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;
    .locals 3
    .param p0, "status"    # I
    .param p1, "transId"    # I
    .param p2, "dev"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p3, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 297
    if-eqz p0, :cond_0

    .line 298
    new-instance v1, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    invoke-direct {v1, p0, p1, p2, v2}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;-><init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    .line 307
    :goto_0
    return-object v1

    .line 302
    :cond_0
    :try_start_0
    new-instance v1, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;-><init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v1, v2

    .line 307
    goto :goto_0
.end method

.method private parse()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 176
    iget-object v5, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mData:[B

    if-nez v5, :cond_0

    .line 213
    :goto_0
    return v3

    .line 181
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mData:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 183
    .local v0, "dis":Ljava/io/DataInputStream;
    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->readDnsName(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    .line 184
    iget-object v5, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    if-nez v5, :cond_1

    move v3, v4

    .line 185
    goto :goto_0

    .line 189
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    iput v5, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsType:I

    .line 190
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    iput v5, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mVersion:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    iget v5, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsType:I

    const/16 v6, 0xc

    if-ne v5, v6, :cond_4

    .line 197
    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->readDnsName(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "rData":Ljava/lang/String;
    if-nez v2, :cond_2

    move v3, v4

    .line 199
    goto :goto_0

    .line 191
    .end local v2    # "rData":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v3, v4

    .line 193
    goto :goto_0

    .line 201
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "rData":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_3

    move v3, v4

    .line 202
    goto :goto_0

    .line 205
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mInstanceName:Ljava/lang/String;

    goto :goto_0

    .line 207
    .end local v2    # "rData":Ljava/lang/String;
    :cond_4
    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsType:I

    const/16 v5, 0x10

    if-ne v3, v5, :cond_5

    .line 208
    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->readTxtData(Ljava/io/DataInputStream;)Z

    move-result v3

    goto :goto_0

    :cond_5
    move v3, v4

    .line 210
    goto :goto_0
.end method

.method private readDnsName(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 9
    .param p1, "dis"    # Ljava/io/DataInputStream;

    .prologue
    const/4 v6, 0x0

    .line 223
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 226
    .local v4, "sb":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/util/HashMap;

    sget-object v7, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->sVmpack:Ljava/util/Map;

    invoke-direct {v5, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 227
    .local v5, "vmpack":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v7, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 228
    const/16 v7, 0x27

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    .line 233
    .local v2, "i":I
    if-nez v2, :cond_2

    .line 234
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 254
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-object v6

    .line 235
    .restart local v2    # "i":I
    :cond_2
    const/16 v7, 0xc0

    if-ne v2, v7, :cond_3

    .line 237
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 238
    .local v3, "ref":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 242
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 245
    .end local v3    # "ref":Ljava/lang/String;
    :cond_3
    new-array v0, v2, [B

    .line 246
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 247
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    const-string v7, "."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    .end local v0    # "data":[B
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private readTxtData(Ljava/io/DataInputStream;)Z
    .locals 9
    .param p1, "dis"    # Ljava/io/DataInputStream;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 265
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    move-result v6

    if-lez v6, :cond_0

    .line 266
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    .line 267
    .local v3, "len":I
    if-nez v3, :cond_2

    .end local v3    # "len":I
    :cond_0
    move v4, v5

    .line 282
    :cond_1
    :goto_1
    return v4

    .line 270
    .restart local v3    # "len":I
    :cond_2
    new-array v0, v3, [B

    .line 271
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 272
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "keyVal":[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 276
    iget-object v6, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    const/4 v7, 0x0

    aget-object v7, v2, v7

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    .end local v0    # "data":[B
    .end local v2    # "keyVal":[Ljava/lang/String;
    .end local v3    # "len":I
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getDnsQueryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    return-object v0
.end method

.method public getDnsType()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsType:I

    return v0
.end method

.method public getInstanceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mInstanceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTxtRecord()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mVersion:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 129
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "serviceType:DnsSd("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mServiceType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v3, " status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mStatus:I

    invoke-static {v4}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const-string v3, " srcAddr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string v3, " version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mVersion:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const-string v3, " dnsName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const-string v3, " TxtRecord:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    .local v1, "key":Ljava/lang/String;
    const-string v3, " key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 139
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mInstanceName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 140
    const-string v3, " InsName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mInstanceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
