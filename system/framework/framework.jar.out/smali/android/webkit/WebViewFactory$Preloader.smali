.class Landroid/webkit/WebViewFactory$Preloader;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Preloader"
.end annotation


# static fields
.field static sPreloadedProvider:Landroid/webkit/WebViewFactoryProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    :try_start_0
    # invokes: Landroid/webkit/WebViewFactory;->getFactoryClass()Ljava/lang/Class;
    invoke-static {}, Landroid/webkit/WebViewFactory;->access$000()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebViewFactoryProvider;

    sput-object v1, Landroid/webkit/WebViewFactory$Preloader;->sPreloadedProvider:Landroid/webkit/WebViewFactoryProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 45
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "WebViewFactory"

    const-string v2, "error preloading provider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
