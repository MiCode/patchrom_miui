.class public Landroid/security/AndroidKeyStore;
.super Ljava/security/KeyStoreSpi;
.source "AndroidKeyStore.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "AndroidKeyStore"


# instance fields
.field private mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    return-void
.end method

.method private getModificationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v2, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->getmtime(Ljava/lang/String;)J

    move-result-wide v0

    .line 171
    .local v0, "epochMillis":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 172
    const/4 v2, 0x0

    .line 175
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method private getUniqueAliases()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    iget-object v7, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 386
    .local v6, "rawAliases":[Ljava/lang/String;
    if-nez v6, :cond_1

    .line 387
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 401
    :cond_0
    return-object v1

    .line 390
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    array-length v7, v6

    invoke-direct {v1, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 391
    .local v1, "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v2, v6

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v2, v3

    .line 392
    .local v0, "alias":Ljava/lang/String;
    const/16 v7, 0x5f

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 393
    .local v4, "idx":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v4, :cond_3

    .line 394
    :cond_2
    const-string v7, "AndroidKeyStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid alias: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 398
    :cond_3
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private isCertificateEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 439
    if-nez p1, :cond_0

    .line 440
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_0
    iget-object v0, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isKeyEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 431
    if-nez p1, :cond_0

    .line 432
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_0
    iget-object v0, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Landroid/security/KeyStoreParameter;)V
    .locals 22
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PrivateKey;
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .param p4, "params"    # Landroid/security/KeyStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 213
    const/4 v10, 0x0

    .line 216
    .local v10, "keyBytes":[B
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v19, p2

    .line 217
    check-cast v19, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface/range {v19 .. v19}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/org/conscrypt/OpenSSLKey;->getAlias()Ljava/lang/String;

    move-result-object v14

    .line 223
    .local v14, "pkeyAlias":Ljava/lang/String;
    :goto_0
    if-eqz v14, :cond_3

    const-string v19, "USRPKEY_"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 224
    const-string v19, "USRPKEY_"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 225
    .local v12, "keySubalias":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 226
    new-instance v19, Ljava/security/KeyStoreException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Can only replace keys with same alias: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " != "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 219
    .end local v12    # "keySubalias":Ljava/lang/String;
    .end local v14    # "pkeyAlias":Ljava/lang/String;
    :cond_0
    const/4 v14, 0x0

    .restart local v14    # "pkeyAlias":Ljava/lang/String;
    goto :goto_0

    .line 230
    .restart local v12    # "keySubalias":Ljava/lang/String;
    :cond_1
    const/4 v15, 0x0

    .line 249
    .end local v12    # "keySubalias":Ljava/lang/String;
    .local v15, "shouldReplacePrivateKey":Z
    :goto_1
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    if-nez v19, :cond_7

    .line 250
    :cond_2
    new-instance v19, Ljava/security/KeyStoreException;

    const-string v20, "Must supply at least one Certificate with PrivateKey"

    invoke-direct/range {v19 .. v20}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 233
    .end local v15    # "shouldReplacePrivateKey":Z
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v11

    .line 234
    .local v11, "keyFormat":Ljava/lang/String;
    if-eqz v11, :cond_4

    const-string v19, "PKCS#8"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 235
    :cond_4
    new-instance v19, Ljava/security/KeyStoreException;

    const-string v20, "Only PrivateKeys that can be encoded into PKCS#8 are supported"

    invoke-direct/range {v19 .. v20}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 240
    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v10

    .line 241
    if-nez v10, :cond_6

    .line 242
    new-instance v19, Ljava/security/KeyStoreException;

    const-string v20, "PrivateKey has no encoding"

    invoke-direct/range {v19 .. v20}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 245
    :cond_6
    const/4 v15, 0x1

    .restart local v15    # "shouldReplacePrivateKey":Z
    goto :goto_1

    .line 254
    .end local v11    # "keyFormat":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    move-object/from16 v18, v0

    .line 255
    .local v18, "x509chain":[Ljava/security/cert/X509Certificate;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_a

    .line 256
    const-string v19, "X.509"

    aget-object v20, p3, v9

    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 257
    new-instance v19, Ljava/security/KeyStoreException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Certificates must be in X.509 format: invalid cert #"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 261
    :cond_8
    aget-object v19, p3, v9

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/security/cert/X509Certificate;

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 262
    new-instance v19, Ljava/security/KeyStoreException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Certificates must be in X.509 format: invalid cert #"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 266
    :cond_9
    aget-object v19, p3, v9

    check-cast v19, Ljava/security/cert/X509Certificate;

    aput-object v19, v18, v9

    .line 255
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 271
    :cond_a
    const/16 v19, 0x0

    :try_start_0
    aget-object v19, v18, v19

    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 282
    .local v17, "userCertBytes":[B
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 287
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    new-array v5, v0, [[B

    .line 288
    .local v5, "certsBytes":[[B
    const/16 v16, 0x0

    .line 289
    .local v16, "totalCertLength":I
    const/4 v9, 0x0

    :goto_3
    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_b

    .line 291
    add-int/lit8 v19, v9, 0x1

    :try_start_1
    aget-object v19, v18, v19

    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v19

    aput-object v19, v5, v9

    .line 292
    aget-object v19, v5, v9

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    add-int v16, v16, v19

    .line 289
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 272
    .end local v5    # "certsBytes":[[B
    .end local v16    # "totalCertLength":I
    .end local v17    # "userCertBytes":[B
    :catch_0
    move-exception v7

    .line 273
    .local v7, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v19, Ljava/security/KeyStoreException;

    const-string v20, "Couldn\'t encode certificate #1"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 293
    .end local v7    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v5    # "certsBytes":[[B
    .restart local v16    # "totalCertLength":I
    .restart local v17    # "userCertBytes":[B
    :catch_1
    move-exception v7

    .line 294
    .restart local v7    # "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v19, Ljava/security/KeyStoreException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Can\'t encode Certificate #"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 302
    .end local v7    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_b
    move/from16 v0, v16

    new-array v6, v0, [B

    .line 303
    .local v6, "chainBytes":[B
    const/4 v13, 0x0

    .line 304
    .local v13, "outputOffset":I
    const/4 v9, 0x0

    :goto_4
    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_d

    .line 305
    aget-object v19, v5, v9

    move-object/from16 v0, v19

    array-length v4, v0

    .line 306
    .local v4, "certLength":I
    aget-object v19, v5, v9

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v6, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    add-int/2addr v13, v4

    .line 308
    const/16 v19, 0x0

    aput-object v19, v5, v9

    .line 304
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 311
    .end local v4    # "certLength":I
    .end local v5    # "certsBytes":[[B
    .end local v6    # "chainBytes":[B
    .end local v13    # "outputOffset":I
    .end local v16    # "totalCertLength":I
    :cond_c
    const/4 v6, 0x0

    .line 318
    .restart local v6    # "chainBytes":[B
    :cond_d
    if-eqz v15, :cond_e

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 324
    :goto_5
    if-nez p4, :cond_f

    const/4 v8, 0x0

    .line 326
    .local v8, "flags":I
    :goto_6
    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "USRPKEY_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v10, v2, v8}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v19

    if-nez v19, :cond_10

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 330
    new-instance v19, Ljava/security/KeyStoreException;

    const-string v20, "Couldn\'t put private key in keystore"

    invoke-direct/range {v19 .. v20}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 321
    .end local v8    # "flags":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    goto :goto_5

    .line 324
    :cond_f
    invoke-virtual/range {p4 .. p4}, Landroid/security/KeyStoreParameter;->getFlags()I

    move-result v8

    goto :goto_6

    .line 331
    .restart local v8    # "flags":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "USRCERT_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v19

    if-nez v19, :cond_11

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 334
    new-instance v19, Ljava/security/KeyStoreException;

    const-string v20, "Couldn\'t put certificate #1 in keystore"

    invoke-direct/range {v19 .. v20}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 335
    :cond_11
    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "CACERT_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2, v8}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v19

    if-nez v19, :cond_12

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 339
    new-instance v19, Ljava/security/KeyStoreException;

    const-string v20, "Couldn\'t put certificate chain in keystore"

    invoke-direct/range {v19 .. v20}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 341
    :cond_12
    return-void
.end method

.method private static toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 148
    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 149
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :goto_0
    return-object v2

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/security/cert/CertificateException;
    const-string v2, "AndroidKeyStore"

    const-string v3, "Couldn\'t parse certificate in keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static toCertificates([B)Ljava/util/Collection;
    .locals 4
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 161
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 165
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :goto_0
    return-object v2

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/security/cert/CertificateException;
    const-string v2, "AndroidKeyStore"

    const-string v3, "Couldn\'t parse certificates in keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    invoke-direct {p0}, Landroid/security/AndroidKeyStore;->getUniqueAliases()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 411
    if-nez p1, :cond_0

    .line 412
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_0
    iget-object v0, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-direct {p0, p1}, Landroid/security/AndroidKeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroid/security/AndroidKeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    :cond_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v0, p1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "alias == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_0
    iget-object v1, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRCERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 134
    .local v0, "certificate":[B
    if-eqz v0, :cond_1

    .line 135
    invoke-static {v0}, Landroid/security/AndroidKeyStore;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 143
    :goto_0
    return-object v1

    .line 138
    :cond_1
    iget-object v1, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 139
    if-eqz v0, :cond_2

    .line 140
    invoke-static {v0}, Landroid/security/AndroidKeyStore;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    goto :goto_0

    .line 143
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 13
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v9, 0x0

    .line 453
    if-nez p1, :cond_0

    move-object v0, v9

    .line 506
    :goto_0
    return-object v0

    .line 457
    :cond_0
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 465
    .local v8, "nonCaEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v10, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    const-string v11, "USRCERT_"

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 466
    .local v4, "certAliases":[Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 467
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v0, v1, v6

    .line 468
    .local v0, "alias":Ljava/lang/String;
    iget-object v10, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRCERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v5

    .line 469
    .local v5, "certBytes":[B
    if-nez v5, :cond_2

    .line 467
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 473
    :cond_2
    invoke-static {v5}, Landroid/security/AndroidKeyStore;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 474
    .local v2, "c":Ljava/security/cert/Certificate;
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-virtual {p1, v2}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    .line 486
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "c":Ljava/security/cert/Certificate;
    .end local v5    # "certBytes":[B
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_3
    iget-object v10, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    const-string v11, "CACERT_"

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, "caAliases":[Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 488
    move-object v1, v3

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v7, v1

    .restart local v7    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_2
    if-ge v6, v7, :cond_6

    aget-object v0, v1, v6

    .line 489
    .restart local v0    # "alias":Ljava/lang/String;
    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 488
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 493
    :cond_5
    iget-object v10, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CACERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v5

    .line 494
    .restart local v5    # "certBytes":[B
    if-eqz v5, :cond_4

    .line 498
    iget-object v10, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CACERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Landroid/security/AndroidKeyStore;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 500
    .restart local v2    # "c":Ljava/security/cert/Certificate;
    invoke-virtual {p1, v2}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto/16 :goto_0

    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "c":Ljava/security/cert/Certificate;
    .end local v5    # "certBytes":[B
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_6
    move-object v0, v9

    .line 506
    goto/16 :goto_0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 10
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "alias == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Landroid/security/AndroidKeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 101
    .local v6, "leaf":Ljava/security/cert/X509Certificate;
    if-nez v6, :cond_1

    .line 102
    const/4 v2, 0x0

    .line 124
    :goto_0
    return-object v2

    .line 107
    :cond_1
    iget-object v7, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CACERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 108
    .local v0, "caBytes":[B
    if-eqz v0, :cond_2

    .line 109
    invoke-static {v0}, Landroid/security/AndroidKeyStore;->toCertificates([B)Ljava/util/Collection;

    move-result-object v1

    .line 111
    .local v1, "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    new-array v2, v7, [Ljava/security/cert/Certificate;

    .line 113
    .local v2, "caList":[Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 114
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    const/4 v3, 0x1

    .line 115
    .local v3, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 116
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/Certificate;

    aput-object v7, v2, v3

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 119
    .end local v1    # "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v2    # "caList":[Ljava/security/cert/Certificate;
    .end local v3    # "i":I
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    :cond_2
    const/4 v7, 0x1

    new-array v2, v7, [Ljava/security/cert/Certificate;

    .line 122
    .restart local v2    # "caList":[Ljava/security/cert/Certificate;
    :cond_3
    const/4 v7, 0x0

    aput-object v6, v2, v7

    goto :goto_0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 180
    if-nez p1, :cond_0

    .line 181
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "alias == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/AndroidKeyStore;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 185
    .local v0, "d":Ljava/util/Date;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 194
    :goto_0
    return-object v1

    .line 189
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/AndroidKeyStore;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 191
    goto :goto_0

    .line 194
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/AndroidKeyStore;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/security/AndroidKeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    const/4 v3, 0x0

    .line 86
    :goto_0
    return-object v3

    .line 84
    :cond_0
    const-string v3, "keystore"

    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLEngine;->getInstance(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLEngine;

    move-result-object v1

    .line 86
    .local v1, "engine":Lcom/android/org/conscrypt/OpenSSLEngine;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/org/conscrypt/OpenSSLEngine;->getPrivateKeyById(Ljava/lang/String;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/security/UnrecoverableKeyException;

    const-string v3, "Can\'t get key"

    invoke-direct {v2, v3}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 89
    .local v2, "t":Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v2, v0}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 90
    throw v2
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 448
    invoke-direct {p0, p1}, Landroid/security/AndroidKeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/security/AndroidKeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 427
    invoke-direct {p0, p1}, Landroid/security/AndroidKeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 518
    if-eqz p1, :cond_0

    .line 519
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_0
    if-eqz p2, :cond_1

    .line 523
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_1
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    .line 528
    return-void
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-direct {p0, p1}, Landroid/security/AndroidKeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Entry exists and is not a trusted certificate"

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 356
    :cond_0
    if-nez p2, :cond_1

    .line 357
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "cert == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 362
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 367
    .local v1, "encoded":[B
    iget-object v2, p0, Landroid/security/AndroidKeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v2

    if-nez v2, :cond_2

    .line 369
    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Couldn\'t insert certificate; is KeyStore initialized?"

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 363
    .end local v1    # "encoded":[B
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 371
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v1    # "encoded":[B
    :cond_2
    return-void
.end method

.method public engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/security/KeyStore$Entry;
    .param p3, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 533
    if-nez p2, :cond_0

    .line 534
    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "entry == null"

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 537
    :cond_0
    invoke-virtual {p0, p1}, Landroid/security/AndroidKeyStore;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 538
    invoke-virtual {p0, p1}, Landroid/security/AndroidKeyStore;->engineDeleteEntry(Ljava/lang/String;)V

    .line 541
    :cond_1
    instance-of v2, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-eqz v2, :cond_2

    move-object v1, p2

    .line 542
    check-cast v1, Ljava/security/KeyStore$TrustedCertificateEntry;

    .line 543
    .local v1, "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    invoke-virtual {v1}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/security/AndroidKeyStore;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 557
    .end local v1    # "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    .end local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :goto_0
    return-void

    .line 547
    .restart local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :cond_2
    if-eqz p3, :cond_3

    instance-of v2, p3, Landroid/security/KeyStoreParameter;

    if-nez v2, :cond_3

    .line 548
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "protParam should be android.security.KeyStoreParameter; was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 553
    :cond_3
    instance-of v2, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v2, :cond_4

    move-object v0, p2

    .line 554
    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 555
    .local v0, "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast p3, Landroid/security/KeyStoreParameter;

    .end local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    invoke-direct {p0, p1, v2, v3, p3}, Landroid/security/AndroidKeyStore;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Landroid/security/KeyStoreParameter;)V

    goto :goto_0

    .line 560
    .end local v0    # "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    .restart local p3    # "param":Ljava/security/KeyStore$ProtectionParameter;
    :cond_4
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entry must be a PrivateKeyEntry or TrustedCertificateEntry; was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 200
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 201
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "entries cannot be protected with passwords"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_1

    .line 205
    check-cast p2, Ljava/security/PrivateKey;

    .end local p2    # "key":Ljava/security/Key;
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p4, v0}, Landroid/security/AndroidKeyStore;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Landroid/security/KeyStoreParameter;)V

    .line 209
    return-void

    .line 207
    .restart local p2    # "key":Ljava/security/Key;
    :cond_1
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Only PrivateKeys are supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userKey"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Operation not supported because key encoding is unknown"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSize()I
    .locals 1

    .prologue
    .line 422
    invoke-direct {p0}, Landroid/security/AndroidKeyStore;->getUniqueAliases()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 2
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 512
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not serialize AndroidKeyStore to OutputStream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
