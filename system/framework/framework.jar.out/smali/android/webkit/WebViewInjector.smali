.class Landroid/webkit/WebViewInjector;
.super Ljava/lang/Object;
.source "WebViewInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initEgretLoader(Landroid/webkit/WebView;Landroid/content/Context;)V
    .locals 2
    .param p0, "wv"    # Landroid/webkit/WebView;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 7
    new-instance v0, Lorg/egret/plugin/mi/runtime/EgretLoader;

    invoke-direct {v0, p1}, Lorg/egret/plugin/mi/runtime/EgretLoader;-><init>(Landroid/content/Context;)V

    .line 8
    .local v0, "egret":Lorg/egret/plugin/mi/runtime/EgretLoader;
    invoke-virtual {v0}, Lorg/egret/plugin/mi/runtime/EgretLoader;->checkEgretContext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    const-string v1, "GameEngine"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    :cond_0
    return-void
.end method
