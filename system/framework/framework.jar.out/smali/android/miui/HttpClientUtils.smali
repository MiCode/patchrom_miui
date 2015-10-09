.class public Landroid/miui/HttpClientUtils;
.super Ljava/lang/Object;
.source "HttpClientUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-static {}, Lcom/android/internal/os/RuntimeInitInjector;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
