.class public Landroid/webkit/MimeTypeMap;
.super Ljava/lang/Object;
.source "MimeTypeMap.java"


# static fields
.field private static final sMimeTypeMap:Landroid/webkit/MimeTypeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Landroid/webkit/MimeTypeMap;

    invoke-direct {v0}, Landroid/webkit/MimeTypeMap;-><init>()V

    sput-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 45
    const/16 v5, 0x23

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 46
    .local v3, "fragment":I
    if-lez v3, :cond_0

    .line 47
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 50
    :cond_0
    const/16 v5, 0x3f

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 51
    .local v4, "query":I
    if-lez v4, :cond_1

    .line 52
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 55
    :cond_1
    const/16 v5, 0x2f

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 56
    .local v2, "filenamePos":I
    if-ltz v2, :cond_2

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "filename":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "[a-zA-Z_0-9\\.\\-\\(\\)\\%]+"

    invoke-static {v5, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 63
    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 64
    .local v0, "dotPos":I
    if-ltz v0, :cond_3

    .line 65
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 70
    .end local v0    # "dotPos":I
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "filenamePos":I
    .end local v3    # "fragment":I
    .end local v4    # "query":I
    :goto_1
    return-object v5

    .restart local v2    # "filenamePos":I
    .restart local v3    # "fragment":I
    .restart local v4    # "query":I
    :cond_2
    move-object v1, p0

    .line 56
    goto :goto_0

    .line 70
    .end local v2    # "filenamePos":I
    .end local v3    # "fragment":I
    .end local v4    # "query":I
    :cond_3
    const-string v5, ""

    goto :goto_1
.end method

.method public static getSingleton()Landroid/webkit/MimeTypeMap;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    return-object v0
.end method

.method private static mimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {p0}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {p1}, Llibcore/net/MimeUtils;->guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {p1}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasExtension(Ljava/lang/String;)Z
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {p1}, Llibcore/net/MimeUtils;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p1}, Llibcore/net/MimeUtils;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string/jumbo v3, "text/plain"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "application/octet-stream"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 135
    :cond_0
    const/4 v1, 0x0

    .line 136
    .local v1, "filename":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 137
    invoke-static {p3}, Landroid/webkit/URLUtil;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    :cond_1
    if-eqz v1, :cond_2

    .line 140
    move-object p2, v1

    .line 142
    :cond_2
    invoke-static {p2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "newMimeType":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 145
    move-object p1, v2

    .line 157
    .end local v0    # "extension":Ljava/lang/String;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "newMimeType":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object p1

    .line 147
    :cond_4
    const-string/jumbo v3, "text/vnd.wap.wml"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 149
    const-string/jumbo p1, "text/plain"

    goto :goto_0

    .line 153
    :cond_5
    const-string v3, "application/vnd.wap.xhtml+xml"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 154
    const-string p1, "application/xhtml+xml"

    goto :goto_0
.end method
