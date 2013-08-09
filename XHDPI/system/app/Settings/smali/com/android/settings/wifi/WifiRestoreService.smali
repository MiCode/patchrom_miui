.class public Lcom/android/settings/wifi/WifiRestoreService;
.super Landroid/app/Service;
.source "WifiRestoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiRestoreService$WorkThread;,
        Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;
    }
.end annotation


# instance fields
.field private final LOCATION_REQUEST_DELAY:J

.field private MSG_AUTO_DOWNLOAD_WIFI_DELAY:I

.field private MSG_AUTO_DOWNLOAD_WIFI_SHARE:I

.field private mChannel:Landroid/net/wifi/WifiManager$Channel;

.field private mHandler:Landroid/os/Handler;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;

.field private mWifiLocationListener:Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiShareSsid:Ljava/lang/String;

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkThread:Landroid/os/HandlerThread;

.field private sCacheScanBssid2Ssid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->sCacheScanBssid2Ssid:Ljava/util/HashMap;

    .line 165
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->LOCATION_REQUEST_DELAY:J

    .line 169
    new-instance v0, Lcom/android/settings/wifi/WifiRestoreService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiRestoreService$1;-><init>(Lcom/android/settings/wifi/WifiRestoreService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mHandler:Landroid/os/Handler;

    .line 187
    new-instance v0, Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;-><init>(Lcom/android/settings/wifi/WifiRestoreService;Lcom/android/settings/wifi/WifiRestoreService$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiLocationListener:Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;

    .line 294
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->MSG_AUTO_DOWNLOAD_WIFI_SHARE:I

    .line 296
    const v0, 0x11170

    iput v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->MSG_AUTO_DOWNLOAD_WIFI_DELAY:I

    .line 297
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiRestoreService;)Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiLocationListener:Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiRestoreService;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiRestoreService;)Lcom/android/settings/wifi/WifiConfigurationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiRestoreService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiRestoreService;->setWifiConfiguration()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiRestoreService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiRestoreService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->MSG_AUTO_DOWNLOAD_WIFI_SHARE:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiRestoreService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->sCacheScanBssid2Ssid:Ljava/util/HashMap;

    return-object v0
.end method

.method private addScanWifiToCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "bssid"
    .parameter "ssid"

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->sCacheScanBssid2Ssid:Ljava/util/HashMap;

    monitor-enter v1

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->sCacheScanBssid2Ssid:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    monitor-exit v1

    .line 286
    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeScanWifiFromCache(Ljava/lang/String;)V
    .locals 2
    .parameter "bssid"

    .prologue
    .line 289
    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->sCacheScanBssid2Ssid:Ljava/util/HashMap;

    monitor-enter v1

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->sCacheScanBssid2Ssid:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    monitor-exit v1

    .line 292
    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private saveWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 273
    if-nez p2, :cond_0

    .line 280
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiRestoreService;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 278
    invoke-static {p2}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiConfigurationKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiConfigurationManager;->restoreCert(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setWifiConfiguration()V
    .locals 12

    .prologue
    .line 220
    iget-object v8, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 221
    .local v1, configList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v8, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v6

    .line 222
    .local v6, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v1, :cond_4

    .line 223
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 224
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 225
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 227
    :cond_1
    if-eqz v6, :cond_0

    .line 228
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 229
    .local v7, scanResult:Landroid/net/wifi/ScanResult;
    iget-object v8, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 232
    iget-object v8, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settings/wifi/WifiRestoreService;->addScanWifiToCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v8, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 234
    iget-object v8, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiRestoreService;->removeScanWifiFromCache(Ljava/lang/String;)V

    .line 235
    invoke-static {v7}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiConfiguratinKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, key:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 237
    .local v5, restoreConfig:Landroid/net/wifi/WifiConfiguration;
    if-nez v5, :cond_3

    .line 238
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "restore"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 240
    :cond_3
    if-eqz v5, :cond_2

    const-string v8, "restore"

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 241
    iget-object v8, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;

    invoke-virtual {v8, v5}, Lcom/android/settings/wifi/WifiConfigurationManager;->removeWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 249
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #restoreConfig:Landroid/net/wifi/WifiConfiguration;
    .end local v7           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_4
    if-eqz v6, :cond_7

    .line 250
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 251
    .restart local v7       #scanResult:Landroid/net/wifi/ScanResult;
    iget-object v8, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 254
    invoke-static {v7}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiConfiguratinKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v4

    .line 255
    .restart local v4       #key:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 256
    .restart local v5       #restoreConfig:Landroid/net/wifi/WifiConfiguration;
    if-nez v5, :cond_6

    .line 257
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "restore"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 259
    :cond_6
    if-eqz v5, :cond_5

    .line 260
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, v5}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 261
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    const/4 v8, 0x0

    iput-object v8, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 262
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 263
    invoke-direct {p0, p0, v0}, Lcom/android/settings/wifi/WifiRestoreService;->saveWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 264
    iget-object v8, p0, Lcom/android/settings/wifi/WifiRestoreService;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    const-wide/16 v10, 0x7530

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 265
    iget-object v8, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiRestoreService;->removeScanWifiFromCache(Ljava/lang/String;)V

    .line 270
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #restoreConfig:Landroid/net/wifi/WifiConfiguration;
    .end local v7           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_7
    return-void
.end method

.method private showWifiShareNotification(Ljava/lang/String;)V
    .locals 7
    .parameter "ssid"

    .prologue
    const v6, 0x7f0c0936

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiShareSsid:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiConfigurationManager;->isConnectWifiShare(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiConfigurationManager;->isWifiShareConnectSuccess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiShareSsid:Ljava/lang/String;

    .line 162
    :goto_0
    return-void

    .line 142
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.wifi.WifiShareConnectDialog"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const/4 v4, 0x0

    const/high16 v5, 0x4000

    invoke-static {p0, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 148
    .local v1, contentIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 149
    .local v0, builder:Landroid/app/Notification$Builder;
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 150
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiRestoreService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 151
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiRestoreService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 152
    const v4, 0x7f0c0945

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiRestoreService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 153
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 155
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 156
    const v4, 0x7f0201ac

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 159
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiRestoreService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 160
    .local v3, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 161
    iput-object p1, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiShareSsid:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateConnectedWifi()V
    .locals 12

    .prologue
    const-wide/16 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v8

    .line 97
    .local v8, configList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    .line 98
    .local v11, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v8, :cond_4

    if-eqz v11, :cond_4

    .line 99
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 100
    .local v7, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 103
    :cond_1
    const-string v10, ""

    .line 104
    .local v10, ssid:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 107
    :cond_2
    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 109
    const-string v6, "00:00:00:00:00:00"

    .line 110
    .local v6, INVALID_BSSID:Ljava/lang/String;
    const-string v0, "00:00:00:00:00:00"

    iget-object v1, v7, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 111
    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiLocationListener:Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;

    invoke-virtual {v0, v7}, Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;->setWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x64

    const/high16 v4, 0x3f00

    iget-object v5, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiLocationListener:Lcom/android/settings/wifi/WifiRestoreService$WifiLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 123
    :goto_0
    invoke-direct {p0, v10}, Lcom/android/settings/wifi/WifiRestoreService;->showWifiShareNotification(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWorkHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->MSG_AUTO_DOWNLOAD_WIFI_SHARE:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWorkHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->MSG_AUTO_DOWNLOAD_WIFI_SHARE:I

    iget v2, p0, Lcom/android/settings/wifi/WifiRestoreService;->MSG_AUTO_DOWNLOAD_WIFI_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 131
    .end local v6           #INVALID_BSSID:Ljava/lang/String;
    .end local v7           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #ssid:Ljava/lang/String;
    :cond_4
    return-void

    .line 119
    .restart local v6       #INVALID_BSSID:Ljava/lang/String;
    .restart local v7       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #ssid:Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2, v7}, Lcom/android/settings/wifi/WifiConfigurationManager;->updateCurrentWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 50
    new-instance v0, Lcom/android/settings/wifi/WifiConfigurationManager;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;

    .line 51
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiRestoreService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 52
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiRestoreService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/wifi/WifiManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    .line 53
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiRestoreService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mLocationManager:Landroid/location/LocationManager;

    .line 55
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WorkHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWorkThread:Landroid/os/HandlerThread;

    .line 56
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 57
    new-instance v0, Lcom/android/settings/wifi/WifiRestoreService$WorkThread;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiRestoreService$WorkThread;-><init>(Lcom/android/settings/wifi/WifiRestoreService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWorkHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWorkHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->MSG_AUTO_DOWNLOAD_WIFI_SHARE:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 66
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 67
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigurationManager;->initWifiList()V

    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, action:Ljava/lang/String;
    const-string v1, "miui.intent.action.UPDATE_CURRENT_WIFI_CONFIGURATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiRestoreService;->updateConnectedWifi()V

    .line 87
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 76
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    const-string v1, "android.intent.action.RESTORE_FINISH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigurationManager;->parseRestoreWifi()V

    .line 78
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiRestoreService;->setWifiConfiguration()V

    goto :goto_0

    .line 80
    :cond_2
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiRestoreService;->setWifiConfiguration()V

    goto :goto_0

    .line 82
    :cond_3
    const-string v1, "miui.intent.action.WIFI_SYNC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/settings/wifi/WifiRestoreService;->mWifiConfigurationManager:Lcom/android/settings/wifi/WifiConfigurationManager;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigurationManager;->updateWifiList()V

    .line 84
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiRestoreService;->setWifiConfiguration()V

    goto :goto_0
.end method
