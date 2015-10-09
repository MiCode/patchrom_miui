.class public Landroid/security/Credentials;
.super Ljava/lang/Object;
.source "Credentials.java"


# static fields
.field public static final CA_CERTIFICATE:Ljava/lang/String; = "CACERT_"

.field public static final EXTENSION_CER:Ljava/lang/String; = ".cer"

.field public static final EXTENSION_CRT:Ljava/lang/String; = ".crt"

.field public static final EXTENSION_P12:Ljava/lang/String; = ".p12"

.field public static final EXTENSION_PFX:Ljava/lang/String; = ".pfx"

.field public static final EXTRA_CA_CERTIFICATES_DATA:Ljava/lang/String; = "ca_certificates_data"

.field public static final EXTRA_CA_CERTIFICATES_NAME:Ljava/lang/String; = "ca_certificates_name"

.field public static final EXTRA_INSTALL_AS_UID:Ljava/lang/String; = "install_as_uid"

.field public static final EXTRA_PRIVATE_KEY:Ljava/lang/String; = "PKEY"

.field public static final EXTRA_PUBLIC_KEY:Ljava/lang/String; = "KEY"

.field public static final EXTRA_USER_CERTIFICATE_DATA:Ljava/lang/String; = "user_certificate_data"

.field public static final EXTRA_USER_CERTIFICATE_NAME:Ljava/lang/String; = "user_certificate_name"

.field public static final EXTRA_USER_PRIVATE_KEY_DATA:Ljava/lang/String; = "user_private_key_data"

.field public static final EXTRA_USER_PRIVATE_KEY_NAME:Ljava/lang/String; = "user_private_key_name"

.field public static final INSTALL_ACTION:Ljava/lang/String; = "android.credentials.INSTALL"

.field public static final INSTALL_AS_USER_ACTION:Ljava/lang/String; = "android.credentials.INSTALL_AS_USER"

.field public static final LOCKDOWN_VPN:Ljava/lang/String; = "LOCKDOWN_VPN"

.field private static final LOGTAG:Ljava/lang/String; = "Credentials"

.field public static final UNLOCK_ACTION:Ljava/lang/String; = "com.android.credentials.UNLOCK"

.field public static final USER_CERTIFICATE:Ljava/lang/String; = "USRCERT_"

.field public static final USER_PRIVATE_KEY:Ljava/lang/String; = "USRPKEY_"

.field public static final VPN:Ljava/lang/String; = "VPN_"

.field public static final WIFI:Ljava/lang/String; = "WIFI_"

.field private static singleton:Landroid/security/Credentials;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFromPem([B)Ljava/util/List;
    .locals 10
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 145
    .local v0, "bai":Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 146
    .local v5, "reader":Ljava/io/Reader;
    new-instance v4, Lcom/android/org/bouncycastle/util/io/pem/PemReader;

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;-><init>(Ljava/io/Reader;)V

    .line 148
    .local v4, "pr":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    const-string v7, "X509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 150
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :goto_0
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->readPemObject()Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    move-result-object v3

    .local v3, "o":Lcom/android/org/bouncycastle/util/io/pem/PemObject;
    if-eqz v3, :cond_1

    .line 153
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CERTIFICATE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 154
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 155
    .local v1, "c":Ljava/security/cert/Certificate;
    check-cast v1, Ljava/security/cert/X509Certificate;

    .end local v1    # "c":Ljava/security/cert/Certificate;
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 160
    :cond_1
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->close()V

    .line 161
    return-object v6
.end method

.method public static varargs convertToPem([Ljava/security/cert/Certificate;)[B
    .locals 10
    .param p0, "objects"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 130
    .local v1, "bao":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/OutputStreamWriter;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v6, v1, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 131
    .local v6, "writer":Ljava/io/Writer;
    new-instance v5, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;-><init>(Ljava/io/Writer;)V

    .line 132
    .local v5, "pw":Lcom/android/org/bouncycastle/util/io/pem/PemWriter;
    move-object v0, p0

    .local v0, "arr$":[Ljava/security/cert/Certificate;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 133
    .local v4, "o":Ljava/security/cert/Certificate;
    new-instance v7, Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    const-string v8, "CERTIFICATE"

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v5, v7}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->writeObject(Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;)V

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v4    # "o":Ljava/security/cert/Certificate;
    :cond_0
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->close()V

    .line 136
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7
.end method

.method static deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z
    .locals 2
    .param p0, "keystore"    # Landroid/security/KeyStore;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USRPKEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->delKey(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, p1}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method static deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z
    .locals 3
    .param p0, "keystore"    # Landroid/security/KeyStore;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USRCERT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static getInstance()Landroid/security/Credentials;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Landroid/security/Credentials;->singleton:Landroid/security/Credentials;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Landroid/security/Credentials;

    invoke-direct {v0}, Landroid/security/Credentials;-><init>()V

    sput-object v0, Landroid/security/Credentials;->singleton:Landroid/security/Credentials;

    .line 170
    :cond_0
    sget-object v0, Landroid/security/Credentials;->singleton:Landroid/security/Credentials;

    return-object v0
.end method


# virtual methods
.method public install(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    :try_start_0
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    move-result-object v1

    .line 185
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "Credentials"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public install(Landroid/content/Context;Ljava/lang/String;[B)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B

    .prologue
    .line 204
    :try_start_0
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    move-result-object v1

    .line 205
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 206
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "Credentials"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public install(Landroid/content/Context;Ljava/security/KeyPair;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pair"    # Ljava/security/KeyPair;

    .prologue
    .line 193
    :try_start_0
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    move-result-object v1

    .line 194
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "PKEY"

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 195
    const-string v2, "KEY"

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 196
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "Credentials"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unlock(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.credentials.UNLOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "Credentials"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
