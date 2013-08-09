.class public Lcom/mediatek/gemini/GeminiStatus;
.super Landroid/preference/PreferenceActivity;
.source "GeminiStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/GeminiStatus$MyHandler;
    }
.end annotation


# static fields
.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field mExt:Lcom/android/settings/ext/IStatusGeminiExt;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mHandler:Landroid/os/Handler;

.field private mRes:Landroid/content/res/Resources;

.field private mUptime:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiStatus;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 126
    new-instance v0, Lcom/mediatek/gemini/GeminiStatus$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/GeminiStatus$1;-><init>(Lcom/mediatek/gemini/GeminiStatus;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/GeminiStatus;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiStatus;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/gemini/GeminiStatus;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiStatus;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method private convert(J)Ljava/lang/String;
    .locals 7
    .parameter "t"

    .prologue
    const-wide/16 v5, 0x3c

    .line 368
    rem-long v3, p1, v5

    long-to-int v2, v3

    .line 369
    .local v2, s:I
    div-long v3, p1, v5

    rem-long/2addr v3, v5

    long-to-int v1, v3

    .line 370
    .local v1, m:I
    const-wide/16 v3, 0xe10

    div-long v3, p1, v3

    long-to-int v0, v3

    .line 372
    .local v0, h:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/mediatek/gemini/GeminiStatus;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/mediatek/gemini/GeminiStatus;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 360
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 361
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 330
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 331
    .local v1, bluetooth:Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/GeminiStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 333
    .local v2, btAddressPref:Landroid/preference/Preference;
    if-nez v1, :cond_1

    .line 335
    if-eqz v2, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, address:Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_0

    .line 342
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .end local v0           #address:Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 339
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 342
    .restart local v0       #address:Ljava/lang/String;
    :cond_3
    const v3, 0x7f0c02fd

    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/GeminiStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setSimListEntrance()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 236
    const-string v4, "sim_status"

    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/GeminiStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 238
    .local v3, simStatus:Landroid/preference/Preference;
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiStatus;->mExt:Lcom/android/settings/ext/IStatusGeminiExt;

    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lcom/android/settings/ext/IStatusGeminiExt;->initUI(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    .line 239
    if-eqz v3, :cond_0

    .line 240
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 241
    .local v2, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 242
    .local v1, mSimNum:I
    const-string v4, "Gemini_Aboutphone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim num "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    if-nez v1, :cond_1

    .line 244
    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 261
    .end local v1           #mSimNum:I
    .end local v2           #simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_0
    :goto_0
    return-void

    .line 245
    .restart local v1       #mSimNum:I
    .restart local v2       #simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_1
    if-ne v1, v7, :cond_2

    .line 246
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 247
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "com.android.settings"

    const-string v5, "com.mediatek.gemini.SimStatusGemini"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v5, "slotid"

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v4, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 252
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    if-le v1, v7, :cond_0

    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.settings.SIM_LIST_ENTRANCE_ACTIVITY"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "title"

    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 256
    const-string v4, "type"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 264
    const-string v2, "Gemini_Aboutphone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 268
    :cond_0
    const-string v2, "slot_status"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 270
    .local v1, parent:Landroid/preference/PreferenceScreen;
    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 271
    .local v0, p:Landroid/preference/Preference;
    if-nez v0, :cond_2

    .line 272
    const-string v2, "Gemini_Aboutphone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot_status not find preference "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {p0, p1}, Lcom/mediatek/gemini/GeminiStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 281
    :cond_1
    :goto_0
    return-void

    .line 279
    :cond_2
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setWifiStatus()V
    .locals 8

    .prologue
    const v7, 0x7f0c02fd

    .line 305
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/mediatek/gemini/GeminiStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 306
    .local v5, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v2, 0x0

    .line 307
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v5, :cond_0

    .line 308
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 311
    :cond_0
    const-string v6, "wifi_mac_address"

    invoke-virtual {p0, v6}, Lcom/mediatek/gemini/GeminiStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 312
    .local v4, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 313
    .local v1, macAddress:Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_1

    .line 314
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .end local v1           #macAddress:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 319
    :cond_1
    const-string v6, "wifi_ip_address"

    invoke-virtual {p0, v6}, Lcom/mediatek/gemini/GeminiStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 320
    .local v3, wifiIpAddressPref:Landroid/preference/Preference;
    invoke-static {p0}, Lcom/android/settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, ipAddress:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 322
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 327
    :goto_2
    return-void

    .line 312
    .end local v0           #ipAddress:Ljava/lang/String;
    .end local v3           #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_2
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 314
    .restart local v1       #macAddress:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v7}, Lcom/mediatek/gemini/GeminiStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 324
    .end local v1           #macAddress:Ljava/lang/String;
    .restart local v0       #ipAddress:Ljava/lang/String;
    .restart local v3       #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_4
    invoke-virtual {p0, v7}, Lcom/mediatek/gemini/GeminiStatus;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private setWimaxStatus()V
    .locals 8

    .prologue
    .line 284
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/mediatek/gemini/GeminiStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 285
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 286
    .local v2, ni:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 287
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 290
    :cond_0
    if-nez v2, :cond_2

    .line 291
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 292
    .local v4, root:Landroid/preference/PreferenceScreen;
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/mediatek/gemini/GeminiStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 293
    .local v3, ps:Landroid/preference/Preference;
    if-eqz v3, :cond_1

    .line 294
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 302
    .end local v3           #ps:Landroid/preference/Preference;
    .end local v4           #root:Landroid/preference/PreferenceScreen;
    :cond_1
    :goto_0
    return-void

    .line 297
    :cond_2
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/mediatek/gemini/GeminiStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 298
    .local v5, wimaxMacAddressPref:Landroid/preference/Preference;
    const-string v6, "net.wimax.mac.address"

    const v7, 0x7f0c02fd

    invoke-virtual {p0, v7}, Lcom/mediatek/gemini/GeminiStatus;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, macAddress:Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    .line 168
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    const v6, 0x7f060024

    invoke-virtual {p0, v6}, Lcom/mediatek/gemini/GeminiStatus;->addPreferencesFromResource(I)V

    .line 170
    const-string v6, "Gemini_Aboutphone"

    const-string v8, "Enter StatusGemini onCreate function."

    invoke-static {v6, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {p0}, Lcom/mediatek/gemini/SimUtils;->getStatusGeminiExtPlugin(Landroid/content/Context;)Lcom/android/settings/ext/IStatusGeminiExt;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/gemini/GeminiStatus;->mExt:Lcom/android/settings/ext/IStatusGeminiExt;

    .line 172
    new-instance v6, Lcom/mediatek/gemini/GeminiStatus$MyHandler;

    invoke-direct {v6, p0}, Lcom/mediatek/gemini/GeminiStatus$MyHandler;-><init>(Lcom/mediatek/gemini/GeminiStatus;)V

    iput-object v6, p0, Lcom/mediatek/gemini/GeminiStatus;->mHandler:Landroid/os/Handler;

    .line 173
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v6, p0, Lcom/mediatek/gemini/GeminiStatus;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 175
    const-string v6, "battery_level"

    invoke-virtual {p0, v6}, Lcom/mediatek/gemini/GeminiStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/gemini/GeminiStatus;->mBatteryLevel:Landroid/preference/Preference;

    .line 176
    const-string v6, "battery_status"

    invoke-virtual {p0, v6}, Lcom/mediatek/gemini/GeminiStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/gemini/GeminiStatus;->mBatteryStatus:Landroid/preference/Preference;

    .line 177
    const-string v6, "up_time"

    invoke-virtual {p0, v6}, Lcom/mediatek/gemini/GeminiStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/gemini/GeminiStatus;->mUptime:Landroid/preference/Preference;

    .line 181
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/gemini/GeminiStatus;->mRes:Landroid/content/res/Resources;

    .line 182
    iget-object v6, p0, Lcom/mediatek/gemini/GeminiStatus;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f0c000b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/mediatek/gemini/GeminiStatus;->sUnknown:Ljava/lang/String;

    .line 184
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/mediatek/gemini/GeminiStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 186
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 187
    .local v2, sIsWifiOnly:Z
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v2, 0x1

    .line 190
    :goto_0
    const-string v6, "Gemini_Aboutphone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sIsWifiOnly="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    if-nez v2, :cond_4

    .line 194
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiStatus;->setSimListEntrance()V

    .line 196
    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 197
    .local v3, serial:Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 198
    const-string v6, "serial_number"

    invoke-direct {p0, v6, v3}, Lcom/mediatek/gemini/GeminiStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .end local v3           #serial:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiStatus;->setWimaxStatus()V

    .line 215
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiStatus;->setWifiStatus()V

    .line 216
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiStatus;->setBtStatus()V

    .line 217
    return-void

    :cond_2
    move v2, v7

    .line 188
    goto :goto_0

    .line 200
    .restart local v3       #serial:Ljava/lang/String;
    :cond_3
    const-string v6, "serial_number"

    invoke-virtual {p0, v6}, Lcom/mediatek/gemini/GeminiStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 201
    .local v1, pref:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 206
    .end local v1           #pref:Landroid/preference/Preference;
    .end local v3           #serial:Ljava/lang/String;
    :cond_4
    const-string v6, "sim_status"

    invoke-virtual {p0, v6}, Lcom/mediatek/gemini/GeminiStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 207
    .local v4, simStatus:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    const-string v6, "slot_status"

    invoke-virtual {p0, v6}, Lcom/mediatek/gemini/GeminiStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 210
    .local v5, slotStatus:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 231
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/GeminiStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 232
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiStatus;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 221
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 222
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/gemini/GeminiStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiStatus;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 226
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 350
    .local v0, at:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 352
    .local v2, ut:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 353
    const-wide/16 v2, 0x1

    .line 356
    :cond_0
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiStatus;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/mediatek/gemini/GeminiStatus;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 357
    return-void
.end method
