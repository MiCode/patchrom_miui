.class public Landroid/hardware/camera2/impl/MetadataMarshalString;
.super Ljava/lang/Object;
.source "MetadataMarshalString.java"

# interfaces
.implements Landroid/hardware/camera2/impl/MetadataMarshalClass;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/impl/MetadataMarshalClass",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final UTF8_CHARSET:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/impl/MetadataMarshalString;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMarshalingClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNativeSize(I)I
    .locals 1
    .param p1, "nativeType"    # I

    .prologue
    .line 77
    const/4 v0, -0x1

    return v0
.end method

.method public isNativeTypeSupported(I)Z
    .locals 1
    .param p1, "nativeType"    # I

    .prologue
    .line 72
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;IZ)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/nio/ByteBuffer;
    .param p3, "x2"    # I
    .param p4, "x3"    # Z

    .prologue
    .line 21
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/MetadataMarshalString;->marshal(Ljava/lang/String;Ljava/nio/ByteBuffer;IZ)I

    move-result v0

    return v0
.end method

.method public marshal(Ljava/lang/String;Ljava/nio/ByteBuffer;IZ)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "nativeType"    # I
    .param p4, "sizeOnly"    # Z

    .prologue
    .line 27
    sget-object v1, Landroid/hardware/camera2/impl/MetadataMarshalString;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 29
    .local v0, "arr":[B
    if-nez p4, :cond_0

    .line 30
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 31
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 34
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/nio/ByteBuffer;
    .param p2, "x1"    # I

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/impl/MetadataMarshalString;->unmarshal(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "nativeType"    # I

    .prologue
    const/4 v5, 0x0

    .line 40
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "foundNull":Z
    const/4 v2, 0x0

    .line 44
    .local v2, "stringLength":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    if-nez v3, :cond_1

    .line 46
    const/4 v0, 0x1

    .line 52
    :cond_0
    if-nez v0, :cond_2

    .line 53
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Strings must be null-terminated"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 50
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 58
    add-int/lit8 v3, v2, 0x1

    new-array v1, v3, [B

    .line 59
    .local v1, "strBytes":[B
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v1, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 62
    new-instance v3, Ljava/lang/String;

    sget-object v4, Landroid/hardware/camera2/impl/MetadataMarshalString;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v5, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v3
.end method
