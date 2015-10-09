.class public Landroid/webkit/WebView$WebViewTransport;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebViewTransport"
.end annotation


# instance fields
.field private mWebview:Landroid/webkit/WebView;

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Landroid/webkit/WebView$WebViewTransport;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebView$WebViewTransport;->mWebview:Landroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWebView(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "webview"    # Landroid/webkit/WebView;

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkit/WebView$WebViewTransport;->mWebview:Landroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    monitor-exit p0

    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
