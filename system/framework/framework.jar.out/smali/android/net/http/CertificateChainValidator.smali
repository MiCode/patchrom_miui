.class public Landroid/net/http/CertificateChainValidator;
.super Ljava/lang/Object;
.source "CertificateChainValidator.java"


# static fields
.field private static final sInstance:Landroid/net/http/CertificateChainValidator;

.field private static final sVerifier:Ljavax/net/ssl/DefaultHostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Landroid/net/http/CertificateChainValidator;

    invoke-direct {v0}, Landroid/net/http/CertificateChainValidator;-><init>()V

    sput-object v0, Landroid/net/http/CertificateChainValidator;->sInstance:Landroid/net/http/CertificateChainValidator;

    .line 49
    new-instance v0, Ljavax/net/ssl/DefaultHostnameVerifier;

    invoke-direct {v0}, Ljavax/net/ssl/DefaultHostnameVerifier;-><init>()V

    sput-object v0, Landroid/net/http/CertificateChainValidator;->sVerifier:Ljavax/net/ssl/DefaultHostnameVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 2
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    if-eqz p1, :cond_1

    .line 210
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 211
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 215
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 218
    .end local v0    # "session":Ljavax/net/ssl/SSLSession;
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v1, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "defaultErrorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    if-eqz p2, :cond_0

    .end local p2    # "errorMessage":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 201
    return-void

    .restart local p2    # "errorMessage":Ljava/lang/String;
    :cond_0
    move-object p2, p3

    .line 199
    goto :goto_0
.end method

.method public static getInstance()Landroid/net/http/CertificateChainValidator;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Landroid/net/http/CertificateChainValidator;->sInstance:Landroid/net/http/CertificateChainValidator;

    return-object v0
.end method

.method public static handleTrustStorageUpdate()V
    .locals 4

    .prologue
    .line 141
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    .line 142
    .local v2, "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    instance-of v3, v2, Lcom/android/org/conscrypt/TrustManagerImpl;

    if-eqz v3, :cond_0

    .line 143
    move-object v0, v2

    check-cast v0, Lcom/android/org/conscrypt/TrustManagerImpl;

    move-object v1, v0

    .line 144
    .local v1, "trustManager":Lcom/android/org/conscrypt/TrustManagerImpl;
    invoke-virtual {v1}, Lcom/android/org/conscrypt/TrustManagerImpl;->handleTrustStorageUpdate()V
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1    # "trustManager":Lcom/android/org/conscrypt/TrustManagerImpl;
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 6
    .param p0, "certChain"    # [[B
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    .line 117
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "bad certificate chain"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 120
    :cond_1
    array-length v4, p0

    new-array v3, v4, [Ljava/security/cert/X509Certificate;

    .line 123
    .local v3, "serverCertificates":[Ljava/security/cert/X509Certificate;
    :try_start_0
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 124
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    .line 125
    new-instance v4, Ljava/io/ByteArrayInputStream;

    aget-object v5, p0, v2

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "can\'t read certificate"

    invoke-direct {v4, v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 132
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    .restart local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v2    # "i":I
    :cond_2
    invoke-static {v3, p1, p2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v4

    return-object v4
.end method

.method private static verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 8
    .param p0, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 162
    aget-object v1, p0, v4

    .line 163
    .local v1, "currCertificate":Ljava/security/cert/X509Certificate;
    if-nez v1, :cond_0

    .line 164
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "certificate for this site is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 167
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Landroid/net/http/CertificateChainValidator;->sVerifier:Ljavax/net/ssl/DefaultHostnameVerifier;

    invoke-virtual {v6, p1, v1}, Ljavax/net/ssl/DefaultHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    .line 170
    .local v4, "valid":Z
    :cond_1
    if-nez v4, :cond_2

    .line 174
    new-instance v6, Landroid/net/http/SslError;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v1}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .line 191
    :goto_0
    return-object v6

    .line 178
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v5

    .line 179
    .local v5, "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    instance-of v6, v5, Lcom/android/org/conscrypt/TrustManagerImpl;

    if-eqz v6, :cond_3

    .line 180
    move-object v0, v5

    check-cast v0, Lcom/android/org/conscrypt/TrustManagerImpl;

    move-object v3, v0

    .line 181
    .local v3, "trustManager":Lcom/android/org/conscrypt/TrustManagerImpl;
    invoke-virtual {v3, p0, p2, p1}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 185
    .end local v3    # "trustManager":Lcom/android/org/conscrypt/TrustManagerImpl;
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 183
    :cond_3
    invoke-interface {v5, p0, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 186
    .end local v5    # "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v6, Landroid/net/http/SslError;

    const/4 v7, 0x3

    invoke-direct {v6, v7, v1}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto :goto_0
.end method


# virtual methods
.method public doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 5
    .param p1, "connection"    # Landroid/net/http/HttpsConnection;
    .param p2, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p3, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 79
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 80
    .local v1, "sslSession":Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    const-string v2, "failed to perform SSL handshake"

    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 85
    :cond_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 88
    .local v0, "peerCertificates":[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_3

    .line 89
    :cond_1
    const-string v2, "failed to retrieve peer certificates"

    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 101
    :cond_2
    :goto_0
    check-cast v0, [Ljava/security/cert/X509Certificate;

    .end local v0    # "peerCertificates":[Ljava/security/cert/Certificate;
    check-cast v0, [Ljava/security/cert/X509Certificate;

    const-string v2, "RSA"

    invoke-static {v0, p3, v2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v2

    return-object v2

    .line 93
    .restart local v0    # "peerCertificates":[Ljava/security/cert/Certificate;
    :cond_3
    if-eqz p1, :cond_2

    .line 94
    aget-object v2, v0, v4

    if-eqz v2, :cond_2

    .line 95
    new-instance v3, Landroid/net/http/SslCertificate;

    aget-object v2, v0, v4

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-direct {v3, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p1, v3}, Landroid/net/http/HttpsConnection;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto :goto_0
.end method
