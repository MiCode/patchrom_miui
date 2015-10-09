.class interface abstract Landroid/net/dhcp/DhcpStateMachine;
.super Ljava/lang/Object;
.source "DhcpStateMachine.java"


# virtual methods
.method public abstract onAckReceived(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/util/List;Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "Ljava/net/InetAddress;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/net/InetAddress;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract onDeclineReceived([BLjava/net/InetAddress;)V
.end method

.method public abstract onDiscoverReceived(ZI[B[B)V
.end method

.method public abstract onInformReceived(I[BLjava/net/InetAddress;[B)V
.end method

.method public abstract onNakReceived()V
.end method

.method public abstract onOfferReceived(ZI[BLjava/net/InetAddress;Ljava/net/InetAddress;)V
.end method

.method public abstract onRequestReceived(ZI[BLjava/net/InetAddress;[BLjava/lang/String;)V
.end method
