.class public interface abstract Landroid/webkit/WebViewProvider;
.super Ljava/lang/Object;
.source "WebViewProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewProvider$ScrollDelegate;,
        Landroid/webkit/WebViewProvider$ViewDelegate;
    }
.end annotation


# virtual methods
.method public abstract addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract canGoBack()Z
.end method

.method public abstract canGoBackOrForward(I)Z
.end method

.method public abstract canGoForward()Z
.end method

.method public abstract canZoomIn()Z
.end method

.method public abstract canZoomOut()Z
.end method

.method public abstract capturePicture()Landroid/graphics/Picture;
.end method

.method public abstract clearCache(Z)V
.end method

.method public abstract clearFormData()V
.end method

.method public abstract clearHistory()V
.end method

.method public abstract clearMatches()V
.end method

.method public abstract clearSslPreferences()V
.end method

.method public abstract clearView()V
.end method

.method public abstract copyBackForwardList()Landroid/webkit/WebBackForwardList;
.end method

.method public abstract createPrintDocumentAdapter()Landroid/print/PrintDocumentAdapter;
.end method

.method public abstract destroy()V
.end method

.method public abstract documentHasImages(Landroid/os/Message;)V
.end method

.method public abstract dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V
.end method

.method public abstract evaluateJavaScript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract findAll(Ljava/lang/String;)I
.end method

.method public abstract findAllAsync(Ljava/lang/String;)V
.end method

.method public abstract findHierarchyView(Ljava/lang/String;I)Landroid/view/View;
.end method

.method public abstract findNext(Z)V
.end method

.method public abstract flingScroll(II)V
.end method

.method public abstract freeMemory()V
.end method

.method public abstract getCertificate()Landroid/net/http/SslCertificate;
.end method

.method public abstract getContentHeight()I
.end method

.method public abstract getContentWidth()I
.end method

.method public abstract getFavicon()Landroid/graphics/Bitmap;
.end method

.method public abstract getHitTestResult()Landroid/webkit/WebView$HitTestResult;
.end method

.method public abstract getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getOriginalUrl()Ljava/lang/String;
.end method

.method public abstract getProgress()I
.end method

.method public abstract getScale()F
.end method

.method public abstract getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;
.end method

.method public abstract getSettings()Landroid/webkit/WebSettings;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTouchIconUrl()Ljava/lang/String;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;
.end method

.method public abstract getVisibleTitleHeight()I
.end method

.method public abstract getZoomControls()Landroid/view/View;
.end method

.method public abstract goBack()V
.end method

.method public abstract goBackOrForward(I)V
.end method

.method public abstract goForward()V
.end method

.method public abstract init(Ljava/util/Map;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract invokeZoomPicker()V
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isPrivateBrowsingEnabled()Z
.end method

.method public abstract loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loadUrl(Ljava/lang/String;)V
.end method

.method public abstract loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyFindDialogDismissed()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract overlayHorizontalScrollbar()Z
.end method

.method public abstract overlayVerticalScrollbar()Z
.end method

.method public abstract pageDown(Z)Z
.end method

.method public abstract pageUp(Z)Z
.end method

.method public abstract pauseTimers()V
.end method

.method public abstract postUrl(Ljava/lang/String;[B)V
.end method

.method public abstract reload()V
.end method

.method public abstract removeJavascriptInterface(Ljava/lang/String;)V
.end method

.method public abstract requestFocusNodeHref(Landroid/os/Message;)V
.end method

.method public abstract requestImageRef(Landroid/os/Message;)V
.end method

.method public abstract restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
.end method

.method public abstract restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
.end method

.method public abstract resumeTimers()V
.end method

.method public abstract savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
.end method

.method public abstract saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
.end method

.method public abstract saveWebArchive(Ljava/lang/String;)V
.end method

.method public abstract saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCertificate(Landroid/net/http/SslCertificate;)V
.end method

.method public abstract setDownloadListener(Landroid/webkit/DownloadListener;)V
.end method

.method public abstract setFindListener(Landroid/webkit/WebView$FindListener;)V
.end method

.method public abstract setHorizontalScrollbarOverlay(Z)V
.end method

.method public abstract setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setInitialScale(I)V
.end method

.method public abstract setMapTrackballToArrowKeys(Z)V
.end method

.method public abstract setNetworkAvailable(Z)V
.end method

.method public abstract setPictureListener(Landroid/webkit/WebView$PictureListener;)V
.end method

.method public abstract setVerticalScrollbarOverlay(Z)V
.end method

.method public abstract setWebChromeClient(Landroid/webkit/WebChromeClient;)V
.end method

.method public abstract setWebViewClient(Landroid/webkit/WebViewClient;)V
.end method

.method public abstract showFindDialog(Ljava/lang/String;Z)Z
.end method

.method public abstract stopLoading()V
.end method

.method public abstract zoomIn()Z
.end method

.method public abstract zoomOut()Z
.end method
