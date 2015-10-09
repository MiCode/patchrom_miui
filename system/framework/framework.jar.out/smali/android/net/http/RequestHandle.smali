.class public Landroid/net/http/RequestHandle;
.super Ljava/lang/Object;
.source "RequestHandle.java"


# static fields
.field private static final AUTHORIZATION_HEADER:Ljava/lang/String; = "Authorization"

.field public static final MAX_REDIRECT_COUNT:I = 0x10

.field private static final PROXY_AUTHORIZATION_HEADER:Ljava/lang/String; = "Proxy-Authorization"


# instance fields
.field private mBodyLength:I

.field private mBodyProvider:Ljava/io/InputStream;

.field private mConnection:Landroid/net/http/Connection;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:Ljava/lang/String;

.field private mRedirectCount:I

.field private mRequest:Landroid/net/http/Request;

.field private mRequestQueue:Landroid/net/http/RequestQueue;

.field private mUri:Landroid/net/WebAddress;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;)V
    .locals 1
    .param p1, "requestQueue"    # Landroid/net/http/RequestQueue;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/WebAddress;
    .param p4, "method"    # Ljava/lang/String;
    .param p6, "bodyProvider"    # Ljava/io/InputStream;
    .param p7, "bodyLength"    # I
    .param p8, "request"    # Landroid/net/http/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/RequestQueue;",
            "Ljava/lang/String;",
            "Landroid/net/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "I",
            "Landroid/net/http/Request;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    .line 66
    if-nez p5, :cond_0

    .line 67
    new-instance p5, Ljava/util/HashMap;

    .end local p5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 69
    .restart local p5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iput-object p5, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    .line 70
    iput-object p6, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    .line 71
    iput p7, p0, Landroid/net/http/RequestHandle;->mBodyLength:I

    .line 72
    if-nez p4, :cond_1

    const-string p4, "GET"

    .end local p4    # "method":Ljava/lang/String;
    :cond_1
    iput-object p4, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/WebAddress;

    .line 77
    iput-object p1, p0, Landroid/net/http/RequestHandle;->mRequestQueue:Landroid/net/http/RequestQueue;

    .line 79
    iput-object p8, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;Landroid/net/http/Connection;)V
    .locals 0
    .param p1, "requestQueue"    # Landroid/net/http/RequestQueue;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/WebAddress;
    .param p4, "method"    # Ljava/lang/String;
    .param p6, "bodyProvider"    # Ljava/io/InputStream;
    .param p7, "bodyLength"    # I
    .param p8, "request"    # Landroid/net/http/Request;
    .param p9, "conn"    # Landroid/net/http/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/RequestQueue;",
            "Ljava/lang/String;",
            "Landroid/net/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "I",
            "Landroid/net/http/Request;",
            "Landroid/net/http/Connection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p8}, Landroid/net/http/RequestHandle;-><init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;)V

    .line 92
    iput-object p9, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    .line 93
    return-void
.end method

.method private H(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 380
    if-eqz p1, :cond_0

    .line 382
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 384
    .local v2, "md5":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 385
    .local v0, "d":[B
    if-eqz v0, :cond_0

    .line 386
    invoke-direct {p0, v0}, Landroid/net/http/RequestHandle;->bufferToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 393
    .end local v0    # "d":[B
    .end local v2    # "md5":Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 388
    :catch_0
    move-exception v1

    .line 389
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 393
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private KD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "secret"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static authorizationHeader(Z)Ljava/lang/String;
    .locals 1
    .param p0, "isProxy"    # Z

    .prologue
    .line 342
    if-nez p0, :cond_0

    .line 343
    const-string v0, "Authorization"

    .line 345
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Proxy-Authorization"

    goto :goto_0
.end method

.method private bufferToHex([B)Ljava/lang/String;
    .locals 7
    .param p1, "buffer"    # [B

    .prologue
    .line 400
    const/16 v6, 0x10

    new-array v2, v6, [C

    fill-array-data v2, :array_0

    .line 403
    .local v2, "hexChars":[C
    if-eqz p1, :cond_2

    .line 404
    array-length v5, p1

    .line 405
    .local v5, "length":I
    if-lez v5, :cond_1

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v5, 0x2

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 408
    .local v1, "hex":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 409
    aget-byte v6, p1, v3

    and-int/lit8 v6, v6, 0xf

    int-to-byte v4, v6

    .line 410
    .local v4, "l":B
    aget-byte v6, p1, v3

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v6, v6, 0x4

    int-to-byte v0, v6

    .line 412
    .local v0, "h":B
    aget-char v6, v2, v0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    aget-char v6, v2, v4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 416
    .end local v0    # "h":B
    .end local v4    # "l":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 422
    .end local v1    # "hex":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    .end local v5    # "length":I
    :goto_1
    return-object v6

    .line 418
    .restart local v5    # "length":I
    :cond_1
    const-string v6, ""

    goto :goto_1

    .line 422
    .end local v5    # "length":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 400
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static computeBasicAuthResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 277
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 280
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private computeCnonce()Ljava/lang/String;
    .locals 3

    .prologue
    .line 429
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 430
    .local v1, "rand":Ljava/util/Random;
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 431
    .local v0, "nextInt":I
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    const v0, 0x7fffffff

    .line 433
    :goto_0
    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 431
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_0
.end method

.method private computeDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "A1"    # Ljava/lang/String;
    .param p2, "A2"    # Ljava/lang/String;
    .param p3, "nonce"    # Ljava/lang/String;
    .param p4, "QOP"    # Ljava/lang/String;
    .param p5, "nc"    # Ljava/lang/String;
    .param p6, "cnonce"    # Ljava/lang/String;

    .prologue
    .line 358
    if-nez p4, :cond_0

    .line 359
    invoke-direct {p0, p1}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/http/RequestHandle;->KD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    :goto_0
    return-object v0

    .line 361
    :cond_0
    const-string v0, "auth"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    invoke-direct {p0, p1}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/http/RequestHandle;->KD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 366
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private computeDigestAuthResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "realm"    # Ljava/lang/String;
    .param p4, "nonce"    # Ljava/lang/String;
    .param p5, "QOP"    # Ljava/lang/String;
    .param p6, "algorithm"    # Ljava/lang/String;
    .param p7, "opaque"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 305
    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 306
    invoke-static {p3}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "A1":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "A2":Ljava/lang/String;
    const-string v6, "00000001"

    .line 313
    .local v6, "nc":Ljava/lang/String;
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->computeCnonce()Ljava/lang/String;

    move-result-object v7

    .local v7, "cnonce":Ljava/lang/String;
    move-object v1, p0

    move-object v4, p4

    move-object v5, p5

    .line 314
    invoke-direct/range {v1 .. v7}, Landroid/net/http/RequestHandle;->computeDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 316
    .local v8, "digest":Ljava/lang/String;
    const-string v9, ""

    .line 317
    .local v9, "response":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "username="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "realm="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "nonce="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p4}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "uri="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "response="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v8}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 323
    if-eqz p7, :cond_0

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", opaque="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 327
    :cond_0
    if-eqz p6, :cond_1

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", algorithm="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 331
    :cond_1
    if-eqz p5, :cond_2

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", qop="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", nc="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", cnonce="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v7}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 335
    :cond_2
    return-object v9
.end method

.method private createAndQueueNewRequest()V
    .locals 9

    .prologue
    .line 452
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequestQueue:Landroid/net/http/RequestQueue;

    iget-object v1, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/WebAddress;

    iget-object v3, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    iget-object v5, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    iget-object v5, v5, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    iget-object v6, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    iget v7, p0, Landroid/net/http/RequestHandle;->mBodyLength:I

    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueSynchronousRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v8

    .line 456
    .local v8, "newHandle":Landroid/net/http/RequestHandle;
    iget-object v0, v8, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    iput-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    .line 457
    iget-object v0, v8, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    iput-object v0, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    .line 458
    invoke-virtual {v8}, Landroid/net/http/RequestHandle;->processRequest()V

    .line 465
    .end local v8    # "newHandle":Landroid/net/http/RequestHandle;
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequestQueue:Landroid/net/http/RequestQueue;

    iget-object v1, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/WebAddress;

    iget-object v3, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    iget-object v5, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    iget-object v5, v5, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    iget-object v6, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    iget v7, p0, Landroid/net/http/RequestHandle;->mBodyLength:I

    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v0

    iget-object v0, v0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    iput-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    goto :goto_0
.end method

.method private doubleQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 440
    if-eqz p1, :cond_0

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupAuthResponse()V
    .locals 1

    .prologue
    .line 256
    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->createAndQueueNewRequest()V

    .line 263
    return-void

    .line 257
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    invoke-virtual {v0}, Landroid/net/http/Request;->cancel()V

    .line 102
    :cond_0
    return-void
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectCount()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    return v0
.end method

.method public handleSslErrorResponse(Z)V
    .locals 1
    .param p1, "proceed"    # Z

    .prologue
    .line 119
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    invoke-virtual {v0, p1}, Landroid/net/http/Request;->handleSslErrorResponse(Z)V

    .line 122
    :cond_0
    return-void
.end method

.method public isRedirectMax()Z
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pauseRequest(Z)V
    .locals 1
    .param p1, "pause"    # Z

    .prologue
    .line 109
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    invoke-virtual {v0, p1}, Landroid/net/http/Request;->setLoadingPaused(Z)V

    .line 112
    :cond_0
    return-void
.end method

.method public processRequest()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    iget-object v1, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    invoke-virtual {v0, v1}, Landroid/net/http/Connection;->processRequests(Landroid/net/http/Request;)V

    .line 291
    :cond_0
    return-void
.end method

.method public setRedirectCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 136
    iput p1, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    .line 137
    return-void
.end method

.method public setupBasicAuthResponse(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "isProxy"    # Z
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-static {p2, p3}, Landroid/net/http/RequestHandle;->computeBasicAuthResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "response":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    invoke-static {p1}, Landroid/net/http/RequestHandle;->authorizationHeader(Z)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->setupAuthResponse()V

    .line 231
    return-void
.end method

.method public setupDigestAuthResponse(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "isProxy"    # Z
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;
    .param p5, "nonce"    # Ljava/lang/String;
    .param p6, "QOP"    # Ljava/lang/String;
    .param p7, "algorithm"    # Ljava/lang/String;
    .param p8, "opaque"    # Ljava/lang/String;

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroid/net/http/RequestHandle;->computeDigestAuthResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, "response":Ljava/lang/String;
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    invoke-static {p1}, Landroid/net/http/RequestHandle;->authorizationHeader(Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Digest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->setupAuthResponse()V

    .line 252
    return-void
.end method

.method public setupRedirect(Ljava/lang/String;ILjava/util/Map;)Z
    .locals 7
    .param p1, "redirectTo"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "cacheHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 156
    iget-object v4, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    const-string v5, "Authorization"

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v4, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    const-string v5, "Proxy-Authorization"

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget v4, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    .line 164
    iget-object v4, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    const/16 v5, -0x9

    sget v6, Lcom/android/internal/R$string;->httpErrorRedirectLoop:I

    invoke-virtual {v4, v5, v6}, Landroid/net/http/Request;->error(II)V

    .line 218
    :goto_0
    return v3

    .line 169
    :cond_0
    iget-object v4, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    const-string v5, "https:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "http:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    iget-object v4, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    const-string v5, "Referer"

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_1
    iput-object p1, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    .line 179
    :try_start_0
    new-instance v4, Landroid/net/WebAddress;

    iget-object v5, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/WebAddress;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_1
    iget-object v4, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    const-string v5, "Cookie"

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    iget-object v5, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/WebAddress;

    invoke-virtual {v4, v5}, Landroid/webkit/CookieManager;->getCookie(Landroid/net/WebAddress;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "cookie":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 188
    iget-object v4, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    const-string v5, "Cookie"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_2
    const/16 v4, 0x12e

    if-eq p2, v4, :cond_3

    const/16 v4, 0x12f

    if-ne p2, v4, :cond_4

    :cond_3
    iget-object v4, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    const-string v5, "POST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 195
    const-string v4, "GET"

    iput-object v4, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    .line 199
    :cond_4
    const/16 v4, 0x133

    if-ne p2, v4, :cond_6

    .line 201
    :try_start_1
    iget-object v4, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    :cond_5
    :goto_2
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 217
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->createAndQueueNewRequest()V

    .line 218
    const/4 v3, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "cookie":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Landroid/net/ParseException;
    invoke-virtual {v1}, Landroid/net/ParseException;->printStackTrace()V

    goto :goto_1

    .line 202
    .end local v1    # "e":Landroid/net/ParseException;
    .restart local v0    # "cookie":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 206
    .local v2, "ex":Ljava/io/IOException;
    goto :goto_0

    .line 210
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_6
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    const-string v4, "Content-Type"

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    goto :goto_2
.end method

.method public waitUntilComplete()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    invoke-virtual {v0}, Landroid/net/http/Request;->waitUntilComplete()V

    .line 285
    return-void
.end method
