.class public Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;
.super Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
.source "WifiP2pUpnpServiceRequest.java"


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(ILjava/lang/String;)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(ILjava/lang/String;)V

    .line 41
    return-void
.end method

.method public static newInstance()Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;

    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;-><init>()V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;
    .locals 6
    .param p0, "st"    # Ljava/lang/String;

    .prologue
    .line 74
    if-nez p0, :cond_0

    .line 75
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "search target cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    .local v0, "sb":Ljava/lang/StringBuffer;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->bin2HexStr([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    new-instance v1, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
