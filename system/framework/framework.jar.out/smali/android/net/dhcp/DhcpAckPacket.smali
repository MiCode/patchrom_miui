.class Landroid/net/dhcp/DhcpAckPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpAckPacket.java"


# instance fields
.field private final mSrcIp:Ljava/net/InetAddress;


# direct methods
.method constructor <init>(IZLjava/net/InetAddress;Ljava/net/InetAddress;[B)V
    .locals 8
    .param p1, "transId"    # I
    .param p2, "broadcast"    # Z
    .param p3, "serverAddress"    # Ljava/net/InetAddress;
    .param p4, "clientIp"    # Ljava/net/InetAddress;
    .param p5, "clientMac"    # [B

    .prologue
    .line 36
    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    sget-object v5, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    move-object v0, p0

    move v1, p1

    move-object v3, p4

    move-object v4, p3

    move-object v6, p5

    move v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/net/dhcp/DhcpPacket;-><init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[BZ)V

    .line 38
    iput-boolean p2, p0, Landroid/net/dhcp/DhcpAckPacket;->mBroadcast:Z

    .line 39
    iput-object p3, p0, Landroid/net/dhcp/DhcpAckPacket;->mSrcIp:Ljava/net/InetAddress;

    .line 40
    return-void
.end method

.method private static final getInt(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "v"    # Ljava/lang/Integer;

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .locals 9
    .param p1, "encap"    # I
    .param p2, "destUdp"    # S
    .param p3, "srcUdp"    # S

    .prologue
    .line 60
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 61
    .local v6, "result":Ljava/nio/ByteBuffer;
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpAckPacket;->mBroadcast:Z

    if-eqz v0, :cond_0

    sget-object v2, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    .line 62
    .local v2, "destIp":Ljava/net/InetAddress;
    :goto_0
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpAckPacket;->mBroadcast:Z

    if-eqz v0, :cond_1

    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 64
    .local v3, "srcIp":Ljava/net/InetAddress;
    :goto_1
    const/4 v7, 0x2

    iget-boolean v8, p0, Landroid/net/dhcp/DhcpAckPacket;->mBroadcast:Z

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v8}, Landroid/net/dhcp/DhcpAckPacket;->fillInPacket(ILjava/net/InetAddress;Ljava/net/InetAddress;SSLjava/nio/ByteBuffer;BZ)V

    .line 66
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 67
    return-object v6

    .line 61
    .end local v2    # "destIp":Ljava/net/InetAddress;
    .end local v3    # "srcIp":Ljava/net/InetAddress;
    :cond_0
    iget-object v2, p0, Landroid/net/dhcp/DhcpAckPacket;->mYourIp:Ljava/net/InetAddress;

    goto :goto_0

    .line 62
    .restart local v2    # "destIp":Ljava/net/InetAddress;
    :cond_1
    iget-object v3, p0, Landroid/net/dhcp/DhcpAckPacket;->mSrcIp:Ljava/net/InetAddress;

    goto :goto_1
.end method

.method public doNextOp(Landroid/net/dhcp/DhcpStateMachine;)V
    .locals 7
    .param p1, "machine"    # Landroid/net/dhcp/DhcpStateMachine;

    .prologue
    .line 107
    iget-object v1, p0, Landroid/net/dhcp/DhcpAckPacket;->mYourIp:Ljava/net/InetAddress;

    iget-object v2, p0, Landroid/net/dhcp/DhcpAckPacket;->mSubnetMask:Ljava/net/InetAddress;

    iget-object v3, p0, Landroid/net/dhcp/DhcpAckPacket;->mGateway:Ljava/net/InetAddress;

    iget-object v4, p0, Landroid/net/dhcp/DhcpAckPacket;->mDnsServers:Ljava/util/List;

    iget-object v5, p0, Landroid/net/dhcp/DhcpAckPacket;->mServerIdentifier:Ljava/net/InetAddress;

    iget-object v0, p0, Landroid/net/dhcp/DhcpAckPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-static {v0}, Landroid/net/dhcp/DhcpAckPacket;->getInt(Ljava/lang/Integer;)I

    move-result v6

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Landroid/net/dhcp/DhcpStateMachine;->onAckReceived(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/util/List;Ljava/net/InetAddress;I)V

    .line 109
    return-void
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 74
    const/16 v0, 0x35

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 75
    const/16 v0, 0x36

    iget-object v1, p0, Landroid/net/dhcp/DhcpAckPacket;->mServerIdentifier:Ljava/net/InetAddress;

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/InetAddress;)V

    .line 76
    const/16 v0, 0x33

    iget-object v1, p0, Landroid/net/dhcp/DhcpAckPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    .line 79
    iget-object v0, p0, Landroid/net/dhcp/DhcpAckPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 80
    const/16 v0, 0x3a

    iget-object v1, p0, Landroid/net/dhcp/DhcpAckPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    .line 84
    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/net/dhcp/DhcpAckPacket;->mSubnetMask:Ljava/net/InetAddress;

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/InetAddress;)V

    .line 85
    const/4 v0, 0x3

    iget-object v1, p0, Landroid/net/dhcp/DhcpAckPacket;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/InetAddress;)V

    .line 86
    const/16 v0, 0xf

    iget-object v1, p0, Landroid/net/dhcp/DhcpAckPacket;->mDomainName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 87
    const/16 v0, 0x1c

    iget-object v1, p0, Landroid/net/dhcp/DhcpAckPacket;->mBroadcastAddress:Ljava/net/InetAddress;

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/InetAddress;)V

    .line 88
    const/4 v0, 0x6

    iget-object v1, p0, Landroid/net/dhcp/DhcpAckPacket;->mDnsServers:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/dhcp/DhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V

    .line 89
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpAckPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 43
    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "s":Ljava/lang/String;
    const-string v1, " DNS servers: "

    .line 46
    .local v1, "dnsServers":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/dhcp/DhcpAckPacket;->mDnsServers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 47
    .local v0, "dnsServer":Ljava/net/InetAddress;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 50
    .end local v0    # "dnsServer":Ljava/net/InetAddress;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ACK: your new IP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/dhcp/DhcpAckPacket;->mYourIp:Ljava/net/InetAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", netmask "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/dhcp/DhcpAckPacket;->mSubnetMask:Ljava/net/InetAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", gateway "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/dhcp/DhcpAckPacket;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lease time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/dhcp/DhcpAckPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
