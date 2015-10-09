.class public Landroid/content/pm/PackageHideManager;
.super Ljava/lang/Object;
.source "PackageHideManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageHideManager$AppHideItem;,
        Landroid/content/pm/PackageHideManager$AppHideConfig;
    }
.end annotation


# static fields
.field private static final APP_HIDE_SWITCH_FILE:Ljava/lang/String; = "/data/system/app_hide_switch.xml"

.field private static final APP_HIDE_SWITCH_FILE_VERSION:I = 0x2

.field private static TAG:Ljava/lang/String;

.field private static appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

.field private static mFile:Ljava/io/File;

.field private static volatile sInstance:Landroid/content/pm/PackageHideManager;


# instance fields
.field private mShouldHideApks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageHideManager$AppHideItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Landroid/content/pm/PackageHideManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "isFirstBoot"    # Z

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    .line 85
    invoke-direct {p0, p1}, Landroid/content/pm/PackageHideManager;->init(Z)V

    .line 86
    return-void
.end method

.method private clearUserAleadyInstalled(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 329
    iget-object v2, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageHideManager$AppHideItem;

    .line 330
    .local v1, "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    invoke-direct {p0, p1, v1}, Landroid/content/pm/PackageHideManager;->clearUserAleadyInstalled(Landroid/content/Context;Landroid/content/pm/PackageHideManager$AppHideItem;)V

    goto :goto_0

    .line 332
    .end local v1    # "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    :cond_0
    return-void
.end method

.method private clearUserAleadyInstalled(Landroid/content/Context;Landroid/content/pm/PackageHideManager$AppHideItem;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Landroid/content/pm/PackageHideManager$AppHideItem;

    .prologue
    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 337
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v7, p2, Landroid/content/pm/PackageHideManager$AppHideItem;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 339
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    iget-object v7, p2, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 340
    iget-object v1, p2, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v1, v3

    .line 341
    .local v6, "path":Ljava/lang/String;
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 344
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 346
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 351
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "path":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 354
    :cond_1
    return-void
.end method

.method public static getInstance(Z)Landroid/content/pm/PackageHideManager;
    .locals 2
    .param p0, "isFirstBoot"    # Z

    .prologue
    .line 74
    sget-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    if-nez v0, :cond_1

    .line 75
    const-class v1, Landroid/content/pm/PackageHideManager;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Landroid/content/pm/PackageHideManager;

    invoke-direct {v0, p0}, Landroid/content/pm/PackageHideManager;-><init>(Z)V

    sput-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    .line 79
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_1
    sget-object v0, Landroid/content/pm/PackageHideManager;->sInstance:Landroid/content/pm/PackageHideManager;

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private init(Z)V
    .locals 5
    .param p1, "isFirstBoot"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 89
    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/app_hide_switch.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    .line 93
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->readAppHideConfig()V

    .line 94
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-nez v0, :cond_2

    .line 95
    new-instance v0, Landroid/content/pm/PackageHideManager$AppHideConfig;

    invoke-direct {v0}, Landroid/content/pm/PackageHideManager$AppHideConfig;-><init>()V

    sput-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    .line 96
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean v3, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    .line 97
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean v3, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    .line 98
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput v2, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    .line 100
    :cond_2
    if-eqz p1, :cond_3

    .line 101
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean v4, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    .line 102
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean v4, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    .line 103
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->initHideApks()V

    .line 104
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->writeAppHideConfig()Z

    goto :goto_0

    .line 105
    :cond_3
    sget-object v0, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    if-eq v0, v2, :cond_0

    .line 108
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput v2, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    .line 109
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->initHideApks()V

    .line 110
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->writeAppHideConfig()Z

    goto :goto_0
.end method

.method private initHideApks()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 266
    iget-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 267
    iget-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    const-string v1, "com.xiaomi.market"

    new-instance v2, Landroid/content/pm/PackageHideManager$AppHideItem;

    const-string v3, "com.xiaomi.market"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "/system/app/MiuiSuperMarket.apk"

    aput-object v5, v4, v7

    const-string v5, "/system/app/MiuiSuperMarket"

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v6, v4}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    const-string v1, "com.xiaomi.gamecenter"

    new-instance v2, Landroid/content/pm/PackageHideManager$AppHideItem;

    const-string v3, "com.xiaomi.gamecenter"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "/system/app/GameCenter.apk"

    aput-object v5, v4, v7

    const-string v5, "/system/app/GameCenter"

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v6, v4}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    const-string v1, "com.xiaomi.o2o"

    new-instance v2, Landroid/content/pm/PackageHideManager$AppHideItem;

    const-string v3, "com.xiaomi.o2o"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "/data/app/O2O.apk"

    aput-object v5, v4, v7

    const-string v5, "/data/app/O2O"

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v6, v4}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    const-string v1, "com.tencent.mobileqq"

    new-instance v2, Landroid/content/pm/PackageHideManager$AppHideItem;

    const-string v3, "com.tencent.mobileqq"

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "/data/app/partner-QQ.apk"

    aput-object v5, v4, v7

    const-string v5, "/data/app/3rd-com.tencent.mobileqq.apk"

    aput-object v5, v4, v6

    const-string v5, "/data/app/3rd-com.tencent.mobileqq"

    aput-object v5, v4, v8

    const-string v5, "/data/app/partner-QQ"

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v6, v4}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    const-string v1, "com.baidu.BaiduMap"

    new-instance v2, Landroid/content/pm/PackageHideManager$AppHideItem;

    const-string v3, "com.baidu.BaiduMap"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "/data/app/partner-BaiduMap.apk"

    aput-object v5, v4, v7

    const-string v5, "/data/app/partner-BaiduMap"

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v6, v4}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    const-string v1, "com.sdu.didi.psnger"

    new-instance v2, Landroid/content/pm/PackageHideManager$AppHideItem;

    const-string v3, "com.sdu.didi.psnger"

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "/data/app/partner-Didi.apk"

    aput-object v5, v4, v7

    const-string v5, "/data/app/partner-Didi"

    aput-object v5, v4, v6

    const-string v5, "/data/app/3rd-com.sdu.didi.psnger.apk"

    aput-object v5, v4, v8

    const-string v5, "/data/app/3rd-com.sdu.didi.psnger"

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v6, v4}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    const-string v1, "com.duokan.reader"

    new-instance v2, Landroid/content/pm/PackageHideManager$AppHideItem;

    const-string v3, "com.duokan.reader"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "/data/app/partner-com.duokan.reader"

    aput-object v5, v4, v7

    const-string v5, "/data/app/partner-com.duokan.reader.apk"

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v6, v4}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    const-string v1, "com.xiaomi.shop"

    new-instance v2, Landroid/content/pm/PackageHideManager$AppHideItem;

    const-string v3, "com.xiaomi.shop"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "/data/app/partner-MiShop.apk"

    aput-object v5, v4, v7

    const-string v5, "/data/app/partner-MiShop"

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v6, v4}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    const-string v1, "com.xiaomi.channel"

    new-instance v2, Landroid/content/pm/PackageHideManager$AppHideItem;

    const-string v3, "com.xiaomi.channel"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "/data/app/partner-MiTalk.apk"

    aput-object v5, v4, v7

    const-string v5, "/data/app/partner-MiTalk"

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v6, v4}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    const-string v1, "com.Qunar"

    new-instance v2, Landroid/content/pm/PackageHideManager$AppHideItem;

    const-string v3, "com.Qunar"

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "/data/app/3rd-com.Qunar.apk"

    aput-object v5, v4, v7

    const-string v5, "/data/app/3rd-com.Qunar"

    aput-object v5, v4, v6

    const-string v5, "/data/app/partner-Qunar.apk"

    aput-object v5, v4, v8

    const-string v5, "/data/app/partner-Qunar"

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v6, v4}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    const-string v1, "com.sina.weibo"

    new-instance v2, Landroid/content/pm/PackageHideManager$AppHideItem;

    const-string v3, "com.sina.weibo"

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "/data/app/partner-Weibo.apk"

    aput-object v5, v4, v7

    const-string v5, "/data/app/3rd-com.sina.weibo.apk"

    aput-object v5, v4, v6

    const-string v5, "/data/app/3rd-com.sina.weibo"

    aput-object v5, v4, v8

    const-string v5, "/data/app/partner-Weibo"

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v6, v4}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    const-string v1, "com.yidian.xiaomi"

    new-instance v2, Landroid/content/pm/PackageHideManager$AppHideItem;

    const-string v3, "com.yidian.xiaomi"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "/data/app/partner-Zixun.apk"

    aput-object v5, v4, v7

    const-string v5, "/data/app/partner-Zixun"

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v6, v4}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    const-string v1, "com.dianping.v1"

    new-instance v2, Landroid/content/pm/PackageHideManager$AppHideItem;

    const-string v3, "com.dianping.v1"

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "/data/app/partner-Dianping.apk"

    aput-object v5, v4, v7

    const-string v5, "/data/app/3rd-com.dianping.v1.apk"

    aput-object v5, v4, v6

    const-string v5, "/data/app/3rd-com.dianping.v1"

    aput-object v5, v4, v8

    const-string v5, "/data/app/partner-Dianping"

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v6, v4}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    const-string v1, "com.cleanmaster.mguard_cn"

    new-instance v2, Landroid/content/pm/PackageHideManager$AppHideItem;

    const-string v3, "com.cleanmaster.mguard_cn"

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "/data/app/partner-CleanMaster.apk"

    aput-object v5, v4, v7

    const-string v5, "/data/app/3rd-com.cleanmaster.mguard_cn.apk"

    aput-object v5, v4, v6

    const-string v5, "/data/app/3rd-com.cleanmaster.mguard_cn"

    aput-object v5, v4, v8

    const-string v5, "/data/app/partner-CleanMaster"

    aput-object v5, v4, v9

    invoke-direct {v2, v3, v6, v4}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    const-string v1, "com.xiaomi.smarthome"

    new-instance v2, Landroid/content/pm/PackageHideManager$AppHideItem;

    const-string v3, "com.xiaomi.smarthome"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "/data/app/ota-miui-XiaomiSmartHome.apk"

    aput-object v5, v4, v7

    const-string v5, "/data/app/ota-miui-XiaomiSmartHome"

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v6, v4}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    const-string v1, "com.tuniu.app.ui"

    new-instance v2, Landroid/content/pm/PackageHideManager$AppHideItem;

    const-string v3, "com.tuniu.app.ui"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "/data/app/3rd-com.tuniu.app.ui.apk"

    aput-object v5, v4, v7

    const-string v5, "/data/app/3rd-com.tuniu.app.ui"

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v6, v4}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    return-void
.end method

.method private isSystemServer()Z
    .locals 2

    .prologue
    .line 262
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidDevice()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 383
    const-string/jumbo v1, "support_app_hiding"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 247
    if-nez p1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v1

    .line 252
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    .line 255
    :cond_2
    if-ne v0, v3, :cond_0

    move v1, v2

    .line 258
    goto :goto_0
.end method

.method private readAppHideConfig()V
    .locals 13

    .prologue
    .line 180
    sget-object v10, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    monitor-enter v10

    .line 181
    const/4 v6, 0x0

    .line 183
    .local v6, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 184
    new-instance v7, Ljava/io/FileInputStream;

    sget-object v9, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v6    # "stream":Ljava/io/InputStream;
    .local v7, "stream":Ljava/io/InputStream;
    move-object v6, v7

    .line 192
    .end local v7    # "stream":Ljava/io/InputStream;
    .restart local v6    # "stream":Ljava/io/InputStream;
    :goto_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 193
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v4, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0, v4}, Landroid/content/pm/PackageHideManager;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 195
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 196
    .local v8, "tagName":Ljava/lang/String;
    const-string v9, "app-hide"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 197
    new-instance v9, Landroid/content/pm/PackageHideManager$AppHideConfig;

    invoke-direct {v9}, Landroid/content/pm/PackageHideManager$AppHideConfig;-><init>()V

    sput-object v9, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    .line 198
    sget-object v9, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    const/4 v11, 0x0

    const-string v12, "isFunctionOpen"

    invoke-interface {v4, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v9, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    .line 200
    sget-object v9, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    const/4 v11, 0x0

    const-string/jumbo v12, "version"

    invoke-interface {v4, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    .line 202
    sget-object v9, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    const/4 v11, 0x0

    const-string v12, "isHide"

    invoke-interface {v4, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v9, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    .line 205
    :cond_0
    :goto_1
    invoke-direct {p0, v4}, Landroid/content/pm/PackageHideManager;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 206
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 207
    const-string v9, "item"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 208
    const/4 v9, 0x0

    const-string/jumbo v11, "package"

    invoke-interface {v4, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "packageName":Ljava/lang/String;
    const/4 v9, 0x0

    const-string/jumbo v11, "path"

    invoke-interface {v4, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "path":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v11, "isHide"

    invoke-interface {v4, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 212
    .local v2, "isHide":Z
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 213
    iget-object v9, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    new-instance v11, Landroid/content/pm/PackageHideManager$AppHideItem;

    const-string v12, ";"

    invoke-static {v5, v12}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v3, v2, v12}, Landroid/content/pm/PackageHideManager$AppHideItem;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {v9, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_1
    sget-object v9, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "read item: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    .line 219
    .end local v2    # "isHide":Z
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "path":Ljava/lang/String;
    .end local v8    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    sget-object v9, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 236
    if-eqz v6, :cond_2

    .line 237
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    :goto_2
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    :goto_3
    return-void

    .line 186
    :cond_3
    :try_start_4
    sget-object v9, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/miui/Shell;->readByteArray(Ljava/lang/String;)[B
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 187
    .local v0, "bytes":[B
    if-nez v0, :cond_5

    .line 236
    if-eqz v6, :cond_4

    .line 237
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 240
    :cond_4
    :goto_4
    :try_start_6
    monitor-exit v10

    goto :goto_3

    .line 242
    .end local v0    # "bytes":[B
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v9

    .line 190
    .restart local v0    # "bytes":[B
    :cond_5
    :try_start_7
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v6    # "stream":Ljava/io/InputStream;
    .restart local v7    # "stream":Ljava/io/InputStream;
    move-object v6, v7

    .end local v7    # "stream":Ljava/io/InputStream;
    .restart local v6    # "stream":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 236
    .end local v0    # "bytes":[B
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "tagName":Ljava/lang/String;
    :cond_6
    if-eqz v6, :cond_2

    .line 237
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 239
    :catch_1
    move-exception v9

    goto :goto_2

    .line 221
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "tagName":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_9
    sget-object v9, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 236
    if-eqz v6, :cond_2

    .line 237
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 239
    :catch_3
    move-exception v9

    goto :goto_2

    .line 223
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_4
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_b
    sget-object v9, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 236
    if-eqz v6, :cond_2

    .line 237
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2

    .line 239
    :catch_5
    move-exception v9

    goto :goto_2

    .line 225
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_6
    move-exception v1

    .line 226
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_d
    sget-object v9, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 236
    if-eqz v6, :cond_2

    .line 237
    :try_start_e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_2

    .line 239
    :catch_7
    move-exception v9

    goto/16 :goto_2

    .line 227
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_8
    move-exception v1

    .line 228
    .local v1, "e":Ljava/io/IOException;
    :try_start_f
    sget-object v9, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 236
    if-eqz v6, :cond_2

    .line 237
    :try_start_10
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_2

    .line 239
    :catch_9
    move-exception v9

    goto/16 :goto_2

    .line 229
    .end local v1    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_11
    sget-object v9, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 236
    if-eqz v6, :cond_2

    .line 237
    :try_start_12
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_2

    .line 239
    :catch_b
    move-exception v9

    goto/16 :goto_2

    .line 231
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_c
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    :try_start_13
    sget-object v9, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 236
    if-eqz v6, :cond_2

    .line 237
    :try_start_14
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_2

    .line 239
    :catch_d
    move-exception v9

    goto/16 :goto_2

    .line 235
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v9

    .line 236
    if-eqz v6, :cond_7

    .line 237
    :try_start_15
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 240
    :cond_7
    :goto_5
    :try_start_16
    throw v9
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 239
    .restart local v0    # "bytes":[B
    :catch_e
    move-exception v9

    goto/16 :goto_4

    .end local v0    # "bytes":[B
    .local v1, "e":Ljava/lang/IllegalStateException;
    :catch_f
    move-exception v9

    goto/16 :goto_2

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_10
    move-exception v11

    goto :goto_5
.end method

.method private writeAppHideConfig()Z
    .locals 12

    .prologue
    .line 115
    const/4 v6, 0x0

    .line 116
    .local v6, "stream":Ljava/io/OutputStream;
    const/4 v5, 0x1

    .line 117
    .local v5, "result":Z
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v9, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 120
    .local v8, "tmpPath":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 121
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .end local v6    # "stream":Ljava/io/OutputStream;
    .local v7, "stream":Ljava/io/OutputStream;
    move-object v6, v7

    .line 126
    .end local v7    # "stream":Ljava/io/OutputStream;
    .restart local v6    # "stream":Ljava/io/OutputStream;
    :goto_1
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 127
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v9, "utf-8"

    invoke-interface {v4, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 128
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 129
    const/4 v9, 0x0

    const-string v10, "app-hide"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    const/4 v9, 0x0

    const-string v10, "isFunctionOpen"

    sget-object v11, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v11, v11, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    const/4 v9, 0x0

    const-string/jumbo v10, "version"

    sget-object v11, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget v11, v11, Landroid/content/pm/PackageHideManager$AppHideConfig;->version:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    const/4 v9, 0x0

    const-string v10, "isHide"

    sget-object v11, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v11, v11, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    iget-object v9, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    if-eqz v9, :cond_5

    .line 136
    iget-object v9, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageHideManager$AppHideItem;

    .line 137
    .local v3, "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    iget-object v9, v3, Landroid/content/pm/PackageHideManager$AppHideItem;->packageName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/PackageHideManager$AppHideItem;->getJoinPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 141
    const/4 v9, 0x0

    const-string v10, "item"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    const/4 v9, 0x0

    const-string/jumbo v10, "package"

    iget-object v11, v3, Landroid/content/pm/PackageHideManager$AppHideItem;->packageName:Ljava/lang/String;

    invoke-interface {v4, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    const/4 v9, 0x0

    const-string/jumbo v10, "path"

    invoke-virtual {v3}, Landroid/content/pm/PackageHideManager$AppHideItem;->getJoinPath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    const/4 v9, 0x0

    const-string v10, "isHide"

    iget-boolean v11, v3, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    const/4 v9, 0x0

    const-string v10, "item"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 154
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v9, Landroid/content/pm/PackageHideManager;->TAG:Ljava/lang/String;

    const-string v10, "Failed to write state, restoring backup."

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    const/4 v5, 0x0

    .line 158
    if-eqz v6, :cond_1

    .line 160
    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 166
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    if-eqz v5, :cond_2

    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v9

    if-nez v9, :cond_2

    .line 168
    :try_start_3
    sget-object v10, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    monitor-enter v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 169
    :try_start_4
    sget-object v9, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/miui/Shell;->move(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 170
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 176
    :cond_2
    :goto_4
    return v5

    .line 117
    .end local v8    # "tmpPath":Ljava/lang/String;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/content/pm/PackageHideManager;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_.bak"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 123
    .restart local v8    # "tmpPath":Ljava/lang/String;
    :cond_4
    :try_start_5
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .end local v6    # "stream":Ljava/io/OutputStream;
    .restart local v7    # "stream":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "stream":Ljava/io/OutputStream;
    .restart local v6    # "stream":Ljava/io/OutputStream;
    goto/16 :goto_1

    .line 148
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_5
    const/4 v9, 0x0

    const-string v10, "app-hide"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 150
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->isSystemServer()Z

    move-result v9

    if-nez v9, :cond_6

    .line 151
    const/4 v10, 0x0

    move-object v0, v6

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-static {v8, v10, v9}, Landroid/miui/Shell;->writeByteArray(Ljava/lang/String;Z[B)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v5

    .line 158
    :cond_6
    if-eqz v6, :cond_1

    .line 160
    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 161
    :catch_1
    move-exception v1

    .line 162
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 163
    goto :goto_3

    .line 161
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_2
    move-exception v1

    .line 162
    const/4 v5, 0x0

    .line 163
    goto :goto_3

    .line 158
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v6, :cond_7

    .line 160
    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 163
    :cond_7
    :goto_5
    throw v9

    .line 161
    :catch_3
    move-exception v1

    .line 162
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_5

    .line 170
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v9

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 171
    :catch_4
    move-exception v1

    .line 172
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v8}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 173
    const/4 v5, 0x0

    goto :goto_4
.end method


# virtual methods
.method public getIgnoreApkPathList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v6, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/pm/PackageHideManager;->isAppHide()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 314
    iget-object v7, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageHideManager$AppHideItem;

    .line 315
    .local v3, "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    iget-boolean v7, v3, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    if-eqz v7, :cond_0

    iget-object v7, v3, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 316
    iget-object v0, v3, Landroid/content/pm/PackageHideManager$AppHideItem;->pathArray:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 317
    .local v5, "path":Ljava/lang/String;
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    .end local v4    # "len$":I
    .end local v5    # "path":Ljava/lang/String;
    :cond_1
    return-object v6
.end method

.method public isAppHide()Z
    .locals 1

    .prologue
    .line 364
    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    if-eqz v0, :cond_0

    .line 366
    const/4 v0, 0x1

    .line 368
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAppHide(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 372
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/PackageHideManager;->isAppHide()Z

    move-result v2

    if-nez v2, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v1

    .line 375
    :cond_1
    iget-object v2, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageHideManager$AppHideItem;

    .line 376
    .local v0, "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    if-eqz v2, :cond_0

    .line 377
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isFunctionOpen()Z
    .locals 1

    .prologue
    .line 357
    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isFunctionOpen:Z

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x1

    .line 360
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHideApp(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hide"    # Z

    .prologue
    const/4 v1, 0x0

    .line 297
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-nez v2, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v1

    .line 300
    :cond_1
    iget-object v2, p0, Landroid/content/pm/PackageHideManager;->mShouldHideApks:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageHideManager$AppHideItem;

    .line 301
    .local v0, "item":Landroid/content/pm/PackageHideManager$AppHideItem;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    if-eq v2, p3, :cond_0

    .line 302
    iput-boolean p3, v0, Landroid/content/pm/PackageHideManager$AppHideItem;->isHide:Z

    .line 303
    if-nez p3, :cond_2

    .line 304
    invoke-direct {p0, p1, v0}, Landroid/content/pm/PackageHideManager;->clearUserAleadyInstalled(Landroid/content/Context;Landroid/content/pm/PackageHideManager$AppHideItem;)V

    .line 306
    :cond_2
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->writeAppHideConfig()Z

    move-result v1

    goto :goto_0
.end method

.method public setHideApp(Landroid/content/Context;Z)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hide"    # Z

    .prologue
    .line 286
    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iget-boolean v0, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    if-ne v0, p2, :cond_1

    .line 287
    :cond_0
    const/4 v0, 0x0

    .line 293
    :goto_0
    return v0

    .line 289
    :cond_1
    sget-object v0, Landroid/content/pm/PackageHideManager;->appHideConfig:Landroid/content/pm/PackageHideManager$AppHideConfig;

    iput-boolean p2, v0, Landroid/content/pm/PackageHideManager$AppHideConfig;->isHide:Z

    .line 290
    if-nez p2, :cond_2

    .line 291
    invoke-direct {p0, p1}, Landroid/content/pm/PackageHideManager;->clearUserAleadyInstalled(Landroid/content/Context;)V

    .line 293
    :cond_2
    invoke-direct {p0}, Landroid/content/pm/PackageHideManager;->writeAppHideConfig()Z

    move-result v0

    goto :goto_0
.end method
