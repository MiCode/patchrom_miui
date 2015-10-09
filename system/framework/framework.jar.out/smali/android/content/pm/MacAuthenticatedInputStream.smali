.class public Landroid/content/pm/MacAuthenticatedInputStream;
.super Ljava/io/FilterInputStream;
.source "MacAuthenticatedInputStream.java"


# instance fields
.field private final mMac:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Mac;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "mac"    # Ljavax/crypto/Mac;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    iput-object p2, p0, Landroid/content/pm/MacAuthenticatedInputStream;->mMac:Ljavax/crypto/Mac;

    .line 39
    return-void
.end method


# virtual methods
.method public isTagEqual([B)Z
    .locals 6
    .param p1, "tag"    # [B

    .prologue
    const/4 v3, 0x0

    .line 42
    iget-object v4, p0, Landroid/content/pm/MacAuthenticatedInputStream;->mMac:Ljavax/crypto/Mac;

    invoke-virtual {v4}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 44
    .local v0, "actualTag":[B
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    array-length v4, p1

    array-length v5, v0

    if-eq v4, v5, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v3

    .line 53
    :cond_1
    const/4 v2, 0x0

    .line 54
    .local v2, "value":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 55
    aget-byte v4, p1, v1

    aget-byte v5, v0, v1

    xor-int/2addr v4, v5

    or-int/2addr v2, v4

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 58
    :cond_2
    if-nez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 64
    .local v0, "b":I
    if-ltz v0, :cond_0

    .line 65
    iget-object v1, p0, Landroid/content/pm/MacAuthenticatedInputStream;->mMac:Ljavax/crypto/Mac;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->update(B)V

    .line 67
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 73
    .local v0, "numRead":I
    if-lez v0, :cond_0

    .line 74
    iget-object v1, p0, Landroid/content/pm/MacAuthenticatedInputStream;->mMac:Ljavax/crypto/Mac;

    invoke-virtual {v1, p1, p2, v0}, Ljavax/crypto/Mac;->update([BII)V

    .line 76
    :cond_0
    return v0
.end method
