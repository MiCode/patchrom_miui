.class public final Lcom/google/zxing/common/CharacterSetECI;
.super Lcom/google/zxing/common/ECI;
.source "CharacterSetECI.java"


# static fields
.field private static NAME_TO_ECI:Ljava/util/Hashtable;

.field private static VALUE_TO_ECI:Ljava/util/Hashtable;


# instance fields
.field private final encodingName:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "value"
    .parameter "encodingName"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/zxing/common/ECI;-><init>(I)V

    .line 61
    iput-object p2, p0, Lcom/google/zxing/common/CharacterSetECI;->encodingName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private static addCharacterSet(ILjava/lang/String;)V
    .locals 3
    .parameter "value"
    .parameter "encodingName"

    .prologue
    .line 69
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    invoke-direct {v0, p0, p1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(ILjava/lang/String;)V

    .line 70
    .local v0, eci:Lcom/google/zxing/common/CharacterSetECI;
    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method private static addCharacterSet(I[Ljava/lang/String;)V
    .locals 4
    .parameter "value"
    .parameter "encodingNames"

    .prologue
    .line 75
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {v0, p0, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(ILjava/lang/String;)V

    .line 76
    .local v0, eci:Lcom/google/zxing/common/CharacterSetECI;
    sget-object v2, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 78
    sget-object v2, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Hashtable;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method public static getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1
    .parameter "name"

    .prologue
    .line 104
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lcom/google/zxing/common/CharacterSetECI;->initialize()V

    .line 107
    :cond_0
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/CharacterSetECI;

    return-object v0
.end method

.method private static initialize()V
    .locals 6

    .prologue
    const/16 v1, 0x1d

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Hashtable;

    .line 34
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Hashtable;

    .line 36
    const-string v0, "Cp437"

    invoke-static {v3, v0}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    .line 37
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "ISO8859_1"

    aput-object v1, v0, v3

    const-string v1, "ISO-8859-1"

    aput-object v1, v0, v4

    invoke-static {v4, v0}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;)V

    .line 38
    const-string v0, "Cp437"

    invoke-static {v5, v0}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    .line 39
    const/4 v0, 0x3

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ISO8859_1"

    aput-object v2, v1, v3

    const-string v2, "ISO-8859-1"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x4

    const-string v1, "ISO8859_2"

    invoke-static {v0, v1}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    .line 41
    const/4 v0, 0x5

    const-string v1, "ISO8859_3"

    invoke-static {v0, v1}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    .line 42
    const/4 v0, 0x6

    const-string v1, "ISO8859_4"

    invoke-static {v0, v1}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    .line 43
    const/4 v0, 0x7

    const-string v1, "ISO8859_5"

    invoke-static {v0, v1}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    .line 44
    const/16 v0, 0x8

    const-string v1, "ISO8859_6"

    invoke-static {v0, v1}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    .line 45
    const/16 v0, 0x9

    const-string v1, "ISO8859_7"

    invoke-static {v0, v1}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    .line 46
    const/16 v0, 0xa

    const-string v1, "ISO8859_8"

    invoke-static {v0, v1}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    .line 47
    const/16 v0, 0xb

    const-string v1, "ISO8859_9"

    invoke-static {v0, v1}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    .line 48
    const/16 v0, 0xc

    const-string v1, "ISO8859_10"

    invoke-static {v0, v1}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    .line 49
    const/16 v0, 0xd

    const-string v1, "ISO8859_11"

    invoke-static {v0, v1}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    .line 50
    const/16 v0, 0xf

    const-string v1, "ISO8859_13"

    invoke-static {v0, v1}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    .line 51
    const/16 v0, 0x10

    const-string v1, "ISO8859_14"

    invoke-static {v0, v1}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    .line 52
    const/16 v0, 0x11

    const-string v1, "ISO8859_15"

    invoke-static {v0, v1}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    .line 53
    const/16 v0, 0x12

    const-string v1, "ISO8859_16"

    invoke-static {v0, v1}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    .line 54
    const/16 v0, 0x14

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SJIS"

    aput-object v2, v1, v3

    const-string v2, "Shift_JIS"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;)V

    .line 55
    return-void
.end method
