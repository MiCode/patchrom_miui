.class public final Landroid/security/KeyPairGeneratorSpec;
.super Ljava/lang/Object;
.source "KeyPairGeneratorSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyPairGeneratorSpec$Builder;
    }
.end annotation


# static fields
.field private static final DSA_DEFAULT_KEY_SIZE:I = 0x400

.field private static final DSA_MAX_KEY_SIZE:I = 0x2000

.field private static final DSA_MIN_KEY_SIZE:I = 0x200

.field private static final EC_DEFAULT_KEY_SIZE:I = 0x100

.field private static final EC_MAX_KEY_SIZE:I = 0x209

.field private static final EC_MIN_KEY_SIZE:I = 0xc0

.field private static final RSA_DEFAULT_KEY_SIZE:I = 0x800

.field private static final RSA_MAX_KEY_SIZE:I = 0x2000

.field private static final RSA_MIN_KEY_SIZE:I = 0x200


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEndDate:Ljava/util/Date;

.field private final mFlags:I

.field private final mKeySize:I

.field private final mKeyType:Ljava/lang/String;

.field private final mKeystoreAlias:Ljava/lang/String;

.field private final mSerialNumber:Ljava/math/BigInteger;

.field private final mSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final mStartDate:Ljava/util/Date;

.field private final mSubjectDN:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyStoreAlias"    # Ljava/lang/String;
    .param p3, "keyType"    # Ljava/lang/String;
    .param p4, "keySize"    # I
    .param p5, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p6, "subjectDN"    # Ljavax/security/auth/x500/X500Principal;
    .param p7, "serialNumber"    # Ljava/math/BigInteger;
    .param p8, "startDate"    # Ljava/util/Date;
    .param p9, "endDate"    # Ljava/util/Date;
    .param p10, "flags"    # I

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "keyStoreAlias must not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_1
    if-nez p6, :cond_2

    .line 137
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "subjectDN == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_2
    if-nez p7, :cond_3

    .line 139
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "serialNumber == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_3
    if-nez p8, :cond_4

    .line 141
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "startDate == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_4
    if-nez p9, :cond_5

    .line 143
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "endDate == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_5
    invoke-virtual {p9, p8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 145
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "endDate < startDate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_6
    invoke-static {p3}, Landroid/security/KeyStore;->getKeyTypeForAlgorithm(Ljava/lang/String;)I

    move-result v0

    .line 149
    .local v0, "keyTypeInt":I
    const/4 v1, -0x1

    if-ne p4, v1, :cond_7

    .line 150
    invoke-static {v0}, Landroid/security/KeyPairGeneratorSpec;->getDefaultKeySizeForType(I)I

    move-result p4

    .line 152
    :cond_7
    invoke-static {v0, p4, p5}, Landroid/security/KeyPairGeneratorSpec;->checkCorrectParametersSpec(IILjava/security/spec/AlgorithmParameterSpec;)V

    .line 153
    invoke-static {v0, p4}, Landroid/security/KeyPairGeneratorSpec;->checkValidKeySize(II)V

    .line 155
    iput-object p1, p0, Landroid/security/KeyPairGeneratorSpec;->mContext:Landroid/content/Context;

    .line 156
    iput-object p2, p0, Landroid/security/KeyPairGeneratorSpec;->mKeystoreAlias:Ljava/lang/String;

    .line 157
    iput-object p3, p0, Landroid/security/KeyPairGeneratorSpec;->mKeyType:Ljava/lang/String;

    .line 158
    iput p4, p0, Landroid/security/KeyPairGeneratorSpec;->mKeySize:I

    .line 159
    iput-object p5, p0, Landroid/security/KeyPairGeneratorSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 160
    iput-object p6, p0, Landroid/security/KeyPairGeneratorSpec;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    .line 161
    iput-object p7, p0, Landroid/security/KeyPairGeneratorSpec;->mSerialNumber:Ljava/math/BigInteger;

    .line 162
    iput-object p8, p0, Landroid/security/KeyPairGeneratorSpec;->mStartDate:Ljava/util/Date;

    .line 163
    iput-object p9, p0, Landroid/security/KeyPairGeneratorSpec;->mEndDate:Ljava/util/Date;

    .line 164
    iput p10, p0, Landroid/security/KeyPairGeneratorSpec;->mFlags:I

    .line 165
    return-void
.end method

.method private static checkCorrectParametersSpec(IILjava/security/spec/AlgorithmParameterSpec;)V
    .locals 4
    .param p0, "keyType"    # I
    .param p1, "keySize"    # I
    .param p2, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    .line 201
    const/16 v1, 0x74

    if-ne p0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 202
    instance-of v1, p2, Ljava/security/spec/DSAParameterSpec;

    if-nez v1, :cond_2

    .line 203
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DSA keys must have DSAParameterSpec specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_0
    const/4 v1, 0x6

    if-ne p0, v1, :cond_2

    if-eqz p2, :cond_2

    .line 206
    instance-of v1, p2, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 207
    check-cast v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    .line 208
    .local v0, "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    invoke-virtual {v0}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v1

    if-eq p1, v1, :cond_2

    .line 209
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RSA key size must match: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    .end local v0    # "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "RSA may only use RSAKeyGenParameterSpec"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_2
    return-void
.end method

.method private static checkValidKeySize(II)V
    .locals 3
    .param p0, "keyType"    # I
    .param p1, "keySize"    # I

    .prologue
    const/16 v2, 0x2000

    const/16 v1, 0x200

    .line 179
    const/16 v0, 0x74

    if-ne p0, v0, :cond_1

    .line 180
    if-lt p1, v1, :cond_0

    if-le p1, v2, :cond_6

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DSA keys must be >= 512 and <= 8192"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    const/16 v0, 0x198

    if-ne p0, v0, :cond_3

    .line 185
    const/16 v0, 0xc0

    if-lt p1, v0, :cond_2

    const/16 v0, 0x209

    if-le p1, v0, :cond_6

    .line 186
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EC keys must be >= 192 and <= 521"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_3
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    .line 190
    if-lt p1, v1, :cond_4

    if-le p1, v2, :cond_6

    .line 191
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RSA keys must be >= 512 and <= 8192"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_6
    return-void
.end method

.method private static getDefaultKeySizeForType(I)I
    .locals 3
    .param p0, "keyType"    # I

    .prologue
    .line 168
    const/16 v0, 0x74

    if-ne p0, v0, :cond_0

    .line 169
    const/16 v0, 0x400

    .line 173
    :goto_0
    return v0

    .line 170
    :cond_0
    const/16 v0, 0x198

    if-ne p0, v0, :cond_1

    .line 171
    const/16 v0, 0x100

    goto :goto_0

    .line 172
    :cond_1
    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    .line 173
    const/16 v0, 0x800

    goto :goto_0

    .line 175
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mEndDate:Ljava/util/Date;

    return-object v0
.end method

.method getFlags()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Landroid/security/KeyPairGeneratorSpec;->mFlags:I

    return v0
.end method

.method public getKeySize()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Landroid/security/KeyPairGeneratorSpec;->mKeySize:I

    return v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mKeyType:Ljava/lang/String;

    return-object v0
.end method

.method public getKeystoreAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mKeystoreAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mSerialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSubjectDN()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Landroid/security/KeyPairGeneratorSpec;->mSubjectDN:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public isEncryptionRequired()Z
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Landroid/security/KeyPairGeneratorSpec;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
