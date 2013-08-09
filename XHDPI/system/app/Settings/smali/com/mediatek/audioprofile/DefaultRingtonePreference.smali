.class public Lcom/mediatek/audioprofile/DefaultRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "DefaultRingtonePreference.java"


# instance fields
.field private mExt:Lcom/android/settings/ext/IAudioProfileExt;

.field private mKey:Ljava/lang/String;

.field private final mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mStreamType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    const-string v0, "audioprofile"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 95
    invoke-static {p1}, Lcom/mediatek/gemini/SimUtils;->getAudioProfilePlgin(Landroid/content/Context;)Lcom/android/settings/ext/IAudioProfileExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mExt:Lcom/android/settings/ext/IAudioProfileExt;

    .line 96
    return-void
.end method


# virtual methods
.method public getRingtoneType()I
    .locals 3

    .prologue
    .line 204
    invoke-super {p0}, Landroid/preference/RingtonePreference;->getRingtoneType()I

    move-result v0

    .line 205
    .local v0, ringtoneType:I
    const-string v1, "sms_received_sound"

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    const/16 v0, 0x10

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 207
    :cond_1
    const-string v1, "sms_delivered_sound"

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "ringtonePickerIntent"

    .prologue
    const/4 v3, 0x0

    .line 135
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 140
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    const-string v1, "RING"

    iget-object v2, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mStreamType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    .line 149
    .local v0, ringtoneType:I
    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 151
    :cond_1
    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mExt:Lcom/android/settings/ext/IAudioProfileExt;

    invoke-interface {v1, p1}, Lcom/android/settings/ext/IAudioProfileExt;->setRingtonePickerParams(Landroid/content/Intent;)V

    .line 157
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    .line 189
    .local v0, type:I
    const-string v2, "Settings/Rt_Pref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestoreRingtone: type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v2, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v3, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 192
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "Settings/Rt_Pref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestoreRingtone: uri = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_0

    const-string v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->updateRingtoneSummary(Landroid/net/Uri;)V

    .line 198
    return-object v1

    .line 192
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 3
    .parameter "ringtoneUri"

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->updateRingtoneSummary(Landroid/net/Uri;)V

    .line 170
    iget-object v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setRingtoneUri(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 172
    return-void
.end method

.method public setProfile(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mKey:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setRingtoneType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 122
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->getRingtoneType()I

    move-result p1

    .line 123
    iget-object v1, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 124
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->updateRingtoneSummary(Landroid/net/Uri;)V

    .line 125
    return-void
.end method

.method public setStreamType(Ljava/lang/String;)V
    .locals 0
    .parameter "streamType"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mStreamType:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public updateRingtoneSummary(Landroid/net/Uri;)V
    .locals 3
    .parameter "ringtoneUri"

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/media/ExtraRingtone;->getRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, summary:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method
