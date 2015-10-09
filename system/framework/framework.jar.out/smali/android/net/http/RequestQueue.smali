.class public Landroid/net/http/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Landroid/net/http/RequestFeeder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/RequestQueue$ConnectionManager;,
        Landroid/net/http/RequestQueue$SyncFeeder;,
        Landroid/net/http/RequestQueue$ActivePool;
    }
.end annotation


# static fields
.field private static final CONNECTION_COUNT:I = 0x4


# instance fields
.field private final mActivePool:Landroid/net/http/RequestQueue$ActivePool;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mPending:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/http/HttpHost;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/Request;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mProxyHost:Lorg/apache/http/HttpHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/net/http/RequestQueue;-><init>(Landroid/content/Context;I)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectionCount"    # I

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    .line 213
    iput-object p1, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    .line 215
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    .line 217
    new-instance v0, Landroid/net/http/RequestQueue$ActivePool;

    invoke-direct {v0, p0, p2}, Landroid/net/http/RequestQueue$ActivePool;-><init>(Landroid/net/http/RequestQueue;I)V

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    .line 218
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->startup()V

    .line 220
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 222
    return-void
.end method

.method static synthetic access$000(Landroid/net/http/RequestQueue;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/net/http/RequestQueue;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/http/RequestQueue;)Lorg/apache/http/HttpHost;
    .locals 1
    .param p0, "x0"    # Landroid/net/http/RequestQueue;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/http/RequestQueue;Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;
    .locals 1
    .param p0, "x0"    # Landroid/net/http/RequestQueue;
    .param p1, "x1"    # Lorg/apache/http/HttpHost;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/net/http/RequestQueue;->determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/http/RequestQueue;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/http/RequestQueue;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/net/http/RequestQueue;->setProxyConfig()V

    return-void
.end method

.method private determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;
    .locals 2
    .param p1, "host"    # Lorg/apache/http/HttpHost;

    .prologue
    .line 404
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .end local p1    # "host":Lorg/apache/http/HttpHost;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "host":Lorg/apache/http/HttpHost;
    :cond_1
    iget-object p1, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    goto :goto_0
.end method

.method private removeFirst(Ljava/util/LinkedHashMap;)Landroid/net/http/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/http/HttpHost;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/Request;",
            ">;>;)",
            "Landroid/net/http/Request;"
        }
    .end annotation

    .prologue
    .line 525
    .local p1, "requestQueue":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    const/4 v3, 0x0

    .line 526
    .local v3, "ret":Landroid/net/http/Request;
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 527
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 528
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 529
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 530
    .local v2, "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ret":Landroid/net/http/Request;
    check-cast v3, Landroid/net/http/Request;

    .line 531
    .restart local v3    # "ret":Landroid/net/http/Request;
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 532
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v2    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_0
    return-object v3
.end method

.method private declared-synchronized setProxyConfig()V
    .locals 5

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 264
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 265
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :goto_0
    monitor-exit p0

    return-void

    .line 267
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "host":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 270
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 263
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 272
    .restart local v0    # "host":Ljava/lang/String;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v2}, Landroid/net/http/RequestQueue$ActivePool;->disablePersistence()V

    .line 273
    new-instance v2, Lorg/apache/http/HttpHost;

    iget-object v3, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v3

    const-string v4, "http"

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized disablePlatformNotifications()V
    .locals 2

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :cond_0
    monitor-exit p0

    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized dump()V
    .locals 12

    .prologue
    .line 420
    monitor-enter p0

    :try_start_0
    const-string v10, "dump()"

    invoke-static {v10}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .local v2, "dump":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 427
    .local v0, "count":I
    iget-object v10, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 428
    iget-object v10, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    move v1, v0

    .line 429
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 430
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 431
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/HttpHost;

    invoke-virtual {v10}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    .line 432
    .local v4, "hostName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "p"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 434
    .local v6, "line":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/LinkedList;

    .line 435
    .local v8, "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v7

    .line 436
    .local v7, "reqIter":Ljava/util/ListIterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 437
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/http/Request;

    .line 438
    .local v9, "request":Landroid/net/http/Request;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 420
    .end local v0    # "count":I
    .end local v2    # "dump":Ljava/lang/StringBuilder;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v4    # "hostName":Ljava/lang/String;
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    .end local v6    # "line":Ljava/lang/StringBuilder;
    .end local v7    # "reqIter":Ljava/util/ListIterator;
    .end local v8    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    .end local v9    # "request":Landroid/net/http/Request;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 440
    .restart local v0    # "count":I
    .restart local v2    # "dump":Ljava/lang/StringBuilder;
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .restart local v4    # "hostName":Ljava/lang/String;
    .restart local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    .restart local v6    # "line":Ljava/lang/StringBuilder;
    .restart local v7    # "reqIter":Ljava/util/ListIterator;
    .restart local v8    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 441
    const-string v10, "\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 442
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v4    # "hostName":Ljava/lang/String;
    .end local v6    # "line":Ljava/lang/StringBuilder;
    .end local v7    # "reqIter":Ljava/util/ListIterator;
    .end local v8    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_1
    move v0, v1

    .line 444
    .end local v1    # "count":I
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    .restart local v0    # "count":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized enablePlatformNotifications()V
    .locals 4

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Landroid/net/http/RequestQueue$1;

    invoke-direct {v0, p0}, Landroid/net/http/RequestQueue$1;-><init>(Landroid/net/http/RequestQueue;)V

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 242
    :cond_0
    invoke-direct {p0}, Landroid/net/http/RequestQueue;->setProxyConfig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProxyHost()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public declared-synchronized getRequest()Landroid/net/http/Request;
    .locals 2

    .prologue
    .line 451
    monitor-enter p0

    const/4 v0, 0x0

    .line 453
    .local v0, "ret":Landroid/net/http/Request;
    :try_start_0
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 454
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v1}, Landroid/net/http/RequestQueue;->removeFirst(Ljava/util/LinkedHashMap;)Landroid/net/http/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 457
    :cond_0
    monitor-exit p0

    return-object v0

    .line 451
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getRequest(Lorg/apache/http/HttpHost;)Landroid/net/http/Request;
    .locals 4
    .param p1, "host"    # Lorg/apache/http/HttpHost;

    .prologue
    .line 464
    monitor-enter p0

    const/4 v2, 0x0

    .line 466
    .local v2, "ret":Landroid/net/http/Request;
    :try_start_0
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 467
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 468
    .local v1, "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/net/http/Request;

    move-object v2, v0

    .line 469
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    .end local v1    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_0
    monitor-exit p0

    return-object v2

    .line 464
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized haveRequest(Lorg/apache/http/HttpHost;)Z
    .locals 1
    .param p1, "host"    # Lorg/apache/http/HttpHost;

    .prologue
    .line 481
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public queueRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/WebAddress;
    .param p3, "method"    # Ljava/lang/String;
    .param p5, "eventHandler"    # Landroid/net/http/EventHandler;
    .param p6, "bodyProvider"    # Ljava/io/InputStream;
    .param p7, "bodyLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "I)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    .prologue
    .line 324
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p5, :cond_0

    .line 325
    new-instance p5, Landroid/net/http/LoggingEventHandler;

    .end local p5    # "eventHandler":Landroid/net/http/EventHandler;
    invoke-direct/range {p5 .. p5}, Landroid/net/http/LoggingEventHandler;-><init>()V

    .line 330
    .restart local p5    # "eventHandler":Landroid/net/http/EventHandler;
    :cond_0
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-virtual {p2}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/WebAddress;->getPort()I

    move-result v3

    invoke-virtual {p2}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 333
    .local v2, "httpHost":Lorg/apache/http/HttpHost;
    new-instance v0, Landroid/net/http/Request;

    iget-object v3, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    invoke-virtual {p2}, Landroid/net/WebAddress;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object v1, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/net/http/Request;-><init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILandroid/net/http/EventHandler;Ljava/util/Map;)V

    .line 336
    .local v0, "req":Landroid/net/http/Request;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/http/RequestQueue;->queueRequest(Landroid/net/http/Request;Z)V

    .line 338
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    # operator++ for: Landroid/net/http/RequestQueue$ActivePool;->mTotalRequest:I
    invoke-static {v1}, Landroid/net/http/RequestQueue$ActivePool;->access$408(Landroid/net/http/RequestQueue$ActivePool;)I

    .line 341
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v1}, Landroid/net/http/RequestQueue$ActivePool;->startConnectionThread()V

    .line 343
    new-instance v3, Landroid/net/http/RequestHandle;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object v11, v0

    invoke-direct/range {v3 .. v11}, Landroid/net/http/RequestHandle;-><init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;)V

    return-object v3
.end method

.method public queueRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p4, "eventHandler"    # Landroid/net/http/EventHandler;
    .param p5, "bodyProvider"    # Ljava/io/InputStream;
    .param p6, "bodyLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "I)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    .prologue
    .line 300
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Landroid/net/WebAddress;

    invoke-direct {v2, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .local v2, "uri":Landroid/net/WebAddress;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 301
    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized queueRequest(Landroid/net/http/Request;Z)V
    .locals 3
    .param p1, "request"    # Landroid/net/http/Request;
    .param p2, "head"    # Z

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    iget-object v2, p1, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    if-nez v2, :cond_0

    iget-object v0, p1, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    .line 501
    .local v0, "host":Lorg/apache/http/HttpHost;
    :goto_0
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 502
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 507
    .local v1, "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :goto_1
    if-eqz p2, :cond_2

    .line 508
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    :goto_2
    monitor-exit p0

    return-void

    .line 499
    .end local v0    # "host":Lorg/apache/http/HttpHost;
    .end local v1    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_0
    :try_start_1
    iget-object v0, p1, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    goto :goto_0

    .line 504
    .restart local v0    # "host":Lorg/apache/http/HttpHost;
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 505
    .restart local v1    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 499
    .end local v0    # "host":Lorg/apache/http/HttpHost;
    .end local v1    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 510
    .restart local v0    # "host":Lorg/apache/http/HttpHost;
    .restart local v1    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_2
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public queueSynchronousRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/WebAddress;
    .param p3, "method"    # Ljava/lang/String;
    .param p5, "eventHandler"    # Landroid/net/http/EventHandler;
    .param p6, "bodyProvider"    # Ljava/io/InputStream;
    .param p7, "bodyLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "I)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    .prologue
    .line 378
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-virtual {p2}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/WebAddress;->getPort()I

    move-result v3

    invoke-virtual {p2}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 380
    .local v2, "host":Lorg/apache/http/HttpHost;
    new-instance v0, Landroid/net/http/Request;

    iget-object v3, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    invoke-virtual {p2}, Landroid/net/WebAddress;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/net/http/Request;-><init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILandroid/net/http/EventHandler;Ljava/util/Map;)V

    .line 385
    .local v0, "req":Landroid/net/http/Request;
    invoke-direct {p0, v2}, Landroid/net/http/RequestQueue;->determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 386
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    new-instance v4, Landroid/net/http/RequestQueue$SyncFeeder;

    invoke-direct {v4}, Landroid/net/http/RequestQueue$SyncFeeder;-><init>()V

    invoke-static {v1, v2, v3, v4}, Landroid/net/http/Connection;->getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)Landroid/net/http/Connection;

    move-result-object v12

    .line 391
    .local v12, "conn":Landroid/net/http/Connection;
    new-instance v3, Landroid/net/http/RequestHandle;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object v11, v0

    invoke-direct/range {v3 .. v12}, Landroid/net/http/RequestHandle;-><init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;Landroid/net/http/Connection;)V

    return-object v3
.end method

.method declared-synchronized requestsPending()Z
    .locals 1

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requeueRequest(Landroid/net/http/Request;)V
    .locals 1
    .param p1, "request"    # Landroid/net/http/Request;

    .prologue
    .line 488
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/net/http/RequestQueue;->queueRequest(Landroid/net/http/Request;Z)V

    .line 489
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->shutdown()V

    .line 496
    return-void
.end method

.method public startTiming()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->startTiming()V

    .line 517
    return-void
.end method

.method public stopTiming()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->stopTiming()V

    .line 521
    return-void
.end method
