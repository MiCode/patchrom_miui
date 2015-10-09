.class public final Landroid/net/http/HttpResponseCache;
.super Ljava/net/ResponseCache;
.source "HttpResponseCache.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final delegate:Lcom/android/okhttp/HttpResponseCache;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/HttpResponseCache;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/okhttp/HttpResponseCache;

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 159
    iput-object p1, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    .line 160
    return-void
.end method

.method public static getInstalled()Landroid/net/http/HttpResponseCache;
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    .line 168
    .local v0, "installed":Ljava/net/ResponseCache;
    instance-of v1, v0, Lcom/android/okhttp/HttpResponseCache;

    if-eqz v1, :cond_0

    .line 169
    new-instance v1, Landroid/net/http/HttpResponseCache;

    check-cast v0, Lcom/android/okhttp/HttpResponseCache;

    .end local v0    # "installed":Ljava/net/ResponseCache;
    invoke-direct {v1, v0}, Landroid/net/http/HttpResponseCache;-><init>(Lcom/android/okhttp/HttpResponseCache;)V

    .line 173
    :goto_0
    return-object v1

    .restart local v0    # "installed":Ljava/net/ResponseCache;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;
    .locals 5
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    .line 189
    .local v0, "installed":Ljava/net/ResponseCache;
    instance-of v3, v0, Lcom/android/okhttp/HttpResponseCache;

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 190
    check-cast v1, Lcom/android/okhttp/HttpResponseCache;

    .line 193
    .local v1, "installedCache":Lcom/android/okhttp/HttpResponseCache;
    invoke-virtual {v1}, Lcom/android/okhttp/HttpResponseCache;->getDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/okhttp/HttpResponseCache;->getMaxSize()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/android/okhttp/HttpResponseCache;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 196
    new-instance v3, Landroid/net/http/HttpResponseCache;

    invoke-direct {v3, v1}, Landroid/net/http/HttpResponseCache;-><init>(Lcom/android/okhttp/HttpResponseCache;)V

    .line 206
    .end local v1    # "installedCache":Lcom/android/okhttp/HttpResponseCache;
    :goto_0
    return-object v3

    .line 199
    .restart local v1    # "installedCache":Lcom/android/okhttp/HttpResponseCache;
    :cond_0
    invoke-virtual {v1}, Lcom/android/okhttp/HttpResponseCache;->close()V

    .line 203
    .end local v1    # "installedCache":Lcom/android/okhttp/HttpResponseCache;
    :cond_1
    new-instance v2, Lcom/android/okhttp/HttpResponseCache;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/okhttp/HttpResponseCache;-><init>(Ljava/io/File;J)V

    .line 205
    .local v2, "responseCache":Lcom/android/okhttp/HttpResponseCache;
    invoke-static {v2}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 206
    new-instance v3, Landroid/net/http/HttpResponseCache;

    invoke-direct {v3, v2}, Landroid/net/http/HttpResponseCache;-><init>(Lcom/android/okhttp/HttpResponseCache;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    iget-object v1, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    if-ne v0, v1, :cond_0

    .line 279
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 281
    :cond_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpResponseCache;->close()V

    .line 282
    return-void
.end method

.method public delete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    iget-object v1, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    if-ne v0, v1, :cond_0

    .line 289
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 291
    :cond_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpResponseCache;->delete()V

    .line 292
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 242
    :try_start_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpResponseCache;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/HttpResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    return-object v0
.end method

.method public getHitCount()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpResponseCache;->getHitCount()I

    move-result v0

    return v0
.end method

.method public getNetworkCount()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpResponseCache;->getNetworkCount()I

    move-result v0

    return v0
.end method

.method public getRequestCount()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpResponseCache;->getRequestCount()I

    move-result v0

    return v0
.end method

.method public maxSize()J
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpResponseCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/HttpResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public size()J
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/HttpResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpResponseCache;->getSize()J

    move-result-wide v0

    return-wide v0
.end method
