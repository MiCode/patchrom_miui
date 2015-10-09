.class public Landroid/net/http/LoggingEventHandler;
.super Ljava/lang/Object;
.source "LoggingEventHandler.java"

# interfaces
.implements Landroid/net/http/EventHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public certificate(Landroid/net/http/SslCertificate;)V
    .locals 0
    .param p1, "certificate"    # Landroid/net/http/SslCertificate;

    .prologue
    .line 76
    return-void
.end method

.method public data([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 65
    return-void
.end method

.method public endData()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public error(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 83
    return-void
.end method

.method public handleSslErrorRequest(Landroid/net/http/SslError;)Z
    .locals 1
    .param p1, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public headers(Landroid/net/http/Headers;)V
    .locals 0
    .param p1, "headers"    # Landroid/net/http/Headers;

    .prologue
    .line 51
    return-void
.end method

.method public locationChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "newLocation"    # Ljava/lang/String;
    .param p2, "permanent"    # Z

    .prologue
    .line 58
    return-void
.end method

.method public requestSent()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "LoggingEventHandler:requestSent()"

    invoke-static {v0}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public status(IIILjava/lang/String;)V
    .locals 0
    .param p1, "major_version"    # I
    .param p2, "minor_version"    # I
    .param p3, "code"    # I
    .param p4, "reason_phrase"    # Ljava/lang/String;

    .prologue
    .line 44
    return-void
.end method
