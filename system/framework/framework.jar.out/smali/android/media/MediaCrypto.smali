.class public final Landroid/media/MediaCrypto;
.super Ljava/lang/Object;
.source "MediaCrypto.java"


# instance fields
.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Landroid/media/MediaCrypto;->native_init()V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;[B)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "initData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Landroid/media/MediaCrypto;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/media/MediaCrypto;->native_setup([B[B)V

    .line 64
    return-void
.end method

.method private static final getByteArrayFromUUID(Ljava/util/UUID;)[B
    .locals 9
    .param p0, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    .line 43
    .local v3, "msb":J
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    .line 45
    .local v1, "lsb":J
    const/16 v6, 0x10

    new-array v5, v6, [B

    .line 46
    .local v5, "uuidBytes":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v6, 0x8

    if-ge v0, v6, :cond_0

    .line 47
    rsub-int/lit8 v6, v0, 0x7

    mul-int/lit8 v6, v6, 0x8

    ushr-long v6, v3, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 48
    add-int/lit8 v6, v0, 0x8

    rsub-int/lit8 v7, v0, 0x7

    mul-int/lit8 v7, v7, 0x8

    ushr-long v7, v1, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-object v5
.end method

.method public static final isCryptoSchemeSupported(Ljava/util/UUID;)Z
    .locals 1
    .param p0, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 38
    invoke-static {p0}, Landroid/media/MediaCrypto;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCrypto;->isCryptoSchemeSupportedNative([B)Z

    move-result v0

    return v0
.end method

.method private static final native isCryptoSchemeSupportedNative([B)Z
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup([B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/media/MediaCrypto;->native_finalize()V

    .line 76
    return-void
.end method

.method public final native release()V
.end method

.method public final native requiresSecureDecoderComponent(Ljava/lang/String;)Z
.end method
