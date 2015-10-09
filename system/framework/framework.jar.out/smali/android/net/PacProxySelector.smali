.class public Landroid/net/PacProxySelector;
.super Ljava/net/ProxySelector;
.source "PacProxySelector.java"


# static fields
.field public static final PROXY_SERVICE:Ljava/lang/String; = "com.android.net.IProxyService"

.field private static final TAG:Ljava/lang/String; = "PacProxySelector"


# instance fields
.field private final mDefaultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private mProxyService:Lcom/android/net/IProxyService;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    .line 46
    const-string v0, "com.android.net.IProxyService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/net/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;

    move-result-object v0

    iput-object v0, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    .line 48
    iget-object v0, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    if-nez v0, :cond_0

    .line 50
    const-string v0, "PacProxySelector"

    const-string v1, "PacManager: no proxy service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/Proxy;

    const/4 v1, 0x0

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/net/PacProxySelector;->mDefaultList:Ljava/util/List;

    .line 53
    return-void
.end method

.method private static parseResponse(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p0, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    const-string v11, ";"

    invoke-virtual {p0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, "split":[Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 87
    .local v7, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v8, v0, v4

    .line 88
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 89
    .local v10, "trimmed":Ljava/lang/String;
    const-string v11, "DIRECT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 90
    sget-object v11, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    :cond_1
    const-string v11, "PROXY "

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 92
    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "hostPort":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v2, v3, v11

    .line 96
    .local v2, "host":Ljava/lang/String;
    const/4 v11, 0x1

    :try_start_0
    aget-object v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 100
    .local v6, "port":I
    :goto_2
    new-instance v11, Ljava/net/Proxy;

    sget-object v12, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-static {v2, v6}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    .end local v6    # "port":I
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    const/16 v6, 0x1f90

    .restart local v6    # "port":I
    goto :goto_2

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "hostPort":[Ljava/lang/String;
    .end local v6    # "port":I
    .end local v8    # "s":Ljava/lang/String;
    .end local v10    # "trimmed":Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_3

    .line 104
    sget-object v11, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_3
    return-object v7
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "address"    # Ljava/net/SocketAddress;
    .param p3, "failure"    # Ljava/io/IOException;

    .prologue
    .line 112
    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .locals 6
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v3, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    if-nez v3, :cond_0

    .line 58
    const-string v3, "com.android.net.IProxyService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/net/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;

    move-result-object v3

    iput-object v3, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    .line 61
    :cond_0
    iget-object v3, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    if-nez v3, :cond_1

    .line 62
    const-string v3, "PacProxySelector"

    const-string/jumbo v4, "select: no proxy service return NO_PROXY"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/net/Proxy;

    const/4 v4, 0x0

    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 81
    :goto_0
    return-object v3

    .line 65
    :cond_1
    const/4 v1, 0x0

    .line 68
    .local v1, "response":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 73
    .local v2, "urlString":Ljava/lang/String;
    :goto_1
    :try_start_1
    iget-object v3, p0, Landroid/net/PacProxySelector;->mProxyService:Lcom/android/net/IProxyService;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/android/net/IProxyService;->resolvePacFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 77
    :goto_2
    if-nez v1, :cond_2

    .line 78
    iget-object v3, p0, Landroid/net/PacProxySelector;->mDefaultList:Ljava/util/List;

    goto :goto_0

    .line 69
    .end local v2    # "urlString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "urlString":Ljava/lang/String;
    goto :goto_1

    .line 74
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 81
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-static {v1}, Landroid/net/PacProxySelector;->parseResponse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto :goto_0
.end method
