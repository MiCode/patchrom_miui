.class public Landroid/webkit/WebResourceResponse;
.super Ljava/lang/Object;
.source "WebResourceResponse.java"


# instance fields
.field private mEncoding:Ljava/lang/String;

.field private mInputStream:Ljava/io/InputStream;

.field private mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Landroid/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    .line 49
    return-void
.end method


# virtual methods
.method public getData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "data"    # Ljava/io/InputStream;

    .prologue
    .line 95
    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mInputStream:Ljava/io/InputStream;

    .line 96
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mEncoding:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Landroid/webkit/WebResourceResponse;->mMimeType:Ljava/lang/String;

    .line 58
    return-void
.end method
