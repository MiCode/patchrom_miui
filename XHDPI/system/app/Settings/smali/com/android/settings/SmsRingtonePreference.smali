.class public Lcom/android/settings/SmsRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "SmsRingtonePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/settings/SmsRingtonePreference;->setShowDefault(Z)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/settings/SmsRingtonePreference;->setShowSilent(Z)V

    .line 38
    return-void
.end method


# virtual methods
.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "defaultReturnValue"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings/SmsRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/SmsRingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, v:Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public getRingtoneType()I
    .locals 3

    .prologue
    .line 113
    const/16 v0, 0x8

    .line 114
    .local v0, ringtoneType:I
    const-string v1, "sms_received_sound"

    invoke-virtual {p0}, Lcom/android/settings/SmsRingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const/16 v0, 0x10

    .line 117
    :cond_0
    return v0
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "ringtonePickerIntent"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 48
    const-string v0, "com.android.thememanager"

    const-string v1, "com.android.thememanager.activity.ThemeTabActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 52
    return-void
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 2
    .parameter "ringtoneUri"

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/settings/SmsRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SmsRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/ExtraRingtoneManager;->resolveDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/SmsRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SmsRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/ExtraRingtoneManager;->setRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 124
    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 4
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/SmsRingtonePreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/settings/SmsRingtonePreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne p1, v2, :cond_0

    move v0, v1

    .line 80
    :goto_0
    return v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SmsRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/SmsRingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move v0, v1

    .line 78
    goto :goto_0

    .line 80
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/settings/SmsRingtonePreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SmsRingtonePreference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
