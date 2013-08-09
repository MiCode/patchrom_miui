.class public Lcom/android/settings/wifi/MiuiWifiSettings;
.super Lcom/android/settings/wifi/WifiSettings;
.source "MiuiWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;
    }
.end annotation


# instance fields
.field private mHasDownload:Z

.field private mIsFromKeyguard:Z

.field private mIsWifiSetupWizard:Z

.field private mIsWifiShareTurnOn:Z

.field private mNextButton:Landroid/widget/Button;

.field private mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

.field private mWfdSupported:Z

.field private mWifiEnablePreference:Landroid/preference/CheckBoxPreference;

.field private mWifiShare:Lmiui/preference/ValuePreference;

.field private mWifiShareConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/MiuiWifiSettings;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiShareConfigMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/MiuiWifiSettings;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiShareConfigMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/MiuiAccessPoint;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->connectWifiShare(Lcom/android/settings/wifi/MiuiAccessPoint;)V

    return-void
.end method

.method private addAccessPoint(Ljava/util/List;Lcom/android/settings/wifi/MiuiAccessPoint;)V
    .locals 1
    .parameter
    .parameter "accessPoint"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;",
            "Lcom/android/settings/wifi/MiuiAccessPoint;",
            ")V"
        }
    .end annotation

    .prologue
    .line 590
    .local p1, accessPoints:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/AccessPoint;)V

    .line 591
    .local v0, arrowClickListener:Lcom/android/settings/wifi/MiuiWifiSettings$ArrowClickListener;
    invoke-virtual {p2, v0}, Lcom/android/settings/wifi/MiuiAccessPoint;->setArrowClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    return-void
.end method

.method private connectWifiShare(Lcom/android/settings/wifi/MiuiAccessPoint;)V
    .locals 5
    .parameter "accessPoint"

    .prologue
    .line 368
    invoke-virtual {p1}, Lcom/android/settings/wifi/MiuiAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 369
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/settings/wifi/MiuiAccessPoint;->bssid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 373
    .local v1, connectConfig:Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 374
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 375
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 376
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 378
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v1, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 379
    invoke-virtual {p1}, Lcom/android/settings/wifi/MiuiAccessPoint;->isWifiShare()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v1, v3}, Lcom/android/settings/wifi/WifiConfigurationManager;->addWifi(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V

    .line 381
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/settings/wifi/MiuiAccessPoint;->setWifiShare(Z)V

    .line 383
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settings/wifi/MiuiAccessPoint;->bssid:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/android/settings/wifi/WifiConfigurationManager;->updateWifiShareConnectState(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private downloadWifiShare()V
    .locals 4

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 139
    .local v0, activity:Landroid/app/Activity;
    iget-boolean v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsWifiShareTurnOn:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mHasDownload:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mHasDownload:Z

    .line 144
    invoke-static {v0}, Lmiui/net/WifiShareManager;->get(Landroid/content/Context;)Lmiui/net/WifiShareManager;

    move-result-object v1

    .line 145
    .local v1, wifiShareManager:Lmiui/net/WifiShareManager;
    new-instance v2, Lcom/android/settings/wifi/MiuiWifiSettings$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/settings/wifi/MiuiWifiSettings$2;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;Lmiui/net/WifiShareManager;Landroid/app/Activity;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/MiuiWifiSettings$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private initUI()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 219
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsWifiSetupWizard:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsFromKeyguard:Z

    if-eqz v1, :cond_2

    .line 220
    :cond_0
    const-string v1, "wifi_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 221
    .local v0, wifiSettings:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 232
    .end local v0           #wifiSettings:Landroid/preference/Preference;
    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    const-string v1, "notify_open_networks"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    .line 229
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "wifi_networks_available_notification_on"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 231
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 229
    goto :goto_1
.end method

.method private initWifiShareConfig(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 609
    .local p1, accessPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/wifi/AccessPoint;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 619
    :cond_0
    return-void

    .line 612
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiShareConfigMap:Ljava/util/HashMap;

    .line 613
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 614
    .local v0, ap:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiShareConfiguration(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 615
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_2

    .line 616
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiShareConfigMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 602
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 604
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 605
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private manuallyAddNetwork()V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/EditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    const-string v1, "edit_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 350
    :cond_0
    return-void
.end method

.method private showWfdFragment()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 354
    const-string v1, "com.android.settings.miracast.MiracastSettings"

    .line 355
    .local v1, fragmentClass:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const v3, 0x7f0c08c3

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, p0, v1, v0, v2}, Lcom/android/settings/wifi/MiuiWifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0
.end method


# virtual methods
.method protected addMessagePreference(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiEnablePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 290
    return-void
.end method

.method protected changeNextButtonState(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 597
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 598
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const v0, 0x7f0c0926

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 599
    return-void

    .line 598
    :cond_0
    const v0, 0x7f0c08ce

    goto :goto_0
.end method

.method protected constructAccessPoints()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    const-string v2, "CMCC"

    .line 495
    .local v2, CMCC_SSID:Ljava/lang/String;
    const/4 v7, 0x0

    .line 496
    .local v7, addCmcc:Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v5, accessPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/wifi/AccessPoint;>;"
    new-instance v9, Lcom/android/settings/wifi/WifiSettings$Multimap;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/settings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    .line 500
    .local v9, apMap:Lcom/android/settings/wifi/WifiSettings$Multimap;,"Lcom/android/settings/wifi/WifiSettings$Multimap<Ljava/lang/String;Lcom/android/settings/wifi/AccessPoint;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v12

    .line 501
    .local v12, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v10, 0x0

    .line 502
    .local v10, cmccConfig:Landroid/net/wifi/WifiConfiguration;
    if-eqz v12, :cond_1

    .line 503
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiConfiguration;

    .line 504
    .local v11, config:Landroid/net/wifi/WifiConfiguration;
    new-instance v4, Lcom/android/settings/wifi/MiuiAccessPoint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v4, v0, v11}, Lcom/android/settings/wifi/MiuiAccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 505
    .local v4, accessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lcom/android/settings/wifi/MiuiAccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 506
    iget-object v0, v4, Lcom/android/settings/wifi/MiuiAccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v4}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 507
    sget-boolean v20, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v20, :cond_0

    const-string v20, "CMCC"

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 508
    move-object v10, v11

    goto :goto_0

    .line 513
    .end local v4           #accessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;
    .end local v11           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v18

    .line 514
    .local v18, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v18, :cond_8

    .line 515
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/ScanResult;

    .line 516
    .local v17, result:Landroid/net/wifi/ScanResult;
    const/4 v13, 0x0

    .line 517
    .local v13, found:Z
    const/4 v14, 0x0

    .line 520
    .local v14, hide:Z
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "[IBSS]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 522
    :cond_3
    const/4 v14, 0x1

    .line 525
    :cond_4
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/android/settings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/AccessPoint;

    .line 526
    .local v4, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 527
    const/4 v13, 0x1

    .line 528
    check-cast v4, Lcom/android/settings/wifi/MiuiAccessPoint;

    .end local v4           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/settings/wifi/MiuiWifiSettings;->addAccessPoint(Ljava/util/List;Lcom/android/settings/wifi/MiuiAccessPoint;)V

    goto :goto_2

    .line 532
    :cond_6
    if-nez v14, :cond_7

    if-nez v13, :cond_7

    .line 533
    new-instance v4, Lcom/android/settings/wifi/MiuiAccessPoint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Lcom/android/settings/wifi/MiuiAccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 534
    .local v4, accessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/settings/wifi/MiuiWifiSettings;->addAccessPoint(Ljava/util/List;Lcom/android/settings/wifi/MiuiAccessPoint;)V

    .line 535
    iget-object v0, v4, Lcom/android/settings/wifi/MiuiAccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v4}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 537
    .end local v4           #accessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;
    :cond_7
    sget-boolean v20, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v20, :cond_2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "CMCC"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 538
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 543
    .end local v13           #found:Z
    .end local v14           #hide:Z
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #result:Landroid/net/wifi/ScanResult;
    :cond_8
    sget-boolean v20, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v20, :cond_a

    if-nez v7, :cond_a

    .line 544
    if-nez v10, :cond_9

    .line 545
    new-instance v10, Landroid/net/wifi/WifiConfiguration;

    .end local v10           #cmccConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v10}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 546
    .restart local v10       #cmccConfig:Landroid/net/wifi/WifiConfiguration;
    const-string v20, "CMCC"

    move-object/from16 v0, v20

    iput-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 547
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/BitSet;->set(I)V

    .line 549
    :cond_9
    new-instance v4, Lcom/android/settings/wifi/MiuiAccessPoint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v4, v0, v10}, Lcom/android/settings/wifi/MiuiAccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 550
    .restart local v4       #accessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/settings/wifi/MiuiAccessPoint;->setHasDetail(Z)V

    .line 551
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/settings/wifi/MiuiWifiSettings;->addAccessPoint(Ljava/util/List;Lcom/android/settings/wifi/MiuiAccessPoint;)V

    .line 555
    .end local v4           #accessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;
    :cond_a
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 556
    const/16 v3, 0x9

    .line 557
    .local v3, MAX_ACCESS_POINT:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v6, accessPointsSortBySsid:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/wifi/AccessPoint;>;"
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 559
    .local v19, ssidSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15       #i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/wifi/AccessPoint;

    .local v8, ap:Lcom/android/settings/wifi/AccessPoint;
    move-object v4, v8

    .line 560
    check-cast v4, Lcom/android/settings/wifi/MiuiAccessPoint;

    .line 561
    .restart local v4       #accessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/settings/wifi/MiuiAccessPoint;->setIsSortBySignal(Z)V

    .line 562
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsWifiShareTurnOn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    iget-object v0, v4, Lcom/android/settings/wifi/MiuiAccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settings/wifi/WifiShareUtils;->isWifiShare(Landroid/net/wifi/ScanResult;)Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-virtual {v4}, Lcom/android/settings/wifi/MiuiAccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v20

    if-nez v20, :cond_d

    iget-object v0, v4, Lcom/android/settings/wifi/MiuiAccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiShareConfigMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    if-nez v20, :cond_c

    .line 565
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings/wifi/MiuiWifiSettings;->initWifiShareConfig(Ljava/util/ArrayList;)V

    .line 567
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiShareConfigMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/settings/wifi/MiuiAccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v20

    iput-object v0, v4, Lcom/android/settings/wifi/MiuiAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 568
    iget-object v0, v4, Lcom/android/settings/wifi/MiuiAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    .line 569
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/settings/wifi/MiuiAccessPoint;->setWifiShare(Z)V

    .line 570
    new-instance v20, Lcom/android/settings/wifi/MiuiWifiSettings$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/settings/wifi/MiuiWifiSettings$3;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/MiuiAccessPoint;)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/settings/wifi/MiuiAccessPoint;->setWifiShareConnectListener(Landroid/view/View$OnClickListener;)V

    .line 578
    :cond_d
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v0, v4, Lcom/android/settings/wifi/MiuiAccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->size()I

    move-result v20

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    .line 584
    .end local v4           #accessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;
    .end local v8           #ap:Lcom/android/settings/wifi/AccessPoint;
    :cond_e
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 585
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->downloadWifiShare()V

    .line 586
    return-object v6
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V

    .line 125
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->initUI()V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "wifi_enable"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiEnablePreference:Landroid/preference/CheckBoxPreference;

    .line 127
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiEnabler;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiEnablePreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/MiuiWifiEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/MiuiWifiEnabler;

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWfdSupported:Z

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "wifi_share"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiShare:Lmiui/preference/ValuePreference;

    .line 130
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsWifiSetupWizard:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiShare:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiShare:Lmiui/preference/ValuePreference;

    .line 134
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    .line 409
    sparse-switch p1, :sswitch_data_0

    .line 458
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 411
    :sswitch_0
    if-ne p2, v6, :cond_0

    .line 412
    const-string v5, "config"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 413
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 414
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v5, v1, v6}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->refreshAccessPoints()V

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/settings/wifi/WifiConfigurationManager;->addWifi(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 422
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :sswitch_1
    if-ne p2, v6, :cond_0

    .line 423
    const-string v5, "network_id"

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 424
    .local v3, networkId:I
    if-eq v3, v6, :cond_2

    .line 425
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v5, v3, v6}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 426
    const-string v5, "config"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 427
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/settings/wifi/WifiConfigurationManager;->deleteWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 453
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->refreshAccessPoints()V

    goto :goto_0

    .line 429
    :cond_2
    const-string v5, "iswps"

    const/4 v6, 0x0

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 430
    .local v2, isWps:Z
    if-eqz v2, :cond_3

    .line 431
    const-string v5, "config"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WpsInfo;

    .line 432
    .local v1, config:Landroid/net/wifi/WpsInfo;
    if-eqz v1, :cond_1

    goto :goto_1

    .line 436
    .end local v1           #config:Landroid/net/wifi/WpsInfo;
    :cond_3
    const-string v5, "config"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 437
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_1

    .line 438
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v5, v1, v6}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 439
    const-string v5, "ssid"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 440
    .local v4, ssid:Ljava/lang/String;
    const-string v5, "bssid"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, bssid:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 442
    iput-object v4, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 443
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 444
    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 446
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/settings/wifi/WifiConfigurationManager;->updateWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    .line 409
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wifi_setup_wizard"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "firstRun"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsWifiSetupWizard:Z

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "wifi_settings_keyguard"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsFromKeyguard:Z

    .line 88
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsFromKeyguard:Z

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 91
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 84
    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    .line 96
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 394
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsWifiSetupWizard:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsFromKeyguard:Z

    if-eqz v0, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 398
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSetupWizardMode:Z

    if-nez v0, :cond_0

    .line 399
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWfdSupported:Z

    if-eqz v0, :cond_0

    .line 400
    const/16 v0, 0x65

    const v1, 0x7f0c08c2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 101
    const v1, 0x7f0400dc

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, rootView:Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 336
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->showWfdFragment()V

    .line 338
    const/4 v0, 0x1

    .line 341
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 295
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, key:Ljava/lang/String;
    const-string v5, "notify_open_networks"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 331
    :goto_0
    return v4

    .line 301
    .restart local p2
    :cond_1
    const-string v5, "manually_add_network"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 302
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->manuallyAddNetwork()V

    goto :goto_0

    .line 304
    :cond_2
    const-string v5, "wifi_enable"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 305
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/MiuiWifiEnabler;

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/settings/wifi/MiuiWifiEnabler;->checkedChanged(Z)V

    goto :goto_0

    .line 307
    .restart local p2
    :cond_3
    const-string v5, "wifi_share"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 308
    invoke-static {p0}, Lcom/android/settings/wifi/WifiShareUtils;->showWifiShare(Landroid/app/Fragment;)V

    goto :goto_0

    .line 312
    :cond_4
    instance-of v5, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v5, :cond_b

    move-object v0, p2

    .line 313
    check-cast v0, Lcom/android/settings/wifi/MiuiAccessPoint;

    .line 314
    .local v0, accessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;
    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/MiuiAccessPoint;->setChecked(Z)V

    .line 315
    iget-object v1, v0, Lcom/android/settings/wifi/MiuiAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 316
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget v5, v0, Lcom/android/settings/wifi/MiuiAccessPoint;->networkId:I

    if-eq v5, v7, :cond_a

    iget v5, v0, Lcom/android/settings/wifi/MiuiAccessPoint;->security:I

    if-eqz v5, :cond_6

    iget v5, v0, Lcom/android/settings/wifi/MiuiAccessPoint;->security:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    if-eqz v1, :cond_5

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v5, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 321
    :cond_6
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    iget v5, v0, Lcom/android/settings/wifi/MiuiAccessPoint;->networkId:I

    if-ne v3, v5, :cond_8

    :cond_7
    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v4, :cond_9

    .line 322
    :cond_8
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v5, v0, Lcom/android/settings/wifi/MiuiAccessPoint;->networkId:I

    iget-object v6, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v3, v5, v6}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 324
    :cond_9
    invoke-virtual {v0, v4}, Lcom/android/settings/wifi/MiuiAccessPoint;->setChecked(Z)V

    goto :goto_0

    .line 328
    :cond_a
    iput v7, v0, Lcom/android/settings/wifi/MiuiAccessPoint;->networkId:I

    .line 331
    .end local v0           #accessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0}, Lcom/android/settings/wifi/WifiSettings;->onResume()V

    .line 211
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiShare:Lmiui/preference/ValuePreference;

    if-eqz v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiShare:Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiShareUtils;->isWifiShareTurnOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c0937

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setValue(I)V

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiShareUtils;->isWifiShareTurnOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsWifiShareTurnOn:Z

    .line 216
    return-void

    .line 212
    :cond_1
    const v0, 0x7f0c0938

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 108
    const v0, 0x7f09000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/Button;

    .line 109
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsWifiSetupWizard:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->isWifiConnected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->changeNextButtonState(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/MiuiWifiSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/MiuiWifiSettings$1;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    :cond_0
    return-void
.end method

.method submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 3
    .parameter "configController"

    .prologue
    .line 483
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 484
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isWifiShare()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 486
    .local v1, shareState:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/settings/wifi/WifiConfigurationManager;->addWifi(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V

    .line 489
    .end local v1           #shareState:I
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    .line 490
    return-void

    .line 485
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateAccessPoints()V
    .locals 9

    .prologue
    .line 236
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v6

    .line 237
    .local v6, wifiState:I
    const-string v7, "nearby_wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/MiuiWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 238
    .local v5, wifiList:Landroid/preference/PreferenceCategory;
    packed-switch v6, :pswitch_data_0

    .line 282
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_1

    .line 283
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 285
    :cond_1
    return-void

    .line 241
    :pswitch_0
    const/4 v0, 0x3

    .line 242
    .local v0, WIFI_LIST_ORDER:I
    if-nez v5, :cond_2

    .line 243
    new-instance v5, Landroid/preference/PreferenceCategory;

    .end local v5           #wifiList:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 244
    .restart local v5       #wifiList:Landroid/preference/PreferenceCategory;
    const-string v7, "nearby_wifi"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 245
    const v7, 0x7f0c07f3

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 246
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 249
    :cond_2
    invoke-virtual {v5}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v2

    .line 251
    .local v2, accessPoints:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/wifi/AccessPoint;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 252
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 253
    .local v1, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 257
    .end local v1           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 258
    .local v4, otherWifi:Landroid/preference/Preference;
    const-string v7, "manually_add_network"

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 259
    const v7, 0x7f0c01e3

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 260
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 262
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiEnablePreference:Landroid/preference/CheckBoxPreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 266
    .end local v0           #WIFI_LIST_ORDER:I
    .end local v2           #accessPoints:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/wifi/AccessPoint;>;"
    .end local v4           #otherWifi:Landroid/preference/Preference;
    :pswitch_1
    if-eqz v5, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 272
    :pswitch_2
    const v7, 0x7f0c01d7

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/MiuiWifiSettings;->addMessagePreference(I)V

    .line 273
    if-eqz v5, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 279
    :pswitch_3
    const v7, 0x7f0c01ee

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/MiuiWifiSettings;->addMessagePreference(I)V

    goto/16 :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
