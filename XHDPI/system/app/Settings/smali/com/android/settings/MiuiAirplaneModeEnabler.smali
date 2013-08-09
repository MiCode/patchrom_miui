.class public Lcom/android/settings/MiuiAirplaneModeEnabler;
.super Lcom/android/settings/BaseEnabler;
.source "MiuiAirplaneModeEnabler.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field protected mIsRegisterIntent:Z

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V
    .locals 2
    .parameter "activity"
    .parameter "slidingButton"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BaseEnabler;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    .line 30
    new-instance v0, Lcom/android/settings/MiuiAirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiAirplaneModeEnabler$1;-><init>(Lcom/android/settings/MiuiAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/android/settings/MiuiAirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/MiuiAirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MiuiAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 44
    iget-object v0, p0, Lcom/android/settings/MiuiAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 45
    return-void
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 65
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


# virtual methods
.method protected getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 119
    const-string v0, "airplane_mode_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 110
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 111
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 113
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/MiuiAirplaneModeEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v2}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/MiuiAirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 115
    .end local v0           #isChoiceYes:Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 94
    const-string v0, "airplane_mode_settings"

    const-string v1, "airplane_mode_settings"

    const-string v2, "airplane_mode_settings"

    invoke-static {v2}, Lcom/android/settings/FrequentlySet;->getHeaderIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/provider/MiuiSettingsUtil;->addToCache(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/MiuiAirplaneModeEnabler;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiAirplaneModeEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiAirplaneModeEnabler;->setAirplaneModeOn(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/settings/MiuiAirplaneModeEnabler;->mIsRegisterIntent:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/settings/MiuiAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MiuiAirplaneModeEnabler;->mIsRegisterIntent:Z

    .line 61
    :cond_0
    invoke-super {p0}, Lcom/android/settings/BaseEnabler;->pause()V

    .line 62
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/settings/MiuiAirplaneModeEnabler;->mIsRegisterIntent:Z

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MiuiAirplaneModeEnabler;->mIsRegisterIntent:Z

    .line 51
    iget-object v0, p0, Lcom/android/settings/MiuiAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 53
    :cond_0
    invoke-super {p0}, Lcom/android/settings/BaseEnabler;->resume()V

    .line 54
    return-void
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 0
    .parameter "isECMExit"
    .parameter "isAirplaneModeOn"

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0, p2}, Lcom/android/settings/MiuiAirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiAirplaneModeEnabler;->update()V

    goto :goto_0
.end method

.method protected setAirplaneModeOn(Z)V
    .locals 4
    .parameter "enabling"

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/settings/MiuiAirplaneModeEnabler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    iget-object v1, p0, Lcom/android/settings/MiuiAirplaneModeEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, p1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/android/settings/MiuiAirplaneModeEnabler;->mActivity:Landroid/app/Activity;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 80
    return-void

    .line 71
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected update()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/MiuiAirplaneModeEnabler;->mSlidingButton:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/android/settings/MiuiAirplaneModeEnabler;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/settings/MiuiAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 125
    return-void
.end method
