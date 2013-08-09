.class public Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;
.super Lcom/android/settings/MiuiAirplaneModeEnabler;
.source "GeminiAirplaneModeEnabler.java"


# instance fields
.field private mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

.field mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

.field private mServiceState1:I

.field private mServiceState2:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V
    .locals 1
    .parameter "activity"
    .parameter "slidingButton"

    .prologue
    const/4 v0, 0x3

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiAirplaneModeEnabler;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    .line 57
    iput v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mServiceState1:I

    .line 58
    iput v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mServiceState2:I

    .line 100
    new-instance v0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler$1;-><init>(Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    new-instance v0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler$2;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler$2;-><init>(Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    .line 121
    new-instance v0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler$3;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler$3;-><init>(Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    .line 67
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 69
    new-instance v0, Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-direct {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;)Lmiui/widget/SlidingButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;)Lmiui/widget/SlidingButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mServiceState1:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$502(Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mServiceState2:I

    return p1
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 185
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 188
    .local v0, airplaneModeEnabled:Z
    if-eqz v0, :cond_1

    .line 189
    iget v1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mServiceState1:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mServiceState2:I

    if-eq v1, v2, :cond_1

    .line 191
    :cond_0
    const-string v1, "GeminiAirplaneModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unfinish! serviceState1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mServiceState1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceState2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mServiceState2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_0
    return-void

    .line 205
    :cond_1
    const-string v1, "GeminiAirplaneModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finish! airplaneModeEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 207
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 231
    const-string v0, "airplane_mode_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    iput-boolean v3, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mIsRegisterIntent:Z

    .line 133
    invoke-super {p0}, Lcom/android/settings/MiuiAirplaneModeEnabler;->pause()V

    .line 135
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 139
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 149
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 76
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v3}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 82
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 95
    :goto_0
    iput-boolean v3, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mIsRegisterIntent:Z

    .line 96
    invoke-super {p0}, Lcom/android/settings/MiuiAirplaneModeEnabler;->resume()V

    .line 98
    return-void

    .line 90
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 92
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 1
    .parameter "isECMExit"
    .parameter "isAirplaneModeOn"

    .prologue
    .line 213
    if-eqz p1, :cond_1

    .line 215
    invoke-virtual {p0, p2}, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->onAirplaneModeChanged()V

    goto :goto_0
.end method

.method protected setAirplaneModeOn(Z)V
    .locals 5
    .parameter "enabling"

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, p1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mActivity:Landroid/app/Activity;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 173
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    move v1, v2

    .line 159
    goto :goto_0
.end method

.method protected update()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/mediatek/gemini/GeminiAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 227
    return-void
.end method
