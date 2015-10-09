.class public Landroid/content/pm/Signature;
.super Ljava/lang/Object;
.source "Signature.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHashCode:I

.field private mHaveHashCode:Z

.field private final mSignature:[B

.field private mStringRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Landroid/content/pm/Signature$1;

    invoke-direct {v0}, Landroid/content/pm/Signature$1;-><init>()V

    sput-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 202
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/Signature$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/Signature$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/content/pm/Signature;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 71
    .local v4, "input":[B
    array-length v0, v4

    .line 73
    .local v0, "N":I
    rem-int/lit8 v9, v0, 0x2

    if-eqz v9, :cond_0

    .line 74
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "text size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not even"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 77
    :cond_0
    div-int/lit8 v9, v0, 0x2

    new-array v6, v9, [B

    .line 78
    .local v6, "sig":[B
    const/4 v7, 0x0

    .line 80
    .local v7, "sigIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    move v8, v7

    .end local v7    # "sigIndex":I
    .local v8, "sigIndex":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 81
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v9, v4, v3

    invoke-static {v9}, Landroid/content/pm/Signature;->parseHexDigit(I)I

    move-result v1

    .line 82
    .local v1, "hi":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-byte v9, v4, v2

    invoke-static {v9}, Landroid/content/pm/Signature;->parseHexDigit(I)I

    move-result v5

    .line 83
    .local v5, "lo":I
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "sigIndex":I
    .restart local v7    # "sigIndex":I
    shl-int/lit8 v9, v1, 0x4

    or-int/2addr v9, v5

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    move v8, v7

    .line 84
    .end local v7    # "sigIndex":I
    .restart local v8    # "sigIndex":I
    goto :goto_0

    .line 86
    .end local v1    # "hi":I
    .end local v5    # "lo":I
    :cond_1
    iput-object v6, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 87
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "signature"    # [B

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 47
    return-void
.end method

.method public static areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 1
    .param p0, "a"    # [Landroid/content/pm/Signature;
    .param p1, "b"    # [Landroid/content/pm/Signature;

    .prologue
    .line 210
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lcom/android/internal/util/ArrayUtils;->containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final parseHexDigit(I)I
    .locals 3
    .param p0, "nibble"    # I

    .prologue
    .line 50
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 51
    add-int/lit8 v0, p0, -0x30

    .line 55
    :goto_0
    return v0

    .line 52
    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 53
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 54
    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 55
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in hex string"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 162
    if-eqz p1, :cond_1

    .line 163
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/content/pm/Signature;

    move-object v1, v0

    .line 164
    .local v1, "other":Landroid/content/pm/Signature;
    if-eq p0, v1, :cond_0

    iget-object v3, p0, Landroid/content/pm/Signature;->mSignature:[B

    iget-object v4, v1, Landroid/content/pm/Signature;->mSignature:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 168
    .end local v1    # "other":Landroid/content/pm/Signature;
    :cond_1
    :goto_0
    return v2

    .line 166
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 153
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 154
    .local v2, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Landroid/content/pm/Signature;->mSignature:[B

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 155
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 156
    .local v1, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    return-object v3
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Landroid/content/pm/Signature;->mHaveHashCode:Z

    if-eqz v0, :cond_0

    .line 174
    iget v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    .line 178
    :goto_0
    return v0

    .line 176
    :cond_0
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/Signature;->mHaveHashCode:Z

    .line 178
    iget v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    goto :goto_0
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v1, p0, Landroid/content/pm/Signature;->mSignature:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 141
    .local v0, "bytes":[B
    iget-object v1, p0, Landroid/content/pm/Signature;->mSignature:[B

    iget-object v2, p0, Landroid/content/pm/Signature;->mSignature:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    return-object v0
.end method

.method public toChars()[C
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0, v0}, Landroid/content/pm/Signature;->toChars([C[I)[C

    move-result-object v0

    return-object v0
.end method

.method public toChars([C[I)[C
    .locals 10
    .param p1, "existingArray"    # [C
    .param p2, "outLen"    # [I

    .prologue
    const/16 v9, 0xa

    .line 107
    iget-object v4, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 108
    .local v4, "sig":[B
    array-length v0, v4

    .line 109
    .local v0, "N":I
    mul-int/lit8 v1, v0, 0x2

    .line 110
    .local v1, "N2":I
    if-eqz p1, :cond_0

    array-length v7, p1

    if-le v1, v7, :cond_1

    :cond_0
    new-array v5, v1, [C

    .line 112
    .local v5, "text":[C
    :goto_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 113
    aget-byte v6, v4, v3

    .line 114
    .local v6, "v":B
    shr-int/lit8 v7, v6, 0x4

    and-int/lit8 v2, v7, 0xf

    .line 115
    .local v2, "d":I
    mul-int/lit8 v8, v3, 0x2

    if-lt v2, v9, :cond_2

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_2
    int-to-char v7, v7

    aput-char v7, v5, v8

    .line 116
    and-int/lit8 v2, v6, 0xf

    .line 117
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v8, v7, 0x1

    if-lt v2, v9, :cond_3

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_3
    int-to-char v7, v7

    aput-char v7, v5, v8

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2    # "d":I
    .end local v3    # "j":I
    .end local v5    # "text":[C
    .end local v6    # "v":B
    :cond_1
    move-object v5, p1

    .line 110
    goto :goto_0

    .line 115
    .restart local v2    # "d":I
    .restart local v3    # "j":I
    .restart local v5    # "text":[C
    .restart local v6    # "v":B
    :cond_2
    add-int/lit8 v7, v2, 0x30

    goto :goto_2

    .line 117
    :cond_3
    add-int/lit8 v7, v2, 0x30

    goto :goto_3

    .line 119
    .end local v2    # "d":I
    .end local v6    # "v":B
    :cond_4
    if-eqz p2, :cond_5

    const/4 v7, 0x0

    aput v0, p2, v7

    .line 120
    :cond_5
    return-object v5
.end method

.method public toCharsString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    iget-object v2, p0, Landroid/content/pm/Signature;->mStringRef:Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 128
    .local v0, "str":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 133
    .end local v0    # "str":Ljava/lang/String;
    .local v1, "str":Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 127
    .end local v1    # "str":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Landroid/content/pm/Signature;->mStringRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    goto :goto_0

    .line 131
    .restart local v0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/String;

    .end local v0    # "str":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    .line 132
    .restart local v0    # "str":Ljava/lang/String;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/content/pm/Signature;->mStringRef:Ljava/lang/ref/SoftReference;

    move-object v1, v0

    .line 133
    .restart local v1    # "str":Ljava/lang/Object;
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 186
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 187
    return-void
.end method
