.class public Landroid/app/MobileDataUtils;
.super Landroid/app/BaseMobileDataUtils;
.source "MobileDataUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/BaseMobileDataUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/app/MobileDataUtils;
    .locals 3

    .prologue
    .line 13
    :try_start_0
    const-string/jumbo v2, "miui.msim.util.MSimMobileDataUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 14
    .local v1, "mobileDataUtilsFactory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/MobileDataUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-object v0

    .line 18
    :catch_0
    move-exception v2

    .line 21
    :cond_0
    new-instance v0, Landroid/app/MobileDataUtils;

    invoke-direct {v0}, Landroid/app/MobileDataUtils;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public enableMobileData(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isEnable"    # Z

    .prologue
    .line 32
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 34
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 35
    return-void
.end method

.method public registerContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/MobileDataUtils;->getMobileDataUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 29
    return-void
.end method
