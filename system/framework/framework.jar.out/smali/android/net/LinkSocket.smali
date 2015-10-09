.class public Landroid/net/LinkSocket;
.super Ljava/net/Socket;
.source "LinkSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LinkSocket$LinkRequestReason;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "LinkSocket"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 42
    const-string v0, "LinkSocket() EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/net/LinkSocketNotifier;)V
    .locals 1
    .param p1, "notifier"    # Landroid/net/LinkSocketNotifier;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 50
    const-string v0, "LinkSocket(notifier) EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/net/LinkSocketNotifier;Landroid/net/Proxy;)V
    .locals 1
    .param p1, "notifier"    # Landroid/net/LinkSocketNotifier;
    .param p2, "proxy"    # Landroid/net/Proxy;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 62
    const-string v0, "LinkSocket(notifier, proxy) EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 274
    const-string v0, "LinkSocket"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "localAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 252
    const-string v0, "bind(localAddr) EX throws IOException"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 253
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "bind is deprecated for LinkSocket"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    const-string v0, "close() EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    const-string v0, "connect() EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public connect(I)V
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    const-string v0, "connect(timeout) EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 1
    .param p1, "dstName"    # Ljava/lang/String;
    .param p2, "dstPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    const-string v0, "connect(dstName, dstPort, timeout) EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public connect(Ljava/lang/String;II)V
    .locals 1
    .param p1, "dstName"    # Ljava/lang/String;
    .param p2, "dstPort"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 145
    const-string v0, "connect(dstName, dstPort, timeout) EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "remoteAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    const-string v0, "connect(remoteAddr) EX DEPRECATED"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 1
    .param p1, "remoteAddr"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 177
    const-string v0, "connect(remoteAddr, timeout) EX DEPRECATED"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public getCapabilities()Landroid/net/LinkCapabilities;
    .locals 1

    .prologue
    .line 98
    const-string v0, "getCapabilities() EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCapabilities(Ljava/util/Set;)Landroid/net/LinkCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/LinkCapabilities;"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "capabilities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string v0, "getCapabilities(capabilities) EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 112
    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 1

    .prologue
    .line 69
    const-string v0, "LinkProperties() EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 70
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    return-object v0
.end method

.method public getNeededCapabilities()Landroid/net/LinkCapabilities;
    .locals 1

    .prologue
    .line 90
    const-string v0, "getNeeds() EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackedCapabilities()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    const-string v0, "getTrackedCapabilities(capabilities) EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public requestNewLink(Landroid/net/LinkSocket$LinkRequestReason;)V
    .locals 1
    .param p1, "linkRequestReason"    # Landroid/net/LinkSocket$LinkRequestReason;

    .prologue
    .line 239
    const-string/jumbo v0, "requestNewLink(linkRequestReason) EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public setNeededCapabilities(Landroid/net/LinkCapabilities;)Z
    .locals 1
    .param p1, "needs"    # Landroid/net/LinkCapabilities;

    .prologue
    .line 82
    const-string/jumbo v0, "setNeeds() EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public setTrackedCapabilities(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "capabilities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string/jumbo v0, "setTrackedCapabilities(capabilities) EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 122
    return-void
.end method
