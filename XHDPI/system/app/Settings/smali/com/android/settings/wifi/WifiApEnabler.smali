.class public Lcom/android/settings/wifi/WifiApEnabler;
.super Landroid/app/Fragment;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mBandwidthPre:Landroid/preference/Preference;

.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mOriginalSummary:Ljava/lang/CharSequence;

.field private mProvisionApp:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/preference/CheckBoxPreference;

.field private mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

.field private mTetherChoice:I

.field private mTetherSettings:Lcom/android/settings/TetherSettings;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private mWpsConnectPre:Landroid/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 1
    .parameter "context"
    .parameter "switch_"
    .parameter "wps"
    .parameter "bandwith"

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mTetherChoice:I

    .line 79
    new-instance v0, Lcom/android/settings/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApEnabler$1;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/CheckBoxPreference;

    .line 112
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWpsConnectPre:Landroid/preference/Preference;

    .line 113
    iput-object p4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mBandwidthPre:Landroid/preference/Preference;

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->init(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;)V
    .locals 1
    .parameter "context"
    .parameter "preference"

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mTetherChoice:I

    .line 79
    new-instance v0, Lcom/android/settings/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApEnabler$1;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v0}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->init(Landroid/content/Context;)V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiApEnabler;->updateTetherStateForIpv6([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    return-void
.end method

.method private enableWifiCheckBox()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 170
    .local v0, isAirplaneMode:Z
    :goto_0
    if-nez v0, :cond_1

    .line 171
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    .line 178
    :goto_1
    return-void

    .end local v0           #isAirplaneMode:Z
    :cond_0
    move v0, v2

    .line 168
    goto :goto_0

    .line 173
    .restart local v0       #isAirplaneMode:Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    goto :goto_1
.end method

.method private handleWifiApStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 333
    packed-switch p1, :pswitch_data_0

    .line 370
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 335
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    .line 336
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApEnabler;->setPreferenceState(Z)V

    .line 337
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApEnabler;->setStartTime(Z)V

    .line 338
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    const v1, 0x7f0c025b

    invoke-virtual {v0, v1}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 347
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 348
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    .line 349
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->setPreferenceState(Z)V

    .line 350
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->setStartTime(Z)V

    goto :goto_0

    .line 353
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    .line 354
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApEnabler;->setPreferenceState(Z)V

    .line 355
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    .line 356
    const-string v0, "WifiApEnabler"

    const-string v1, "wifi_stopping"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    const v1, 0x7f0c025c

    invoke-virtual {v0, v1}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 361
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 362
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    .line 363
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApEnabler;->setPreferenceState(Z)V

    .line 364
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 367
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setPreferenceState(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 391
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mBandwidthPre:Landroid/preference/Preference;

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 393
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 394
    .local v0, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 395
    const-string v1, "WifiApEnabler"

    const-string v2, "security is wpa psk, disable wps connect preference"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 p1, 0x0

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWpsConnectPre:Landroid/preference/Preference;

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 400
    .end local v0           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return-void
.end method

.method private setStartTime(Z)V
    .locals 8
    .parameter "enable"

    .prologue
    const-wide/16 v6, 0x0

    .line 459
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_hotspot_start_time"

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 461
    .local v2, startTime:J
    if-eqz p1, :cond_1

    .line 462
    cmp-long v4, v2, v6

    if-nez v4, :cond_0

    .line 463
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_hotspot_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 465
    const-string v4, "WifiApEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enable value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    const-wide/16 v0, 0x0

    .line 469
    .local v0, newValue:J
    const-string v4, "WifiApEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_hotspot_start_time"

    invoke-static {v4, v5, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0
.end method

.method private setSwitchChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mStateMachineEvent:Z

    .line 376
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 381
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mStateMachineEvent:Z

    .line 382
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private setSwitchEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .parameter "choice"

    .prologue
    const/4 v4, 0x0

    .line 434
    iput p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mTetherChoice:I

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApEnabler;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 439
    const-string v1, "WifiApEnabler"

    const-string v2, "startProvisioningIfNecessary, startActivityForResult"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 441
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 2

    .prologue
    .line 453
    iget v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mTetherChoice:I

    if-nez v0, :cond_0

    .line 454
    const-string v0, "WifiApEnabler"

    const-string v1, "startTethering, setSoftapEnabled"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 457
    :cond_0
    return-void
.end method

.method private updateTetherStateForIpv6([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 19
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 229
    const/4 v15, 0x0

    .line 230
    .local v15, wifiTethered:Z
    const/4 v14, 0x0

    .line 232
    .local v14, wifiErrored:Z
    const/4 v12, 0x0

    .line 233
    .local v12, wifiErrorIpv4:I
    const/16 v13, 0x10

    .line 234
    .local v13, wifiErrorIpv6:I
    move-object/from16 v1, p1

    .local v1, arr$:[Ljava/lang/Object;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v7, v1, v4

    .local v7, o:Ljava/lang/Object;
    move-object v9, v7

    .line 235
    check-cast v9, Ljava/lang/String;

    .line 236
    .local v9, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v8, v2, v3

    .line 237
    .local v8, regex:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 238
    if-nez v12, :cond_0

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v16

    and-int/lit8 v12, v16, 0xf

    .line 241
    :cond_0
    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v13, v0, :cond_1

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    and-int/lit16 v13, v0, 0xf0

    .line 236
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 234
    .end local v8           #regex:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_0

    .line 248
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #o:Ljava/lang/Object;
    .end local v9           #s:Ljava/lang/String;
    :cond_3
    move-object/from16 v1, p2

    .restart local v1       #arr$:[Ljava/lang/Object;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    move v4, v3

    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .restart local v4       #i$:I
    :goto_2
    if-ge v4, v5, :cond_6

    aget-object v7, v1, v4

    .restart local v7       #o:Ljava/lang/Object;
    move-object v9, v7

    .line 249
    check-cast v9, Ljava/lang/String;

    .line 250
    .restart local v9       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v6, :cond_5

    aget-object v8, v2, v3

    .line 251
    .restart local v8       #regex:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 252
    const/4 v15, 0x1

    .line 254
    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v13, v0, :cond_4

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    and-int/lit16 v13, v0, 0xf0

    .line 250
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 248
    .end local v8           #regex:Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_2

    .line 262
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #o:Ljava/lang/Object;
    .end local v9           #s:Ljava/lang/String;
    :cond_6
    move-object/from16 v1, p3

    .restart local v1       #arr$:[Ljava/lang/Object;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    move v4, v3

    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .restart local v4       #i$:I
    :goto_4
    if-ge v4, v5, :cond_9

    aget-object v7, v1, v4

    .restart local v7       #o:Ljava/lang/Object;
    move-object v9, v7

    .line 263
    check-cast v9, Ljava/lang/String;

    .line 264
    .restart local v9       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_5
    if-ge v3, v6, :cond_8

    aget-object v8, v2, v3

    .line 265
    .restart local v8       #regex:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 266
    const/4 v14, 0x1

    .line 264
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 262
    .end local v8           #regex:Ljava/lang/String;
    :cond_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_4

    .line 271
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #o:Ljava/lang/Object;
    .end local v9           #s:Ljava/lang/String;
    :cond_9
    if-eqz v15, :cond_c

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    .line 273
    .local v11, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x1040410

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 276
    .restart local v9       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0c025d

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    if-nez v11, :cond_b

    .end local v9           #s:Ljava/lang/String;
    :goto_6
    aput-object v9, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 280
    .local v10, tetheringActive:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mTetherSettings:Lcom/android/settings/TetherSettings;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    if-nez v16, :cond_a

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mTetherSettings:Lcom/android/settings/TetherSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/TetherSettings;->getIPV6String(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 289
    .end local v10           #tetheringActive:Ljava/lang/String;
    .end local v11           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_a
    :goto_7
    return-void

    .line 276
    .restart local v9       #s:Ljava/lang/String;
    .restart local v11       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_b
    iget-object v9, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_6

    .line 284
    .end local v9           #s:Ljava/lang/String;
    .end local v11           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_c
    if-eqz v14, :cond_a

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    if-nez v16, :cond_a

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    move-object/from16 v16, v0

    const v17, 0x7f0c01d8

    invoke-virtual/range {v16 .. v17}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setSummary(I)V

    goto :goto_7
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 134
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    .line 139
    return-void
.end method

.method isProvisioningNeeded()Z
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 445
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 446
    if-nez p1, :cond_0

    .line 447
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 448
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->startTethering()V

    .line 451
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 420
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    .line 429
    :goto_0
    return-void

    .line 423
    :cond_0
    const-string v0, "WifiApEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged, isChecked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-eqz p2, :cond_1

    .line 425
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiApEnabler;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 427
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 402
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi_tether_settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 403
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 404
    .local v0, isChecked:Z
    const-string v1, "WifiApEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange, isChecked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    if-eqz v0, :cond_1

    .line 406
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiApEnabler;->startProvisioningIfNecessary(I)V

    .line 415
    .end local v0           #isChecked:Z
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 408
    .restart local v0       #isChecked:Z
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 411
    .end local v0           #isChecked:Z
    .restart local p2
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/CheckBoxPreference;

    if-ne v1, p1, :cond_0

    .line 412
    const/4 v1, 0x0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiApEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    .line 153
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public setSoftapEnabled(Z)V
    .locals 8
    .parameter "enable"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 181
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 185
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 186
    .local v3, wifiState:I
    if-eqz p1, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 188
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 189
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 192
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 194
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    .line 204
    :cond_2
    :goto_0
    if-nez p1, :cond_3

    .line 205
    const/4 v2, 0x0

    .line 207
    .local v2, wifiSavedState:I
    :try_start_0
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 211
    :goto_1
    if-ne v2, v7, :cond_3

    .line 212
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 213
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    .end local v2           #wifiSavedState:I
    :cond_3
    return-void

    .line 196
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/CheckBoxPreference;

    if-nez v4, :cond_2

    .line 197
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    const v5, 0x7f0c01d8

    invoke-virtual {v4, v5}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 208
    .restart local v2       #wifiSavedState:I
    :catch_0
    move-exception v1

    .line 209
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "WifiApEnabler"

    const-string v5, "SettingNotFoundException"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setTetherSettings(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .parameter "tetherSettings"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mTetherSettings:Lcom/android/settings/TetherSettings;

    .line 299
    return-void
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .parameter "wifiConfig"

    .prologue
    .line 219
    const-string v1, "wlan"

    const-string v2, "SSID"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v4, 0x1040410

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mediatek/custom/CustomProperties;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c025d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_1

    .end local v0           #s:Ljava/lang/String;
    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 226
    :cond_0
    return-void

    .line 223
    .restart local v0       #s:Ljava/lang/String;
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method
