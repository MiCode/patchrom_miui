.class public final Landroid/webkit/CookieSyncManager;
.super Landroid/webkit/WebSyncManager;
.source "CookieSyncManager.java"


# static fields
.field private static sGetInstanceAllowed:Z

.field private static sRef:Landroid/webkit/CookieSyncManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/CookieSyncManager;->sGetInstanceAllowed:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "CookieSyncManager"

    invoke-direct {p0, v0}, Landroid/webkit/WebSyncManager;-><init>(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method private static checkInstanceIsAllowed()V
    .locals 2

    .prologue
    .line 123
    sget-boolean v0, Landroid/webkit/CookieSyncManager;->sGetInstanceAllowed:Z

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CookieSyncManager::createInstance() needs to be called before CookieSyncManager::getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const-class v1, Landroid/webkit/CookieSyncManager;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 90
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid context argument"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 93
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->setGetInstanceIsAllowed()V

    .line 94
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getInstance()Landroid/webkit/CookieSyncManager;
    .locals 2

    .prologue
    .line 76
    const-class v1, Landroid/webkit/CookieSyncManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->checkInstanceIsAllowed()V

    .line 77
    sget-object v0, Landroid/webkit/CookieSyncManager;->sRef:Landroid/webkit/CookieSyncManager;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Landroid/webkit/CookieSyncManager;

    invoke-direct {v0}, Landroid/webkit/CookieSyncManager;-><init>()V

    sput-object v0, Landroid/webkit/CookieSyncManager;->sRef:Landroid/webkit/CookieSyncManager;

    .line 80
    :cond_0
    sget-object v0, Landroid/webkit/CookieSyncManager;->sRef:Landroid/webkit/CookieSyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static setGetInstanceIsAllowed()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkit/CookieSyncManager;->sGetInstanceAllowed:Z

    .line 117
    return-void
.end method


# virtual methods
.method public bridge synthetic resetSync()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/webkit/WebSyncManager;->resetSync()V

    return-void
.end method

.method public bridge synthetic run()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/webkit/WebSyncManager;->run()V

    return-void
.end method

.method public bridge synthetic startSync()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/webkit/WebSyncManager;->startSync()V

    return-void
.end method

.method public bridge synthetic stopSync()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/webkit/WebSyncManager;->stopSync()V

    return-void
.end method

.method public bridge synthetic sync()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/webkit/WebSyncManager;->sync()V

    return-void
.end method

.method protected syncFromRamToFlash()V
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 104
    .local v0, "manager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flushCookieStore()V

    goto :goto_0
.end method
