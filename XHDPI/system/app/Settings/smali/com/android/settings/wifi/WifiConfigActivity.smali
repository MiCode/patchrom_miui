.class public Lcom/android/settings/wifi/WifiConfigActivity;
.super Landroid/app/Activity;
.source "WifiConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static sRetrySsid:Ljava/lang/String;


# instance fields
.field private mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    sput-object p0, Lcom/android/settings/wifi/WifiConfigActivity;->sRetrySsid:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 50
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 51
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v1

    .line 52
    .local v1, configController:Lcom/android/settings/wifi/WifiConfigController;
    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 54
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 55
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 56
    .local v3, syncConfig:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 57
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 58
    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->isWifiShare()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 59
    .local v2, shareState:I
    :goto_0
    invoke-static {p0, v3, v2}, Lcom/android/settings/wifi/WifiConfigurationManager;->addWifi(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V

    .line 61
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #configController:Lcom/android/settings/wifi/WifiConfigController;
    .end local v2           #shareState:I
    .end local v3           #syncConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-void

    .line 58
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v1       #configController:Lcom/android/settings/wifi/WifiConfigController;
    .restart local v3       #syncConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiConfigActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 25
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "wifi_config"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 26
    .local v1, wifiConfiguration:Landroid/net/wifi/WifiConfiguration;
    const/4 v0, 0x0

    .line 27
    .local v0, newConfig:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    sget-object v3, Lcom/android/settings/wifi/WifiConfigActivity;->sRetrySsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    invoke-static {p0, v1}, Lcom/android/settings/wifi/WifiConfigurationManager;->getLatestWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 30
    :cond_0
    if-eqz v0, :cond_1

    .line 31
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    sput-object v2, Lcom/android/settings/wifi/WifiConfigActivity;->sRetrySsid:Ljava/lang/String;

    .line 32
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigActivity;->finish()V

    .line 46
    :goto_0
    return-void

    .line 36
    :cond_1
    new-instance v2, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 37
    new-instance v2, Lcom/android/settings/wifi/WifiDialog;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v4, 0x1

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 38
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    new-instance v3, Lcom/android/settings/wifi/WifiConfigActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiConfigActivity$1;-><init>(Lcom/android/settings/wifi/WifiConfigActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 45
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiDialog;->show()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 69
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 70
    return-void
.end method
