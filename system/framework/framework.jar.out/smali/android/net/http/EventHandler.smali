.class public interface abstract Landroid/net/http/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_AUTH:I = -0x4

.field public static final ERROR_BAD_URL:I = -0xc

.field public static final ERROR_CONNECT:I = -0x6

.field public static final ERROR_FAILED_SSL_HANDSHAKE:I = -0xb

.field public static final ERROR_IO:I = -0x7

.field public static final ERROR_LOOKUP:I = -0x2

.field public static final ERROR_PROXYAUTH:I = -0x5

.field public static final ERROR_REDIRECT_LOOP:I = -0x9

.field public static final ERROR_TIMEOUT:I = -0x8

.field public static final ERROR_UNSUPPORTED_AUTH_SCHEME:I = -0x3

.field public static final ERROR_UNSUPPORTED_SCHEME:I = -0xa

.field public static final FILE_ERROR:I = -0xd

.field public static final FILE_NOT_FOUND_ERROR:I = -0xe

.field public static final OK:I = 0x0

.field public static final TOO_MANY_REQUESTS_ERROR:I = -0xf


# virtual methods
.method public abstract certificate(Landroid/net/http/SslCertificate;)V
.end method

.method public abstract data([BI)V
.end method

.method public abstract endData()V
.end method

.method public abstract error(ILjava/lang/String;)V
.end method

.method public abstract handleSslErrorRequest(Landroid/net/http/SslError;)Z
.end method

.method public abstract headers(Landroid/net/http/Headers;)V
.end method

.method public abstract status(IIILjava/lang/String;)V
.end method
