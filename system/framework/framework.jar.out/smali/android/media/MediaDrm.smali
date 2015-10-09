.class public final Landroid/media/MediaDrm;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaDrm$CryptoSession;,
        Landroid/media/MediaDrm$ProvisionRequest;,
        Landroid/media/MediaDrm$KeyRequest;,
        Landroid/media/MediaDrm$EventHandler;,
        Landroid/media/MediaDrm$OnEventListener;
    }
.end annotation


# static fields
.field private static final DRM_EVENT:I = 0xc8

.field public static final EVENT_KEY_EXPIRED:I = 0x3

.field public static final EVENT_KEY_REQUIRED:I = 0x2

.field public static final EVENT_PROVISION_REQUIRED:I = 0x1

.field public static final EVENT_VENDOR_DEFINED:I = 0x4

.field public static final KEY_TYPE_OFFLINE:I = 0x2

.field public static final KEY_TYPE_RELEASE:I = 0x3

.field public static final KEY_TYPE_STREAMING:I = 0x1

.field public static final PROPERTY_ALGORITHMS:Ljava/lang/String; = "algorithms"

.field public static final PROPERTY_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final PROPERTY_DEVICE_UNIQUE_ID:Ljava/lang/String; = "deviceUniqueId"

.field public static final PROPERTY_VENDOR:Ljava/lang/String; = "vendor"

.field public static final PROPERTY_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "MediaDrm"


# instance fields
.field private mEventHandler:Landroid/media/MediaDrm$EventHandler;

.field private mNativeContext:I

.field private mOnEventListener:Landroid/media/MediaDrm$OnEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 701
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 702
    invoke-static {}, Landroid/media/MediaDrm;->native_init()V

    .line 703
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 153
    new-instance v1, Landroid/media/MediaDrm$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaDrm$EventHandler;-><init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    .line 163
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/media/MediaDrm;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/media/MediaDrm;->native_setup(Ljava/lang/Object;[B)V

    .line 165
    return-void

    .line 154
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    new-instance v1, Landroid/media/MediaDrm$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaDrm$EventHandler;-><init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    goto :goto_0

    .line 157
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/media/MediaDrm;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaDrm;

    .prologue
    .line 96
    iget v0, p0, Landroid/media/MediaDrm;->mNativeContext:I

    return v0
.end method

.method static synthetic access$100(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnEventListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaDrm;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/media/MediaDrm;->mOnEventListener:Landroid/media/MediaDrm$OnEventListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaDrm;[BLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaDrm;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p0, p1, p2}, Landroid/media/MediaDrm;->setCipherAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/media/MediaDrm;[BLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaDrm;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p0, p1, p2}, Landroid/media/MediaDrm;->setMacAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/media/MediaDrm;[B[B[B[B)[B
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaDrm;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [B
    .param p3, "x3"    # [B
    .param p4, "x4"    # [B

    .prologue
    .line 96
    invoke-static {p0, p1, p2, p3, p4}, Landroid/media/MediaDrm;->encryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaDrm;[B[B[B[B)[B
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaDrm;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [B
    .param p3, "x3"    # [B
    .param p4, "x4"    # [B

    .prologue
    .line 96
    invoke-static {p0, p1, p2, p3, p4}, Landroid/media/MediaDrm;->decryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/MediaDrm;[B[B[B)[B
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaDrm;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [B
    .param p3, "x3"    # [B

    .prologue
    .line 96
    invoke-static {p0, p1, p2, p3}, Landroid/media/MediaDrm;->signNative(Landroid/media/MediaDrm;[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/MediaDrm;[B[B[B[B)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaDrm;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [B
    .param p3, "x3"    # [B
    .param p4, "x4"    # [B

    .prologue
    .line 96
    invoke-static {p0, p1, p2, p3, p4}, Landroid/media/MediaDrm;->verifyNative(Landroid/media/MediaDrm;[B[B[B[B)Z

    move-result v0

    return v0
.end method

.method private static final native decryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B
.end method

.method private static final native encryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B
.end method

.method private static final getByteArrayFromUUID(Ljava/util/UUID;)[B
    .locals 9
    .param p0, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 127
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    .line 128
    .local v3, "msb":J
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    .line 130
    .local v1, "lsb":J
    const/16 v6, 0x10

    new-array v5, v6, [B

    .line 131
    .local v5, "uuidBytes":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v6, 0x8

    if-ge v0, v6, :cond_0

    .line 132
    rsub-int/lit8 v6, v0, 0x7

    mul-int/lit8 v6, v6, 0x8

    ushr-long v6, v3, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 133
    add-int/lit8 v6, v0, 0x8

    rsub-int/lit8 v7, v0, 0x7

    mul-int/lit8 v7, v7, 0x8

    ushr-long v7, v1, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-object v5
.end method

.method public static final isCryptoSchemeSupported(Ljava/util/UUID;)Z
    .locals 2
    .param p0, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 111
    invoke-static {p0}, Landroid/media/MediaDrm;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/MediaDrm;->isCryptoSchemeSupportedNative([BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isCryptoSchemeSupported(Ljava/util/UUID;Ljava/lang/String;)Z
    .locals 1
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p0}, Landroid/media/MediaDrm;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/MediaDrm;->isCryptoSchemeSupportedNative([BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final native isCryptoSchemeSupportedNative([BLjava/lang/String;)Z
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup(Ljava/lang/Object;[B)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 4
    .param p0, "mediadrm_ref"    # Ljava/lang/Object;
    .param p1, "eventType"    # I
    .param p2, "extra"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 275
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "mediadrm_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaDrm;

    .line 276
    .local v1, "md":Landroid/media/MediaDrm;
    if-nez v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v2, v1, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, v1, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3, p1, p2, p3}, Landroid/media/MediaDrm$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 281
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/MediaDrm;->mEventHandler:Landroid/media/MediaDrm$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/MediaDrm$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private static final native setCipherAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V
.end method

.method private static final native setMacAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V
.end method

.method private static final native signNative(Landroid/media/MediaDrm;[B[B[B)[B
.end method

.method private static final native verifyNative(Landroid/media/MediaDrm;[B[B[B[B)Z
.end method


# virtual methods
.method public native closeSession([B)V
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 690
    invoke-direct {p0}, Landroid/media/MediaDrm;->native_finalize()V

    .line 691
    return-void
.end method

.method public getCryptoSession([BLjava/lang/String;Ljava/lang/String;)Landroid/media/MediaDrm$CryptoSession;
    .locals 6
    .param p1, "sessionId"    # [B
    .param p2, "cipherAlgorithm"    # Ljava/lang/String;
    .param p3, "macAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 685
    new-instance v0, Landroid/media/MediaDrm$CryptoSession;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaDrm$CryptoSession;-><init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm;[BLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public native getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation
.end method

.method public native getPropertyByteArray(Ljava/lang/String;)[B
.end method

.method public native getPropertyString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;
.end method

.method public native getSecureStops()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end method

.method public native openSession()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation
.end method

.method public native provideKeyResponse([B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public native provideProvisionResponse([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public native queryKeyStatus([B)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final native release()V
.end method

.method public native releaseSecureStops([B)V
.end method

.method public native removeKeys([B)V
.end method

.method public native restoreKeys([B[B)V
.end method

.method public setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaDrm$OnEventListener;

    .prologue
    .line 174
    iput-object p1, p0, Landroid/media/MediaDrm;->mOnEventListener:Landroid/media/MediaDrm$OnEventListener;

    .line 175
    return-void
.end method

.method public native setPropertyByteArray(Ljava/lang/String;[B)V
.end method

.method public native setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
.end method
