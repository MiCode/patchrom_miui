.class Landroid/net/dhcp/DhcpInformPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpInformPacket.java"


# direct methods
.method constructor <init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[B)V
    .locals 8
    .param p1, "transId"    # I
    .param p2, "clientIp"    # Ljava/net/InetAddress;
    .param p3, "yourIp"    # Ljava/net/InetAddress;
    .param p4, "nextIp"    # Ljava/net/InetAddress;
    .param p5, "relayIp"    # Ljava/net/InetAddress;
    .param p6, "clientMac"    # [B

    .prologue
    .line 32
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/net/dhcp/DhcpPacket;-><init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[BZ)V

    .line 33
    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .locals 9
    .param p1, "encap"    # I
    .param p2, "destUdp"    # S
    .param p3, "srcUdp"    # S

    .prologue
    .line 44
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 46
    .local v6, "result":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Landroid/net/dhcp/DhcpInformPacket;->mClientIp:Ljava/net/InetAddress;

    iget-object v3, p0, Landroid/net/dhcp/DhcpInformPacket;->mYourIp:Ljava/net/InetAddress;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v8}, Landroid/net/dhcp/DhcpInformPacket;->fillInPacket(ILjava/net/InetAddress;Ljava/net/InetAddress;SSLjava/nio/ByteBuffer;BZ)V

    .line 48
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 49
    return-object v6
.end method

.method public doNextOp(Landroid/net/dhcp/DhcpStateMachine;)V
    .locals 4
    .param p1, "machine"    # Landroid/net/dhcp/DhcpStateMachine;

    .prologue
    .line 71
    iget-object v1, p0, Landroid/net/dhcp/DhcpInformPacket;->mRequestedIp:Ljava/net/InetAddress;

    if-nez v1, :cond_0

    iget-object v0, p0, Landroid/net/dhcp/DhcpInformPacket;->mClientIp:Ljava/net/InetAddress;

    .line 73
    .local v0, "clientRequest":Ljava/net/InetAddress;
    :goto_0
    iget v1, p0, Landroid/net/dhcp/DhcpInformPacket;->mTransId:I

    iget-object v2, p0, Landroid/net/dhcp/DhcpInformPacket;->mClientMac:[B

    iget-object v3, p0, Landroid/net/dhcp/DhcpInformPacket;->mRequestedParams:[B

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/net/dhcp/DhcpStateMachine;->onInformReceived(I[BLjava/net/InetAddress;[B)V

    .line 75
    return-void

    .line 71
    .end local v0    # "clientRequest":Ljava/net/InetAddress;
    :cond_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpInformPacket;->mRequestedIp:Ljava/net/InetAddress;

    goto :goto_0
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    const/4 v1, 0x7

    new-array v0, v1, [B

    .line 58
    .local v0, "clientId":[B
    aput-byte v4, v0, v3

    .line 59
    iget-object v1, p0, Landroid/net/dhcp/DhcpInformPacket;->mClientMac:[B

    const/4 v2, 0x6

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    const/16 v1, 0x35

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v1, v2}, Landroid/net/dhcp/DhcpInformPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 62
    const/16 v1, 0x37

    iget-object v2, p0, Landroid/net/dhcp/DhcpInformPacket;->mRequestedParams:[B

    invoke-virtual {p0, p1, v1, v2}, Landroid/net/dhcp/DhcpInformPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 63
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpInformPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    .line 64
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

    const-string v2, " INFORM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
