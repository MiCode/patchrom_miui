.class Landroid/net/http/SSLConnectionClosedByUserException;
.super Ljavax/net/ssl/SSLException;
.source "HttpsConnection.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 432
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 433
    return-void
.end method
