.class Landroid/net/dhcp/DhcpDiscoverPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpDiscoverPacket.java"


# direct methods
.method constructor <init>(I[BZ)V
    .locals 8
    .param p1, "transId"    # I
    .param p2, "clientMac"    # [B
    .param p3, "broadcast"    # Z

    .prologue
    .line 31
    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    sget-object v5, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Landroid/net/dhcp/DhcpPacket;-><init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[BZ)V

    .line 33
    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .locals 10
    .param p1, "encap"    # I
    .param p2, "destUdp"    # S
    .param p3, "srcUdp"    # S

    .prologue
    const/4 v7, 0x1

    .line 45
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 46
    .local v6, "result":Ljava/nio/ByteBuffer;
    sget-object v9, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    .line 48
    .local v9, "destIp":Ljava/net/InetAddress;
    sget-object v2, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/net/dhcp/DhcpDiscoverPacket;->fillInPacket(ILjava/net/InetAddress;Ljava/net/InetAddress;SSLjava/nio/ByteBuffer;BZ)V

    .line 50
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 51
    return-object v6
.end method

.method public doNextOp(Landroid/net/dhcp/DhcpStateMachine;)V
    .locals 4
    .param p1, "machine"    # Landroid/net/dhcp/DhcpStateMachine;

    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpDiscoverPacket;->mBroadcast:Z

    iget v1, p0, Landroid/net/dhcp/DhcpDiscoverPacket;->mTransId:I

    iget-object v2, p0, Landroid/net/dhcp/DhcpDiscoverPacket;->mClientMac:[B

    iget-object v3, p0, Landroid/net/dhcp/DhcpDiscoverPacket;->mRequestedParams:[B

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/net/dhcp/DhcpStateMachine;->onDiscoverReceived(ZI[B[B)V

    .line 70
    return-void
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 58
    const/16 v0, 0x35

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/dhcp/DhcpDiscoverPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 59
    const/16 v0, 0x37

    iget-object v1, p0, Landroid/net/dhcp/DhcpDiscoverPacket;->mRequestedParams:[B

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/dhcp/DhcpDiscoverPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 60
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpDiscoverPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DISCOVER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Landroid/net/dhcp/DhcpDiscoverPacket;->mBroadcast:Z

    if-eqz v1, :cond_0

    const-string v1, "broadcast "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "unicast "

    goto :goto_0
.end method
