.class public Landroid/webkit/WebView;
.super Landroid/widget/AbsoluteLayout;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewDebug$HierarchyHandler;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$1;,
        Landroid/webkit/WebView$FindListenerDistributor;,
        Landroid/webkit/WebView$PrivateAccess;,
        Landroid/webkit/WebView$HitTestResult;,
        Landroid/webkit/WebView$PictureListener;,
        Landroid/webkit/WebView$FindListener;,
        Landroid/webkit/WebView$WebViewTransport;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "WebView"

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field private static sEnforceThreadChecking:Ljava/lang/Boolean;


# instance fields
.field private mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

.field private mProvider:Landroid/webkit/WebViewProvider;

.field private final mWebViewThread:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebView;->sEnforceThreadChecking:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 434
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 435
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 444
    sget v0, Lcom/android/internal/R$attr;->webViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 445
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 455
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 456
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p5, "privateBrowsing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 498
    .local p4, "javaScriptInterfaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2072
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    .line 499
    if-nez p1, :cond_0

    .line 500
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid context argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebView;->sEnforceThreadChecking:Ljava/lang/Boolean;

    .line 504
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 507
    invoke-direct {p0}, Landroid/webkit/WebView;->ensureProviderCreated()V

    .line 508
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p4, p5}, Landroid/webkit/WebViewProvider;->init(Ljava/util/Map;Z)V

    .line 510
    invoke-static {}, Landroid/webkit/CookieSyncManager;->setGetInstanceIsAllowed()V

    .line 513
    invoke-static {p0, p1}, Landroid/webkit/WebViewInjector;->initEgretLoader(Landroid/webkit/WebView;Landroid/content/Context;)V

    .line 516
    invoke-static {p1}, Lmiui/content/res/ThemeFontChangeHelper;->markWebViewCreated(Landroid/content/Context;)V

    .line 517
    return-void

    .line 502
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "privateBrowsing"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 475
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V

    .line 476
    return-void
.end method

.method static synthetic access$1001(Landroid/webkit/WebView;ILandroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    .line 249
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$101(Landroid/webkit/WebView;)I
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;

    .prologue
    .line 249
    invoke-super {p0}, Landroid/view/View;->getScrollBarStyle()I

    move-result v0

    return v0
.end method

.method static synthetic access$1101(Landroid/webkit/WebView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkit/WebView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 249
    invoke-virtual/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/webkit/WebView;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # I

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/webkit/WebView;IZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 249
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/webkit/WebView;)F
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVerticalScrollFactor()F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/webkit/WebView;)F
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollFactor()F

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/webkit/WebView;II)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 249
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$1800(Landroid/webkit/WebView;)I
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1901(Landroid/webkit/WebView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 249
    invoke-super/range {p0 .. p6}, Landroid/view/View;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method static synthetic access$2002(Landroid/webkit/WebView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # I

    .prologue
    .line 249
    iput p1, p0, Landroid/webkit/WebView;->mScrollX:I

    return p1
.end method

.method static synthetic access$201(Landroid/webkit/WebView;II)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 249
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method static synthetic access$2102(Landroid/webkit/WebView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # I

    .prologue
    .line 249
    iput p1, p0, Landroid/webkit/WebView;->mScrollY:I

    return p1
.end method

.method static synthetic access$301(Landroid/webkit/WebView;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/WebView;

    .prologue
    .line 249
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    return-void
.end method

.method static synthetic access$401(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$501(Landroid/webkit/WebView;ILandroid/os/Bundle;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 249
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$601(Landroid/webkit/WebView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;

    .prologue
    .line 249
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$701(Landroid/webkit/WebView;IIII)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 249
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$801(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$901(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private checkThread()V
    .locals 3

    .prologue
    .line 2077
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    if-eq v1, v2, :cond_0

    .line 2078
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A WebView method was called on thread \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "All WebView methods must be called on the same thread. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(Expected Looper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " called on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", FYI main Looper is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 2084
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "WebView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    invoke-static {v0}, Landroid/os/StrictMode;->onWebViewMethodCalledOnWrongThread(Ljava/lang/Throwable;)V

    .line 2087
    sget-object v1, Landroid/webkit/WebView;->sEnforceThreadChecking:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2088
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2091
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public static disablePlatformNotifications()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 691
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/WebViewFactoryProvider$Statics;->setPlatformNotificationsEnabled(Z)V

    .line 692
    return-void
.end method

.method public static enablePlatformNotifications()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 679
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/webkit/WebViewFactoryProvider$Statics;->setPlatformNotificationsEnabled(Z)V

    .line 680
    return-void
.end method

.method private ensureProviderCreated()V
    .locals 2

    .prologue
    .line 2060
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2061
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    if-nez v0, :cond_0

    .line 2064
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    new-instance v1, Landroid/webkit/WebView$PrivateAccess;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$PrivateAccess;-><init>(Landroid/webkit/WebView;)V

    invoke-interface {v0, p0, v1}, Landroid/webkit/WebViewFactoryProvider;->createWebView(Landroid/webkit/WebView;Landroid/webkit/WebView$PrivateAccess;)Landroid/webkit/WebViewProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    .line 2066
    :cond_0
    return-void
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "addr"    # Ljava/lang/String;

    .prologue
    .line 1546
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/webkit/WebViewFactoryProvider$Statics;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static freeMemoryForTests()V
    .locals 1

    .prologue
    .line 700
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider$Statics;->freeMemoryForTests()V

    .line 701
    return-void
.end method

.method private static declared-synchronized getFactory()Landroid/webkit/WebViewFactoryProvider;
    .locals 2

    .prologue
    .line 2069
    const-class v0, Landroid/webkit/WebView;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getPluginList()Landroid/webkit/PluginList;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1719
    const-class v1, Landroid/webkit/WebView;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/webkit/PluginList;

    invoke-direct {v0}, Landroid/webkit/PluginList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setWebContentsDebuggingEnabled(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 1707
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/webkit/WebViewFactoryProvider$Statics;->setWebContentsDebuggingEnabled(Z)V

    .line 1708
    return-void
.end method

.method private setupFindListenerIfNeeded()V
    .locals 2

    .prologue
    .line 2053
    iget-object v0, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    if-nez v0, :cond_0

    .line 2054
    new-instance v0, Landroid/webkit/WebView$FindListenerDistributor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/WebView$FindListenerDistributor;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    .line 2055
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    iget-object v1, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    invoke-interface {v0, v1}, Landroid/webkit/WebViewProvider;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    .line 2057
    :cond_0
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1665
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1667
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1668
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 967
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 968
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1
    .param p1, "steps"    # I

    .prologue
    .line 1007
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1008
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->canGoBackOrForward(I)Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 986
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 987
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public canZoomIn()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1816
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1817
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canZoomIn()Z

    move-result v0

    return v0
.end method

.method public canZoomOut()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1831
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1832
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canZoomOut()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1096
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1098
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public clearCache(Z)V
    .locals 1
    .param p1, "includeDiskFiles"    # Z

    .prologue
    .line 1393
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1395
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->clearCache(Z)V

    .line 1396
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 1405
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1407
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearFormData()V

    .line 1408
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 1414
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1416
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearHistory()V

    .line 1417
    return-void
.end method

.method public clearMatches()V
    .locals 1

    .prologue
    .line 1554
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1556
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearMatches()V

    .line 1557
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .prologue
    .line 1424
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1426
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearSslPreferences()V

    .line 1427
    return-void
.end method

.method public clearView()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1065
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1067
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearView()V

    .line 1068
    return-void
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 2139
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 2134
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 2159
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeScroll()V

    .line 2160
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 2154
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 2149
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 2144
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 1438
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1439
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public createPrintDocumentAdapter()Landroid/print/PrintDocumentAdapter;
    .locals 1

    .prologue
    .line 1114
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1116
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->createPrintDocumentAdapter()Landroid/print/PrintDocumentAdapter;

    move-result-object v0

    return-object v0
.end method

.method public debugDump()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1861
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1862
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 665
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 667
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->destroy()V

    .line 668
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2358
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->preDispatchDraw(Landroid/graphics/Canvas;)V

    .line 2359
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2360
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2326
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1567
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1568
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->documentHasImages(Landroid/os/Message;)V

    .line 1569
    return-void
.end method

.method public dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "level"    # I

    .prologue
    .line 1870
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V

    .line 1871
    return-void
.end method

.method public emulateShiftHeld()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1740
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1741
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .param p1, "script"    # Ljava/lang/String;
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

    .prologue
    .line 909
    .local p2, "resultCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 911
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->evaluateJavaScript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 912
    return-void
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 1
    .param p1, "find"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1482
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1484
    const-string v0, "findAll blocks UI: prefer findAllAsync"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 1485
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->findAll(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 1
    .param p1, "find"    # Ljava/lang/String;

    .prologue
    .line 1497
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1499
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->findAllAsync(Ljava/lang/String;)V

    .line 1500
    return-void
.end method

.method public findHierarchyView(Ljava/lang/String;I)Landroid/view/View;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .prologue
    .line 1879
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->findHierarchyView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public findNext(Z)V
    .locals 1
    .param p1, "forward"    # Z

    .prologue
    .line 1466
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1468
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->findNext(Z)V

    .line 1469
    return-void
.end method

.method public flingScroll(II)V
    .locals 1
    .param p1, "vx"    # I
    .param p2, "vy"    # I

    .prologue
    .line 1782
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1784
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->flingScroll(II)V

    .line 1785
    return-void
.end method

.method public freeMemory()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1381
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1383
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->freeMemory()V

    .line 1384
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2

    .prologue
    .line 2217
    iget-object v1, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v1}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v1

    invoke-interface {v1}, Landroid/webkit/WebViewProvider$ViewDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 2219
    .local v0, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .end local v0    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_0
    return-object v0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 579
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 580
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .prologue
    .line 1305
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1306
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .prologue
    .line 1317
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1273
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1274
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    .locals 1

    .prologue
    .line 1189
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1191
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .prologue
    .line 655
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 656
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .prologue
    .line 1250
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1251
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 1294
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1295
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getProgress()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1131
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1132
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScale()F

    move-result v0

    return v0
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 1691
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1692
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .prologue
    .line 1262
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1263
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .prologue
    .line 1235
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1236
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleTitleHeight()I
    .locals 1

    .prologue
    .line 568
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 569
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getVisibleTitleHeight()I

    move-result v0

    return v0
.end method

.method public getWebViewProvider()Landroid/webkit/WebViewProvider;
    .locals 1

    .prologue
    .line 1894
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    return-object v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1801
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1802
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getZoomControls()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 975
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 977
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->goBack()V

    .line 978
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1
    .param p1, "steps"    # I

    .prologue
    .line 1020
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1022
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->goBackOrForward(I)V

    .line 1023
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 994
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 996
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->goForward()V

    .line 997
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 1165
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1167
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->invokeZoomPicker()V

    .line 1168
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 1370
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 1029
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1030
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->isPrivateBrowsingEnabled()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 859
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 861
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .prologue
    .line 892
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 894
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/webkit/WebViewProvider;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 809
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 811
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->loadUrl(Ljava/lang/String;)V

    .line 812
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
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

    .prologue
    .line 798
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 800
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 801
    return-void
.end method

.method notifyFindDialogDismissed()V
    .locals 1

    .prologue
    .line 2017
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2018
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->notifyFindDialogDismissed()V

    .line 2019
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 2102
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onAttachedToWindow()V

    .line 2103
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onAttachedToWindow()V

    .line 2104
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1750
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "p"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1759
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2277
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2278
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 2282
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 2108
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDetachedFromWindow()V

    .line 2109
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onDetachedFromWindow()V

    .line 2110
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2267
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDraw(Landroid/graphics/Canvas;)V

    .line 2268
    return-void
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollBar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I

    .prologue
    .line 2251
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 2252
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2302
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2303
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2304
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2174
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "oldFocus"    # Landroid/view/View;
    .param p2, "newFocus"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1769
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2164
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2237
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2238
    const-class v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2239
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2240
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2230
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2231
    const-class v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2232
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2233
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2184
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2194
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2189
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2336
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    .line 2337
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onMeasure(II)V

    .line 2338
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 1
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 2256
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->onOverScrolled(IIZZ)V

    .line 2257
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1349
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1351
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->onPause()V

    .line 1352
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1358
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1360
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->onResume()V

    .line 1361
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 2320
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onScrollChanged(IIII)V

    .line 2321
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->onScrollChanged(IIII)V

    .line 2322
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ow"    # I
    .param p4, "oh"    # I

    .prologue
    .line 2314
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    .line 2315
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->onSizeChanged(IIII)V

    .line 2316
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2169
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2179
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 2287
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2290
    invoke-direct {p0}, Landroid/webkit/WebView;->ensureProviderCreated()V

    .line 2291
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2292
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 2296
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onWindowFocusChanged(Z)V

    .line 2297
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowFocusChanged(Z)V

    .line 2298
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 2261
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowVisibilityChanged(I)V

    .line 2262
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onWindowVisibilityChanged(I)V

    .line 2263
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 547
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 548
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->overlayHorizontalScrollbar()Z

    move-result v0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 557
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 558
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->overlayVerticalScrollbar()Z

    move-result v0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1
    .param p1, "bottom"    # Z

    .prologue
    .line 1052
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1054
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->pageDown(Z)Z

    move-result v0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1
    .param p1, "top"    # Z

    .prologue
    .line 1040
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1042
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->pageUp(Z)Z

    move-result v0

    return v0
.end method

.method public pauseTimers()V
    .locals 1

    .prologue
    .line 1326
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1328
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->pauseTimers()V

    .line 1329
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 2244
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 2272
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    .prologue
    .line 824
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 826
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->postUrl(Ljava/lang/String;[B)V

    .line 827
    return-void
.end method

.method public refreshPlugins(Z)V
    .locals 0
    .param p1, "reloadOpenPages"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1728
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1729
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 956
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 958
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->reload()V

    .line 959
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1678
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1680
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1681
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 2342
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2331
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 1
    .param p1, "hrefMsg"    # Landroid/os/Message;

    .prologue
    .line 1208
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1210
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 1211
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1221
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1223
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->requestImageRef(Landroid/os/Message;)V

    .line 1224
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "src"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 763
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 765
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 781
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 783
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public resumeTimers()V
    .locals 1

    .prologue
    .line 1336
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1338
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->resumeTimers()V

    .line 1339
    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 615
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 617
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "dest"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 745
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 747
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->savePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 728
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 730
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 920
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 922
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->saveWebArchive(Ljava/lang/String;)V

    .line 923
    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 1
    .param p1, "basename"    # Ljava/lang/String;
    .param p2, "autoname"    # Z
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

    .prologue
    .line 938
    .local p3, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 940
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    .line 941
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 2347
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setBackgroundColor(I)V

    .line 2348
    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1
    .param p1, "certificate"    # Landroid/net/http/SslCertificate;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 591
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 593
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setCertificate(Landroid/net/http/SslCertificate;)V

    .line 594
    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/webkit/DownloadListener;

    .prologue
    .line 1590
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1591
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 1592
    return-void
.end method

.method setFindDialogFindListener(Landroid/webkit/WebView$FindListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/webkit/WebView$FindListener;

    .prologue
    .line 2010
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2011
    invoke-direct {p0}, Landroid/webkit/WebView;->setupFindListenerIfNeeded()V

    .line 2012
    iget-object v0, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    # setter for: Landroid/webkit/WebView$FindListenerDistributor;->mFindDialogFindListener:Landroid/webkit/WebView$FindListener;
    invoke-static {v0, p1}, Landroid/webkit/WebView$FindListenerDistributor;->access$2202(Landroid/webkit/WebView$FindListenerDistributor;Landroid/webkit/WebView$FindListener;)Landroid/webkit/WebView$FindListener;

    .line 2013
    return-void
.end method

.method public setFindListener(Landroid/webkit/WebView$FindListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/webkit/WebView$FindListener;

    .prologue
    .line 1450
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1451
    invoke-direct {p0}, Landroid/webkit/WebView;->setupFindListenerIfNeeded()V

    .line 1452
    iget-object v0, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    # setter for: Landroid/webkit/WebView$FindListenerDistributor;->mUserFindListener:Landroid/webkit/WebView$FindListener;
    invoke-static {v0, p1}, Landroid/webkit/WebView$FindListenerDistributor;->access$002(Landroid/webkit/WebView$FindListenerDistributor;Landroid/webkit/WebView$FindListener;)Landroid/webkit/WebView$FindListener;

    .line 1453
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2309
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 1
    .param p1, "overlay"    # Z

    .prologue
    .line 525
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 527
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setHorizontalScrollbarOverlay(Z)V

    .line 528
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 635
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 637
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1
    .param p1, "scaleInPercent"    # I

    .prologue
    .line 1154
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1156
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setInitialScale(I)V

    .line 1157
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 2352
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2353
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2354
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2114
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2115
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 1
    .param p1, "setMap"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1776
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1777
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setMapTrackballToArrowKeys(Z)V

    .line 1778
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1
    .param p1, "networkUp"    # Z

    .prologue
    .line 711
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 713
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setNetworkAvailable(Z)V

    .line 714
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 2119
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setOverScrollMode(I)V

    .line 2122
    invoke-direct {p0}, Landroid/webkit/WebView;->ensureProviderCreated()V

    .line 2123
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setOverScrollMode(I)V

    .line 2124
    return-void
.end method

.method public setPictureListener(Landroid/webkit/WebView$PictureListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/webkit/WebView$PictureListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1615
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1617
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 1618
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 2128
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setScrollBarStyle(I)V

    .line 2129
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setScrollBarStyle(I)V

    .line 2130
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 1
    .param p1, "overlay"    # Z

    .prologue
    .line 536
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 538
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setVerticalScrollbarOverlay(Z)V

    .line 539
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebChromeClient;

    .prologue
    .line 1602
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1603
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1604
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 1578
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1579
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1580
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2225
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->shouldDelayChildPressedState()Z

    move-result v0

    return v0
.end method

.method public showFindDialog(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "showIme"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1518
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1520
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->showFindDialog(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 947
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 949
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->stopLoading()V

    .line 950
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 1841
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1842
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 1851
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1852
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->zoomOut()Z

    move-result v0

    return v0
.end method
