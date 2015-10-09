.class public Landroid/net/http/SslCertificate;
.super Ljava/lang/Object;
.source "SslCertificate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/SslCertificate$DName;
    }
.end annotation


# static fields
.field private static ISO_8601_DATE_FORMAT:Ljava/lang/String; = null

.field private static final ISSUED_BY:Ljava/lang/String; = "issued-by"

.field private static final ISSUED_TO:Ljava/lang/String; = "issued-to"

.field private static final VALID_NOT_AFTER:Ljava/lang/String; = "valid-not-after"

.field private static final VALID_NOT_BEFORE:Ljava/lang/String; = "valid-not-before"

.field private static final X509_CERTIFICATE:Ljava/lang/String; = "x509-certificate"


# instance fields
.field private final mIssuedBy:Landroid/net/http/SslCertificate$DName;

.field private final mIssuedTo:Landroid/net/http/SslCertificate$DName;

.field private final mValidNotAfter:Ljava/util/Date;

.field private final mValidNotBefore:Ljava/util/Date;

.field private final mX509Certificate:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ssZ"

    sput-object v0, Landroid/net/http/SslCertificate;->ISO_8601_DATE_FORMAT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "issuedTo"    # Ljava/lang/String;
    .param p2, "issuedBy"    # Ljava/lang/String;
    .param p3, "validNotBefore"    # Ljava/lang/String;
    .param p4, "validNotAfter"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 156
    invoke-static {p3}, Landroid/net/http/SslCertificate;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-static {p4}, Landroid/net/http/SslCertificate;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/net/http/SslCertificate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 6
    .param p1, "issuedTo"    # Ljava/lang/String;
    .param p2, "issuedBy"    # Ljava/lang/String;
    .param p3, "validNotBefore"    # Ljava/util/Date;
    .param p4, "validNotAfter"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/http/SslCertificate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;)V

    .line 171
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "issuedTo"    # Ljava/lang/String;
    .param p2, "issuedBy"    # Ljava/lang/String;
    .param p3, "validNotBefore"    # Ljava/util/Date;
    .param p4, "validNotAfter"    # Ljava/util/Date;
    .param p5, "x509Certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Landroid/net/http/SslCertificate$DName;

    invoke-direct {v0, p0, p1}, Landroid/net/http/SslCertificate$DName;-><init>(Landroid/net/http/SslCertificate;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/http/SslCertificate;->mIssuedTo:Landroid/net/http/SslCertificate$DName;

    .line 190
    new-instance v0, Landroid/net/http/SslCertificate$DName;

    invoke-direct {v0, p0, p2}, Landroid/net/http/SslCertificate$DName;-><init>(Landroid/net/http/SslCertificate;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/http/SslCertificate;->mIssuedBy:Landroid/net/http/SslCertificate$DName;

    .line 191
    invoke-static {p3}, Landroid/net/http/SslCertificate;->cloneDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/SslCertificate;->mValidNotBefore:Ljava/util/Date;

    .line 192
    invoke-static {p4}, Landroid/net/http/SslCertificate;->cloneDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/SslCertificate;->mValidNotAfter:Ljava/util/Date;

    .line 193
    iput-object p5, p0, Landroid/net/http/SslCertificate;->mX509Certificate:Ljava/security/cert/X509Certificate;

    .line 194
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 6
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 178
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v4

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/net/http/SslCertificate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;)V

    .line 183
    return-void
.end method

.method private static cloneDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 329
    if-nez p0, :cond_0

    .line 330
    const/4 v0, 0x0

    .line 332
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto :goto_0
.end method

.method private static final fingerprint([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 282
    if-nez p0, :cond_0

    .line 283
    const-string v3, ""

    .line 293
    :goto_0
    return-object v3

    .line 285
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 287
    aget-byte v0, p0, v1

    .line 288
    .local v0, "b":B
    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Ljava/lang/IntegralToString;->appendByteAsHex(Ljava/lang/StringBuilder;BZ)Ljava/lang/StringBuilder;

    .line 289
    add-int/lit8 v3, v1, 0x1

    array-length v4, p0

    if-eq v3, v4, :cond_1

    .line 290
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 293
    .end local v0    # "b":B
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private formatCertificateDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "certificateDate"    # Ljava/util/Date;

    .prologue
    .line 504
    if-nez p2, :cond_0

    .line 505
    const-string v0, ""

    .line 507
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 319
    if-nez p0, :cond_0

    .line 320
    const-string v0, ""

    .line 322
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Landroid/net/http/SslCertificate;->ISO_8601_DATE_FORMAT:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getDigest(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "x509Certificate"    # Ljava/security/cert/X509Certificate;
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 266
    if-nez p0, :cond_0

    .line 267
    const-string v4, ""

    .line 277
    :goto_0
    return-object v4

    .line 270
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .line 271
    .local v0, "bytes":[B
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 272
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 273
    .local v1, "digest":[B
    invoke-static {v1}, Landroid/net/http/SslCertificate;->fingerprint([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto :goto_0

    .line 274
    .end local v0    # "bytes":[B
    .end local v1    # "digest":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 275
    .local v2, "ignored":Ljava/security/cert/CertificateEncodingException;
    const-string v4, ""

    goto :goto_0

    .line 276
    .end local v2    # "ignored":Ljava/security/cert/CertificateEncodingException;
    :catch_1
    move-exception v2

    .line 277
    .local v2, "ignored":Ljava/security/NoSuchAlgorithmException;
    const-string v4, ""

    goto :goto_0
.end method

.method private static getSerialNumber(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 2
    .param p0, "x509Certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 252
    if-nez p0, :cond_0

    .line 253
    const-string v1, ""

    .line 259
    :goto_0
    return-object v1

    .line 255
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    .line 256
    .local v0, "serialNumber":Ljava/math/BigInteger;
    if-nez v0, :cond_1

    .line 257
    const-string v1, ""

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Landroid/net/http/SslCertificate;->fingerprint([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 309
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Landroid/net/http/SslCertificate;->ISO_8601_DATE_FORMAT:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 311
    :goto_0
    return-object v1

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/text/ParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static restoreState(Landroid/os/Bundle;)Landroid/net/http/SslCertificate;
    .locals 11
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 120
    if-nez p0, :cond_0

    .line 121
    const/4 v1, 0x0

    .line 136
    :goto_0
    return-object v1

    .line 124
    :cond_0
    const-string/jumbo v1, "x509-certificate"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 125
    .local v7, "bytes":[B
    if-nez v7, :cond_1

    .line 126
    const/4 v6, 0x0

    .line 136
    .local v6, "x509Certificate":Ljava/security/cert/X509Certificate;
    :goto_1
    new-instance v1, Landroid/net/http/SslCertificate;

    const-string v2, "issued-to"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "issued-by"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "valid-not-before"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/http/SslCertificate;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    const-string/jumbo v5, "valid-not-after"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/http/SslCertificate;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-direct/range {v1 .. v6}, Landroid/net/http/SslCertificate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;)V

    goto :goto_0

    .line 129
    .end local v6    # "x509Certificate":Ljava/security/cert/X509Certificate;
    :cond_1
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v9

    .line 130
    .local v9, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v9, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    .line 131
    .local v8, "cert":Ljava/security/cert/Certificate;
    move-object v0, v8

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v6, v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v6    # "x509Certificate":Ljava/security/cert/X509Certificate;
    goto :goto_1

    .line 132
    .end local v6    # "x509Certificate":Ljava/security/cert/X509Certificate;
    .end local v8    # "cert":Ljava/security/cert/Certificate;
    .end local v9    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v10

    .line 133
    .local v10, "e":Ljava/security/cert/CertificateException;
    const/4 v6, 0x0

    .restart local v6    # "x509Certificate":Ljava/security/cert/X509Certificate;
    goto :goto_1
.end method

.method public static saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;
    .locals 4
    .param p0, "certificate"    # Landroid/net/http/SslCertificate;

    .prologue
    .line 96
    if-nez p0, :cond_1

    .line 97
    const/4 v0, 0x0

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 99
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "issued-to"

    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "issued-by"

    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v2, "valid-not-before"

    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getValidNotBefore()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v2, "valid-not-after"

    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getValidNotAfter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Landroid/net/http/SslCertificate;->mX509Certificate:Ljava/security/cert/X509Certificate;

    .line 105
    .local v1, "x509Certificate":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_0

    .line 107
    :try_start_0
    const-string/jumbo v2, "x509-certificate"

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getIssuedBy()Landroid/net/http/SslCertificate$DName;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mIssuedBy:Landroid/net/http/SslCertificate$DName;

    return-object v0
.end method

.method public getIssuedTo()Landroid/net/http/SslCertificate$DName;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mIssuedTo:Landroid/net/http/SslCertificate$DName;

    return-object v0
.end method

.method public getValidNotAfter()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mValidNotAfter:Ljava/util/Date;

    invoke-static {v0}, Landroid/net/http/SslCertificate;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidNotAfterDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mValidNotAfter:Ljava/util/Date;

    invoke-static {v0}, Landroid/net/http/SslCertificate;->cloneDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getValidNotBefore()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mValidNotBefore:Ljava/util/Date;

    invoke-static {v0}, Landroid/net/http/SslCertificate;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidNotBeforeDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Landroid/net/http/SslCertificate;->mValidNotBefore:Ljava/util/Date;

    invoke-static {v0}, Landroid/net/http/SslCertificate;->cloneDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public inflateCertificateView(Landroid/content/Context;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 449
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 451
    .local v2, "factory":Landroid/view/LayoutInflater;
    sget v6, Lcom/android/internal/R$layout;->ssl_certificate:I

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 455
    .local v0, "certificateView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v5

    .line 456
    .local v5, "issuedTo":Landroid/net/http/SslCertificate$DName;
    if-eqz v5, :cond_0

    .line 457
    sget v6, Lcom/android/internal/R$id;->to_common:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    sget v6, Lcom/android/internal/R$id;->to_org:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    sget v6, Lcom/android/internal/R$id;->to_org_unit:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    :cond_0
    sget v6, Lcom/android/internal/R$id;->serial_number:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Landroid/net/http/SslCertificate;->mX509Certificate:Ljava/security/cert/X509Certificate;

    invoke-static {v7}, Landroid/net/http/SslCertificate;->getSerialNumber(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    .line 470
    .local v3, "issuedBy":Landroid/net/http/SslCertificate$DName;
    if-eqz v3, :cond_1

    .line 471
    sget v6, Lcom/android/internal/R$id;->by_common:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    sget v6, Lcom/android/internal/R$id;->by_org:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    sget v6, Lcom/android/internal/R$id;->by_org_unit:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    :cond_1
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getValidNotBeforeDate()Ljava/util/Date;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Landroid/net/http/SslCertificate;->formatCertificateDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 481
    .local v4, "issuedOn":Ljava/lang/String;
    sget v6, Lcom/android/internal/R$id;->issued_on:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getValidNotAfterDate()Ljava/util/Date;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Landroid/net/http/SslCertificate;->formatCertificateDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "expiresOn":Ljava/lang/String;
    sget v6, Lcom/android/internal/R$id;->expires_on:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    sget v6, Lcom/android/internal/R$id;->sha256_fingerprint:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Landroid/net/http/SslCertificate;->mX509Certificate:Ljava/security/cert/X509Certificate;

    const-string v8, "SHA256"

    invoke-static {v7, v8}, Landroid/net/http/SslCertificate;->getDigest(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    sget v6, Lcom/android/internal/R$id;->sha1_fingerprint:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Landroid/net/http/SslCertificate;->mX509Certificate:Ljava/security/cert/X509Certificate;

    const-string v8, "SHA1"

    invoke-static {v7, v8}, Landroid/net/http/SslCertificate;->getDigest(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Issued to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/http/SslCertificate;->mIssuedTo:Landroid/net/http/SslCertificate$DName;

    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Issued by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/http/SslCertificate;->mIssuedBy:Landroid/net/http/SslCertificate$DName;

    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
