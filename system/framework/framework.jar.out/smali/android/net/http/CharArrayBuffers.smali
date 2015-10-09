.class Landroid/net/http/CharArrayBuffers;
.super Ljava/lang/Object;
.source "CharArrayBuffers.java"


# static fields
.field static final uppercaseAddon:C = ' '


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static containsIgnoreCaseTrimmed(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z
    .locals 10
    .param p0, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p1, "beginIndex"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 41
    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    .line 42
    .local v4, "len":I
    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->buffer()[C

    move-result-object v2

    .line 43
    .local v2, "chars":[C
    :goto_0
    if-ge p1, v4, :cond_0

    aget-char v9, v2, p1

    invoke-static {v9}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 44
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    .line 47
    .local v6, "size":I
    add-int v9, p1, v6

    if-lt v4, v9, :cond_2

    move v5, v7

    .line 48
    .local v5, "ok":Z
    :goto_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-eqz v5, :cond_4

    if-ge v3, v6, :cond_4

    .line 49
    add-int v9, p1, v3

    aget-char v0, v2, v9

    .line 50
    .local v0, "a":C
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 51
    .local v1, "b":C
    if-eq v0, v1, :cond_1

    .line 52
    invoke-static {v0}, Landroid/net/http/CharArrayBuffers;->toLower(C)C

    move-result v0

    .line 53
    invoke-static {v1}, Landroid/net/http/CharArrayBuffers;->toLower(C)C

    move-result v1

    .line 54
    if-ne v0, v1, :cond_3

    move v5, v7

    .line 48
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "a":C
    .end local v1    # "b":C
    .end local v3    # "j":I
    .end local v5    # "ok":Z
    :cond_2
    move v5, v8

    .line 47
    goto :goto_1

    .restart local v0    # "a":C
    .restart local v1    # "b":C
    .restart local v3    # "j":I
    .restart local v5    # "ok":Z
    :cond_3
    move v5, v8

    .line 54
    goto :goto_3

    .line 57
    .end local v0    # "a":C
    .end local v1    # "b":C
    :cond_4
    return v5
.end method

.method static setLowercaseIndexOf(Lorg/apache/http/util/CharArrayBuffer;I)I
    .locals 6
    .param p0, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p1, "ch"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "beginIndex":I
    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v3

    .line 68
    .local v3, "endIndex":I
    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->buffer()[C

    move-result-object v1

    .line 70
    .local v1, "chars":[C
    move v4, v0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 71
    aget-char v2, v1, v4

    .line 72
    .local v2, "current":C
    if-ne v2, p1, :cond_0

    .line 80
    .end local v2    # "current":C
    .end local v4    # "i":I
    :goto_1
    return v4

    .line 74
    .restart local v2    # "current":C
    .restart local v4    # "i":I
    :cond_0
    const/16 v5, 0x41

    if-lt v2, v5, :cond_1

    const/16 v5, 0x5a

    if-gt v2, v5, :cond_1

    .line 76
    add-int/lit8 v5, v2, 0x20

    int-to-char v2, v5

    .line 77
    aput-char v2, v1, v4

    .line 70
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 80
    .end local v2    # "current":C
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private static toLower(C)C
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 84
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    .line 85
    add-int/lit8 v0, p0, 0x20

    int-to-char p0, v0

    .line 87
    :cond_0
    return p0
.end method
