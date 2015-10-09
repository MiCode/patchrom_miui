.class public Landroid/content/pm/ContainerEncryptionParams;
.super Ljava/lang/Object;
.source "ContainerEncryptionParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ContainerEncryptionParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENC_PARAMS_IV_PARAMETERS:I = 0x1

.field private static final MAC_PARAMS_NONE:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "ContainerEncryptionParams"

.field private static final TO_STRING_PREFIX:Ljava/lang/String; = "ContainerEncryptionParams{"


# instance fields
.field private final mAuthenticatedDataStart:J

.field private final mDataEnd:J

.field private final mEncryptedDataStart:J

.field private final mEncryptionAlgorithm:Ljava/lang/String;

.field private final mEncryptionKey:Ljavax/crypto/SecretKey;

.field private final mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

.field private final mMacAlgorithm:Ljava/lang/String;

.field private final mMacKey:Ljavax/crypto/SecretKey;

.field private final mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final mMacTag:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 365
    new-instance v0, Landroid/content/pm/ContainerEncryptionParams$1;

    invoke-direct {v0}, Landroid/content/pm/ContainerEncryptionParams$1;-><init>()V

    sput-object v0, Landroid/content/pm/ContainerEncryptionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 328
    .local v0, "encParamType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 329
    .local v1, "encParamsEncoded":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljavax/crypto/SecretKey;

    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 333
    .local v2, "macParamType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljavax/crypto/SecretKey;

    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    .line 342
    packed-switch v0, :pswitch_data_0

    .line 347
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown parameter type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 344
    :pswitch_0
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    .line 351
    packed-switch v2, :pswitch_data_1

    .line 356
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown parameter type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 353
    :pswitch_1
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 360
    iget-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    if-nez v3, :cond_0

    .line 361
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "encryptionKey == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 363
    :cond_0
    return-void

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 351
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ContainerEncryptionParams$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/ContainerEncryptionParams$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/content/pm/ContainerEncryptionParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;)V
    .locals 14
    .param p1, "encryptionAlgorithm"    # Ljava/lang/String;
    .param p2, "encryptionSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "encryptionKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v13}, Landroid/content/pm/ContainerEncryptionParams;-><init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;[BJJJ)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;[BJJJ)V
    .locals 2
    .param p1, "encryptionAlgorithm"    # Ljava/lang/String;
    .param p2, "encryptionSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "encryptionKey"    # Ljavax/crypto/SecretKey;
    .param p4, "macAlgorithm"    # Ljava/lang/String;
    .param p5, "macSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p6, "macKey"    # Ljavax/crypto/SecretKey;
    .param p7, "macTag"    # [B
    .param p8, "authenticatedDataStart"    # J
    .param p10, "encryptedDataStart"    # J
    .param p12, "dataEnd"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "algorithm == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    if-nez p2, :cond_1

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encryptionSpec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    if-nez p3, :cond_2

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encryptionKey == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 125
    if-nez p6, :cond_3

    .line 126
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "macKey == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_3
    instance-of v0, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-nez v0, :cond_4

    .line 131
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Unknown parameter spec class; must be IvParameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_4
    iput-object p1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    .line 136
    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    .end local p2    # "encryptionSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iput-object p2, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    .line 137
    iput-object p3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    .line 139
    iput-object p4, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    .line 140
    iput-object p5, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 141
    iput-object p6, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    .line 142
    iput-object p7, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    .line 144
    iput-wide p8, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    .line 145
    iput-wide p10, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    .line 146
    iput-wide p12, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    .line 147
    return-void
.end method

.method private static final isSecretKeyEqual(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Z
    .locals 5
    .param p0, "key1"    # Ljavax/crypto/SecretKey;
    .param p1, "key2"    # Ljavax/crypto/SecretKey;

    .prologue
    const/4 v2, 0x0

    .line 234
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "keyFormat":Ljava/lang/String;
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "otherKeyFormat":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 238
    if-eq v0, v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v2

    .line 242
    :cond_1
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 255
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 246
    :cond_3
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 196
    if-ne p0, p1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v1

    .line 200
    :cond_1
    instance-of v3, p1, Landroid/content/pm/ContainerEncryptionParams;

    if-nez v3, :cond_2

    move v1, v2

    .line 201
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 204
    check-cast v0, Landroid/content/pm/ContainerEncryptionParams;

    .line 207
    .local v0, "other":Landroid/content/pm/ContainerEncryptionParams;
    iget-wide v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    iget-wide v5, v0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    iget-wide v5, v0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    iget-wide v5, v0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    .line 210
    goto :goto_0

    .line 214
    :cond_4
    iget-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    move v1, v2

    .line 216
    goto :goto_0

    .line 220
    :cond_6
    iget-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    iget-object v4, v0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-static {v3, v4}, Landroid/content/pm/ContainerEncryptionParams;->isSecretKeyEqual(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    iget-object v4, v0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    invoke-static {v3, v4}, Landroid/content/pm/ContainerEncryptionParams;->isSecretKeyEqual(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    move v1, v2

    .line 222
    goto :goto_0

    .line 225
    :cond_8
    iget-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    iget-object v4, v0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v4, v0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    if-eq v3, v4, :cond_0

    :cond_9
    move v1, v2

    .line 227
    goto :goto_0
.end method

.method public getAuthenticatedDataStart()J
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    return-wide v0
.end method

.method public getDataEnd()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    return-wide v0
.end method

.method public getEncryptedDataStart()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    return-wide v0
.end method

.method public getEncryptionAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getEncryptionSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    return-object v0
.end method

.method public getMacAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getMacKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getMacSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public getMacTag()[B
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 260
    const/4 v0, 0x3

    .line 262
    .local v0, "hash":I
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    .line 263
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    .line 264
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    .line 265
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 266
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    .line 267
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 268
    int-to-long v1, v0

    const-wide/16 v3, 0x17

    iget-wide v5, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v0, v1

    .line 269
    int-to-long v1, v0

    const-wide/16 v3, 0x1d

    iget-wide v5, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v0, v1

    .line 270
    int-to-long v1, v0

    const-wide/16 v3, 0x1f

    iget-wide v5, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v0, v1

    .line 272
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContainerEncryptionParams{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "mEncryptionAlgorithm=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v1, "mEncryptionSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v1, "mEncryptionKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, "mMacAlgorithm=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v1, "mMacSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string v1, "mMacKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-object v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v1, ",mAuthenticatedDataStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget-wide v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 297
    const-string v1, ",mEncryptedDataStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-wide v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 299
    const-string v1, ",mDataEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-wide v1, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 301
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    .line 308
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 311
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 313
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 316
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 318
    iget-object v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mMacTag:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 320
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mAuthenticatedDataStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 321
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mEncryptedDataStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 322
    iget-wide v0, p0, Landroid/content/pm/ContainerEncryptionParams;->mDataEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 323
    return-void
.end method
