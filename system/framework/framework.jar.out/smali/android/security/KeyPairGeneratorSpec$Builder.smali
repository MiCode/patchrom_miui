.class public final Landroid/security/KeyPairGeneratorSpec$Builder;
.super Ljava/lang/Object;
.source "KeyPairGeneratorSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyPairGeneratorSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEndDate:Ljava/util/Date;

.field private mFlags:I

.field private mKeySize:I

.field private mKeyType:Ljava/lang/String;

.field private mKeystoreAlias:Ljava/lang/String;

.field private mSerialNumber:Ljava/math/BigInteger;

.field private mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private mStartDate:Ljava/util/Date;

.field private mSubjectDN:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    const-string v0, "RSA"

    iput-object v0, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeyType:Ljava/lang/String;

    .line 333
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeySize:I

    .line 354
    if-nez p1, :cond_0

    .line 355
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mContext:Landroid/content/Context;

    .line 358
    return-void
.end method


# virtual methods
.method public build()Landroid/security/KeyPairGeneratorSpec;
    .locals 11

    .prologue
    .line 482
    new-instance v0, Landroid/security/KeyPairGeneratorSpec;

    iget-object v1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    iget-object v3, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeyType:Ljava/lang/String;

    iget v4, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeySize:I

    iget-object v5, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v6, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    iget-object v7, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSerialNumber:Ljava/math/BigInteger;

    iget-object v8, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mStartDate:Ljava/util/Date;

    iget-object v9, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mEndDate:Ljava/util/Date;

    iget v10, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mFlags:I

    invoke-direct/range {v0 .. v10}, Landroid/security/KeyPairGeneratorSpec;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;I)V

    return-object v0
.end method

.method public setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 2
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 410
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 413
    return-object p0
.end method

.method public setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 366
    if-nez p1, :cond_0

    .line 367
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_0
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeystoreAlias:Ljava/lang/String;

    .line 370
    return-object p0
.end method

.method public setEncryptionRequired()Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mFlags:I

    .line 472
    return-object p0
.end method

.method public setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 2
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    .line 457
    if-nez p1, :cond_0

    .line 458
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "endDate == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_0
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mEndDate:Ljava/util/Date;

    .line 461
    return-object p0
.end method

.method public setKeySize(I)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 2
    .param p1, "keySize"    # I

    .prologue
    .line 396
    if-gez p1, :cond_0

    .line 397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keySize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_0
    iput p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeySize:I

    .line 400
    return-object p0
.end method

.method public setKeyType(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 4
    .param p1, "keyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 377
    if-nez p1, :cond_0

    .line 378
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "keyType == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/security/KeyStore;->getKeyTypeForAlgorithm(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mKeyType:Ljava/lang/String;

    .line 387
    return-object p0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 2
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 433
    if-nez p1, :cond_0

    .line 434
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "serialNumber == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSerialNumber:Ljava/math/BigInteger;

    .line 437
    return-object p0
.end method

.method public setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 2
    .param p1, "startDate"    # Ljava/util/Date;

    .prologue
    .line 445
    if-nez p1, :cond_0

    .line 446
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "startDate == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_0
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mStartDate:Ljava/util/Date;

    .line 449
    return-object p0
.end method

.method public setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;
    .locals 2
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 421
    if-nez p1, :cond_0

    .line 422
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "subject == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec$Builder;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    .line 425
    return-object p0
.end method
