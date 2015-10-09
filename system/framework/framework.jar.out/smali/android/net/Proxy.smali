.class public final Landroid/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

.field private static final EXCLLIST_REGEXP:Ljava/lang/String; = "$|^(.?[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*)+(,(.?[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*))*$"

.field public static final EXTRA_PROXY_INFO:Ljava/lang/String; = "proxy"

.field private static final HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final HOSTNAME_REGEXP:Ljava/lang/String; = "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

.field private static final NAME_IP_REGEX:Ljava/lang/String; = "[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*"

.field public static final PROXY_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.PROXY_CHANGE"

.field private static final TAG:Ljava/lang/String; = "Proxy"

.field private static sConnectivityManager:Landroid/net/ConnectivityManager;

.field private static final sDefaultProxySelector:Ljava/net/ProxySelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .line 86
    const-string v0, "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/Proxy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 87
    const-string v0, "$|^(.?[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*)+(,(.?[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*))*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/Proxy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    .line 88
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    sput-object v0, Landroid/net/Proxy;->sDefaultProxySelector:Ljava/net/ProxySelector;

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    return-void
.end method

.method public static final getAndroidProxySelectorRoutePlanner(Landroid/content/Context;)Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    new-instance v0, Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;

    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;Landroid/content/Context;)V

    .line 310
    .local v0, "ret":Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;
    return-object v0
.end method

.method public static final getDefaultHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    const-string v1, "http.proxyHost"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 173
    .end local v0    # "host":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static final getDefaultPort()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 185
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 189
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v1

    .line 187
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :try_start_0
    const-string v2, "http.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static final getHost(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-static {p0, v3}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v1

    .line 137
    .local v1, "proxy":Ljava/net/Proxy;
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v1, v2, :cond_0

    move-object v2, v3

    .line 141
    :goto_0
    return-object v2

    .line 139
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v2, v3

    .line 141
    goto :goto_0
.end method

.method public static final getPort(Landroid/content/Context;)I
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 153
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v1

    .line 154
    .local v1, "proxy":Ljava/net/Proxy;
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v1, v2, :cond_0

    move v2, v3

    .line 158
    :goto_0
    return v2

    .line 156
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 158
    goto :goto_0
.end method

.method public static final getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-static {p0, p1}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    .line 209
    .local v0, "prefProxy":Ljava/net/Proxy;
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, v2}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    const/4 v2, 0x0

    .line 213
    :goto_0
    return-object v2

    .line 212
    :cond_0
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 213
    .local v1, "sa":Ljava/net/InetSocketAddress;
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    const-string v5, "http"

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static final getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v0, ""

    .line 102
    .local v0, "host":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 103
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 104
    .local v2, "uri":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 107
    .end local v2    # "uri":Ljava/net/URI;
    :cond_0
    invoke-static {v0}, Landroid/net/Proxy;->isLocalHost(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 108
    sget-object v3, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_1

    .line 109
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    sput-object v3, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .line 112
    :cond_1
    sget-object v3, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_2

    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 122
    :goto_0
    return-object v3

    .line 114
    :cond_2
    sget-object v3, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    .line 116
    .local v1, "proxyProperties":Landroid/net/ProxyProperties;
    if-eqz v1, :cond_3

    .line 117
    invoke-virtual {v1, v0}, Landroid/net/ProxyProperties;->isExcluded(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 118
    invoke-virtual {v1}, Landroid/net/ProxyProperties;->makeProxy()Ljava/net/Proxy;

    move-result-object v3

    goto :goto_0

    .line 122
    .end local v1    # "proxyProperties":Landroid/net/ProxyProperties;
    :cond_3
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_0
.end method

.method private static final isLocalHost(Ljava/lang/String;)Z
    .locals 3
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 218
    if-nez p0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    if-eqz p0, :cond_0

    .line 223
    :try_start_0
    const-string v2, "localhost"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 224
    goto :goto_0

    .line 226
    :cond_2
    invoke-static {p0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 227
    goto :goto_0

    .line 230
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final setHttpProxySystemProperty(Landroid/net/ProxyProperties;)V
    .locals 5
    .param p0, "p"    # Landroid/net/ProxyProperties;

    .prologue
    .line 315
    const/4 v1, 0x0

    .line 316
    .local v1, "host":Ljava/lang/String;
    const/4 v3, 0x0

    .line 317
    .local v3, "port":Ljava/lang/String;
    const/4 v0, 0x0

    .line 318
    .local v0, "exclList":Ljava/lang/String;
    const/4 v2, 0x0

    .line 319
    .local v2, "pacFileUrl":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 320
    invoke-virtual {p0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-virtual {p0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 322
    invoke-virtual {p0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-virtual {p0}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v2

    .line 325
    :cond_0
    invoke-static {v1, v3, v0, v2}, Landroid/net/Proxy;->setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public static final setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # Ljava/lang/String;
    .param p2, "exclList"    # Ljava/lang/String;
    .param p3, "pacFileUrl"    # Ljava/lang/String;

    .prologue
    .line 331
    if-eqz p2, :cond_0

    const-string v0, ","

    const-string/jumbo v1, "|"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 333
    :cond_0
    if-eqz p0, :cond_1

    .line 334
    const-string v0, "http.proxyHost"

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    const-string v0, "https.proxyHost"

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    :goto_0
    if-eqz p1, :cond_2

    .line 341
    const-string v0, "http.proxyPort"

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    const-string v0, "https.proxyPort"

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 347
    :goto_1
    if-eqz p2, :cond_3

    .line 348
    const-string v0, "http.nonProxyHosts"

    invoke-static {v0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 349
    const-string v0, "https.nonProxyHosts"

    invoke-static {v0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 354
    :goto_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 355
    new-instance v0, Landroid/net/PacProxySelector;

    invoke-direct {v0}, Landroid/net/PacProxySelector;-><init>()V

    invoke-static {v0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    .line 359
    :goto_3
    return-void

    .line 337
    :cond_1
    const-string v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 338
    const-string v0, "https.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 344
    :cond_2
    const-string v0, "http.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 345
    const-string v0, "https.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 351
    :cond_3
    const-string v0, "http.nonProxyHosts"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 352
    const-string v0, "https.nonProxyHosts"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 357
    :cond_4
    sget-object v0, Landroid/net/Proxy;->sDefaultProxySelector:Ljava/net/ProxySelector;

    invoke-static {v0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    goto :goto_3
.end method

.method public static validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # Ljava/lang/String;
    .param p2, "exclList"    # Ljava/lang/String;

    .prologue
    .line 240
    sget-object v4, Landroid/net/Proxy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 241
    .local v2, "match":Ljava/util/regex/Matcher;
    sget-object v4, Landroid/net/Proxy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 243
    .local v1, "listMatch":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    .line 244
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 247
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1

    .line 248
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 251
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 252
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 255
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 256
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 257
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 259
    :cond_3
    const/4 v3, -0x1

    .line 261
    .local v3, "portVal":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 265
    if-lez v3, :cond_4

    const v4, 0xffff

    if-le v3, v4, :cond_5

    .line 266
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 269
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v3    # "portVal":I
    :cond_5
    return-void
.end method
