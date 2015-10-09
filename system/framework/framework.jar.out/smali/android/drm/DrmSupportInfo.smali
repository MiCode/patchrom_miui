.class public Landroid/drm/DrmSupportInfo;
.super Ljava/lang/Object;
.source "DrmSupportInfo.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private final mFileSuffixList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMimeTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addFileSuffix(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileSuffix"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string v0, ""

    if-ne p1, v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fileSuffix is an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public addMimeType(Ljava/lang/String;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mimeType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    const-string v0, ""

    if-ne p1, v0, :cond_1

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mimeType is an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 145
    instance-of v2, p1, Landroid/drm/DrmSupportInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 146
    check-cast v0, Landroid/drm/DrmSupportInfo;

    .line 147
    .local v0, "info":Landroid/drm/DrmSupportInfo;
    iget-object v2, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    iget-object v3, v0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 151
    .end local v0    # "info":Landroid/drm/DrmSupportInfo;
    :cond_0
    return v1
.end method

.method public getDescriprition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSuffixIterator()Ljava/util/Iterator;
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
    .line 84
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getMimeTypeIterator()Ljava/util/Iterator;
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
    .line 74
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method isSupportedFileSuffix(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileSuffix"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isSupportedMimeType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 162
    if-eqz p1, :cond_1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 163
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 164
    iget-object v2, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    .local v0, "completeMimeType":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    const/4 v2, 0x1

    .line 175
    .end local v0    # "completeMimeType":Ljava/lang/String;
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 163
    .restart local v0    # "completeMimeType":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v0    # "completeMimeType":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "description is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    const-string v0, ""

    if-ne p1, v0, :cond_1

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "description is an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    iput-object p1, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    .line 102
    return-void
.end method
