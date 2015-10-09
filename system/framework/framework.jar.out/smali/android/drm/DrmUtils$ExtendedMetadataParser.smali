.class public Landroid/drm/DrmUtils$ExtendedMetadataParser;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendedMetadataParser"
.end annotation


# instance fields
.field mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([B)V
    .locals 6
    .param p1, "constraintData"    # [B

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/drm/DrmUtils$ExtendedMetadataParser;->mMap:Ljava/util/HashMap;

    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "index":I
    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_1

    .line 157
    invoke-direct {p0, p1, v0}, Landroid/drm/DrmUtils$ExtendedMetadataParser;->readByte([BI)I

    move-result v1

    .line 158
    .local v1, "keyLength":I
    add-int/lit8 v0, v0, 0x1

    .line 161
    invoke-direct {p0, p1, v0}, Landroid/drm/DrmUtils$ExtendedMetadataParser;->readByte([BI)I

    move-result v4

    .line 162
    .local v4, "valueLength":I
    add-int/lit8 v0, v0, 0x1

    .line 165
    invoke-direct {p0, p1, v1, v0}, Landroid/drm/DrmUtils$ExtendedMetadataParser;->readMultipleBytes([BII)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "strKey":Ljava/lang/String;
    add-int/2addr v0, v1

    .line 169
    invoke-direct {p0, p1, v4, v0}, Landroid/drm/DrmUtils$ExtendedMetadataParser;->readMultipleBytes([BII)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "strValue":Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    const-string v3, ""

    .line 173
    :cond_0
    add-int/2addr v0, v4

    .line 174
    iget-object v5, p0, Landroid/drm/DrmUtils$ExtendedMetadataParser;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 176
    .end local v1    # "keyLength":I
    .end local v2    # "strKey":Ljava/lang/String;
    .end local v3    # "strValue":Ljava/lang/String;
    .end local v4    # "valueLength":I
    :cond_1
    return-void
.end method

.method synthetic constructor <init>([BLandroid/drm/DrmUtils$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # Landroid/drm/DrmUtils$1;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/drm/DrmUtils$ExtendedMetadataParser;-><init>([B)V

    return-void
.end method

.method private readByte([BI)I
    .locals 1
    .param p1, "constraintData"    # [B
    .param p2, "arrayIndex"    # I

    .prologue
    .line 135
    aget-byte v0, p1, p2

    return v0
.end method

.method private readMultipleBytes([BII)Ljava/lang/String;
    .locals 4
    .param p1, "constraintData"    # [B
    .param p2, "numberOfBytes"    # I
    .param p3, "arrayIndex"    # I

    .prologue
    .line 140
    new-array v2, p2, [B

    .line 141
    .local v2, "returnBytes":[B
    move v1, p3

    .local v1, "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int v3, p3, p2

    if-ge v1, v3, :cond_0

    .line 142
    aget-byte v3, p1, v1

    aput-byte v3, v2, v0

    .line 141
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Landroid/drm/DrmUtils$ExtendedMetadataParser;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Landroid/drm/DrmUtils$ExtendedMetadataParser;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public keyIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Landroid/drm/DrmUtils$ExtendedMetadataParser;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
