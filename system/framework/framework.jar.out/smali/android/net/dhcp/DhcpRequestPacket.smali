.class Landroid/net/dhcp/DhcpRequestPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpRequestPacket.java"


# direct methods
.method constructor <init>(ILjava/net/InetAddress;[BZ)V
    .locals 8
    .param p1, "transId"    # I
    .param p2, "clientIp"    # Ljava/net/InetAddress;
    .param p3, "clientMac"    # [B
    .param p4, "broadcast"    # Z

    .prologue
    .line 34
    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    sget-object v5, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/net/dhcp/DhcpPacket;-><init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[BZ)V

    .line 36
    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .locals 9
    .param p1, "encap"    # I
    .param p2, "destUdp"    # S
    .param p3, "srcUdp"    # S

    .prologue
    .line 49
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 51
    .local v6, "result":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/4 v7, 0x1

    iget-boolean v8, p0, Landroid/net/dhcp/DhcpRequestPacket;->mBroadcast:Z

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v8}, Landroid/net/dhcp/DhcpRequestPacket;->fillInPacket(ILjava/net/InetAddress;Ljava/net/InetAddress;SSLjava/nio/ByteBuffer;BZ)V

    .line 53
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 54
    return-object v6
.end method

.method public doNextOp(Landroid/net/dhcp/DhcpStateMachine;)V
    .locals 7
    .param p1, "machine"    # Landroid/net/dhcp/DhcpStateMachine;

    .prologue
    .line 79
    iget-object v0, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedIp:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    iget-object v4, p0, Landroid/net/dhcp/DhcpRequestPacket;->mClientIp:Ljava/net/InetAddress;

    .line 81
    .local v4, "clientRequest":Ljava/net/InetAddress;
    :goto_0
    const-string v0, "DhcpPacket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requested IP is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedIp:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and client IP is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/dhcp/DhcpRequestPacket;->mClientIp:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-boolean v1, p0, Landroid/net/dhcp/DhcpRequestPacket;->mBroadcast:Z

    iget v2, p0, Landroid/net/dhcp/DhcpRequestPacket;->mTransId:I

    iget-object v3, p0, Landroid/net/dhcp/DhcpRequestPacket;->mClientMac:[B

    iget-object v5, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedParams:[B

    iget-object v6, p0, Landroid/net/dhcp/DhcpRequestPacket;->mHostName:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Landroid/net/dhcp/DhcpStateMachine;->onRequestReceived(ZI[BLjava/net/InetAddress;[BLjava/lang/String;)V

    .line 85
    return-void

    .line 79
    .end local v4    # "clientRequest":Ljava/net/InetAddress;
    :cond_0
    iget-object v4, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedIp:Ljava/net/InetAddress;

    goto :goto_0
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    const/4 v1, 0x7

    new-array v0, v1, [B

    .line 64
    .local v0, "clientId":[B
    aput-byte v4, v0, v3

    .line 65
    iget-object v1, p0, Landroid/net/dhcp/DhcpRequestPacket;->mClientMac:[B

    const/4 v2, 0x6

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    const/16 v1, 0x35

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v1, v2}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 68
    const/16 v1, 0x37

    iget-object v2, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedParams:[B

    invoke-virtual {p0, p1, v1, v2}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 69
    const/16 v1, 0x32

    iget-object v2, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedIp:Ljava/net/InetAddress;

    invoke-virtual {p0, p1, v1, v2}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/InetAddress;)V

    .line 70
    const/16 v1, 0x36

    iget-object v2, p0, Landroid/net/dhcp/DhcpRequestPacket;->mServerIdentifier:Ljava/net/InetAddress;

    invoke-virtual {p0, p1, v1, v2}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/InetAddress;)V

    .line 71
    const/16 v1, 0x3d

    invoke-virtual {p0, p1, v1, v0}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 72
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpRequestPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 39
    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " REQUEST, desired IP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedIp:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from host \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/dhcp/DhcpRequestPacket;->mHostName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', param list length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedParams:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/net/dhcp/DhcpRequestPacket;->mRequestedParams:[B

    array-length v1, v1

    goto :goto_0
.end method
