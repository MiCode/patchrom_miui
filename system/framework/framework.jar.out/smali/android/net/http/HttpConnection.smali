.class Landroid/net/http/HttpConnection;
.super Landroid/net/http/Connection;
.source "HttpConnection.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lorg/apache/http/HttpHost;
    .param p3, "requestFeeder"    # Landroid/net/http/RequestFeeder;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/net/http/Connection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    .line 40
    return-void
.end method


# virtual methods
.method closeConnection()V
    .locals 2

    .prologue
    .line 74
    :try_start_0
    iget-object v1, p0, Landroid/net/http/HttpConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/http/HttpConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Landroid/net/http/HttpConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "http"

    return-object v0
.end method

.method openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;
    .locals 6
    .param p1, "req"    # Landroid/net/http/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/net/http/Request;->getEventHandler()Landroid/net/http/EventHandler;

    move-result-object v1

    .line 53
    .local v1, "eventHandler":Landroid/net/http/EventHandler;
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/net/http/HttpConnection;->mCertificate:Landroid/net/http/SslCertificate;

    .line 54
    iget-object v4, p0, Landroid/net/http/HttpConnection;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-interface {v1, v4}, Landroid/net/http/EventHandler;->certificate(Landroid/net/http/SslCertificate;)V

    .line 56
    new-instance v0, Landroid/net/http/AndroidHttpClientConnection;

    invoke-direct {v0}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V

    .line 57
    .local v0, "conn":Landroid/net/http/AndroidHttpClientConnection;
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 58
    .local v2, "params":Lorg/apache/http/params/BasicHttpParams;
    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Landroid/net/http/HttpConnection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/net/http/HttpConnection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 59
    .local v3, "sock":Ljava/net/Socket;
    const-string v4, "http.socket.buffer-size"

    const/16 v5, 0x2000

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 60
    invoke-virtual {v0, v3, v2}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 61
    return-object v0
.end method

.method restartConnection(Z)V
    .locals 0
    .param p1, "abort"    # Z

    .prologue
    .line 90
    return-void
.end method
