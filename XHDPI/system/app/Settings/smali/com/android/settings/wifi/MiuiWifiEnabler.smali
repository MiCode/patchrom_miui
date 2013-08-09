.class public Lcom/android/settings/wifi/MiuiWifiEnabler;
.super Ljava/lang/Object;
.source "MiuiWifiEnabler.java"


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mPreference:Landroid/preference/CheckBoxPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 2
    .parameter "context"
    .parameter "preference"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiWifiEnabler$1;-><init>(Lcom/android/settings/wifi/MiuiWifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    .line 71
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/MiuiWifiEnabler;->setPreference(Landroid/preference/CheckBoxPreference;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/MiuiWifiEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/MiuiWifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/MiuiWifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 160
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    packed-switch p1, :pswitch_data_0

    .line 145
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/MiuiWifiEnabler;->setChecked(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 149
    :goto_0
    return-void

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 133
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/MiuiWifiEnabler;->setChecked(Z)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 140
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/MiuiWifiEnabler;->setChecked(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mStateMachineEvent:Z

    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mStateMachineEvent:Z

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method public checkedChanged(Z)V
    .locals 4
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 99
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mStateMachineEvent:Z

    if-eqz v1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 103
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01d9

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 106
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 111
    .local v0, wifiApState:I
    if-eqz p1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 116
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 118
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 119
    :cond_4
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/MiuiAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 120
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 123
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01d8

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    return-void
.end method

.method public setPreference(Landroid/preference/CheckBoxPreference;)V
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 89
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroid/preference/CheckBoxPreference;

    .line 90
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 91
    .local v2, wifiState:I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    move v1, v3

    .line 92
    .local v1, isEnabled:Z
    :goto_0
    if-ne v2, v3, :cond_3

    move v0, v3

    .line 93
    .local v0, isDisabled:Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 94
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiEnabler;->mPreference:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 95
    return-void

    .end local v0           #isDisabled:Z
    .end local v1           #isEnabled:Z
    :cond_2
    move v1, v4

    .line 91
    goto :goto_0

    .restart local v1       #isEnabled:Z
    :cond_3
    move v0, v4

    .line 92
    goto :goto_1
.end method
