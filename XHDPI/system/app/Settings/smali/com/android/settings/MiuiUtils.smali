.class public Lcom/android/settings/MiuiUtils;
.super Ljava/lang/Object;
.source "MiuiUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/settings/MiuiUtils;
    .locals 3

    .prologue
    .line 20
    :try_start_0
    const-string v2, "com.mediatek.gemini.GeminiUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 21
    .local v1, utilsFactory:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-object v0

    .line 25
    :catch_0
    move-exception v2

    .line 28
    :cond_0
    new-instance v0, Lcom/android/settings/MiuiUtils;

    invoke-direct {v0}, Lcom/android/settings/MiuiUtils;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public addSimLockPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "root"
    .parameter "key"

    .prologue
    .line 33
    return-void
.end method

.method public connectToOtherWifi(Landroid/content/Context;I)V
    .locals 12
    .parameter "context"
    .parameter "currentNetworkId"

    .prologue
    .line 45
    const-string v9, "wifi"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 46
    .local v8, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 48
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 49
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v7

    .line 50
    .local v7, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v2, -0x1

    .line 51
    .local v2, highestPriority:I
    const/4 v3, -0x1

    .line 52
    .local v3, highestPriorityNetworkId:I
    if-eqz v1, :cond_2

    if-eqz v7, :cond_2

    .line 53
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 54
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 55
    .local v6, result:Landroid/net/wifi/ScanResult;
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v9

    invoke-static {v6}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 58
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v9, v2, :cond_1

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v9, p2, :cond_1

    .line 59
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 60
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_0

    .line 66
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #result:Landroid/net/wifi/ScanResult;
    :cond_2
    if-lez v3, :cond_3

    .line 67
    const/4 v9, 0x1

    invoke-virtual {v8, v3, v9}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 69
    :cond_3
    return-void
.end method

.method public enableGps(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Z)V
    .locals 2
    .parameter "context"
    .parameter "gpsPreference"
    .parameter "enabled"

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 38
    return-void
.end method

.method public trackSimCard(Landroid/content/Context;Lmiui/analytics/XiaomiAnalytics;)V
    .locals 0
    .parameter "context"
    .parameter "tracker"

    .prologue
    .line 42
    return-void
.end method
