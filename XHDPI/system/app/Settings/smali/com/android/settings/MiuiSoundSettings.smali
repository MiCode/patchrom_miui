.class public Lcom/android/settings/MiuiSoundSettings;
.super Lcom/android/settings/SoundSettings;
.source "MiuiSoundSettings.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mContentHandler:Landroid/os/Handler;

.field private mMediaFeedback:Landroid/preference/CheckBoxPreference;

.field private mMediaFeedbackLevel:Landroid/preference/ListPreference;

.field private final mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSilentOrVibrate:Landroid/preference/CheckBoxPreference;

.field private mSmsDeliveredSoundPreference:Lcom/android/settings/SmsRingtonePreference;

.field private mSmsReceivedSoundPreference:Lcom/android/settings/SmsRingtonePreference;

.field private mVibrateInNormal:Landroid/preference/CheckBoxPreference;

.field private mVibrateInSilent:Landroid/preference/CheckBoxPreference;

.field private final mVibrateSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;-><init>()V

    .line 227
    new-instance v0, Lcom/android/settings/MiuiSoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSoundSettings$1;-><init>(Lcom/android/settings/MiuiSoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 236
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mContentHandler:Landroid/os/Handler;

    .line 237
    new-instance v0, Lcom/android/settings/MiuiSoundSettings$2;

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mContentHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MiuiSoundSettings$2;-><init>(Lcom/android/settings/MiuiSoundSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private getHapticFeedbackLevelValue()I
    .locals 4

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_level"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 186
    .local v0, level:I
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private getMediaFeedbackPreference()Landroid/content/SharedPreferences;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.android.settings_reverb"

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 267
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v1, "enable"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "enable"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "strength"

    const/4 v3, 0x7

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "density"

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sharpness"

    const/16 v3, 0xf

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mediaplayer"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 275
    :cond_0
    return-object v0
.end method

.method private setHapticFeedbackLevelValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_level"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method


# virtual methods
.method protected handleOthersSummery(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsReceivedSoundPreference:Lcom/android/settings/SmsRingtonePreference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/settings/SmsRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsDeliveredSoundPreference:Lcom/android/settings/SmsRingtonePreference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/settings/SmsRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/SoundSettings;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const-string v2, "ro.haptic.vibrate_ex.enabled"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 94
    iput-object v4, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->getHapticFeedbackLevelValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 99
    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 102
    :cond_1
    const-string v2, "sms_received_sound"

    invoke-virtual {p0, v2}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SmsRingtonePreference;

    iput-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsReceivedSoundPreference:Lcom/android/settings/SmsRingtonePreference;

    .line 103
    const-string v2, "sms_delivered_sound"

    invoke-virtual {p0, v2}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SmsRingtonePreference;

    iput-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsDeliveredSoundPreference:Lcom/android/settings/SmsRingtonePreference;

    .line 105
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/settings/MiuiSoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 106
    const-string v2, "miui_silent_or_vibrate"

    invoke-virtual {p0, v2}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mSilentOrVibrate:Landroid/preference/CheckBoxPreference;

    .line 107
    const-string v2, "miui_vibrate_in_silent_key"

    invoke-virtual {p0, v2}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateInSilent:Landroid/preference/CheckBoxPreference;

    .line 108
    const-string v2, "miui_vibrate_in_normal_key"

    invoke-virtual {p0, v2}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateInNormal:Landroid/preference/CheckBoxPreference;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 110
    const-string v2, "dolby_control"

    invoke-virtual {p0, v2}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 111
    .local v0, preference:Landroid/preference/Preference;
    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 116
    .end local v0           #preference:Landroid/preference/Preference;
    :cond_2
    const-string v2, "media_feedback"

    invoke-virtual {p0, v2}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mMediaFeedback:Landroid/preference/CheckBoxPreference;

    .line 117
    const-string v2, "media_feedback_level"

    invoke-virtual {p0, v2}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mMediaFeedbackLevel:Landroid/preference/ListPreference;

    .line 118
    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mMediaFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mMediaFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mMediaFeedbackLevel:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 122
    iput-object v4, p0, Lcom/android/settings/MiuiSoundSettings;->mMediaFeedback:Landroid/preference/CheckBoxPreference;

    .line 123
    iput-object v4, p0, Lcom/android/settings/MiuiSoundSettings;->mMediaFeedbackLevel:Landroid/preference/ListPreference;

    .line 136
    :cond_3
    :goto_0
    return-void

    .line 125
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->getMediaFeedbackPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 126
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mMediaFeedback:Landroid/preference/CheckBoxPreference;

    const-string v3, "enable"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 128
    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mMediaFeedbackLevel:Landroid/preference/ListPreference;

    const-string v3, "strength"

    const/4 v4, 0x7

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mMediaFeedbackLevel:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mMediaFeedbackLevel:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mMediaFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mMediaFeedbackLevel:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    invoke-super {p0}, Lcom/android/settings/SoundSettings;->onPause()V

    .line 158
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 192
    invoke-super {p0, p1, p2}, Lcom/android/settings/SoundSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 193
    iget-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_1

    .line 194
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/MiuiSoundSettings;->setHapticFeedbackLevelValue(I)V

    .line 210
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 195
    .restart local p2
    :cond_1
    iget-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mMediaFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_2

    .line 196
    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->getMediaFeedbackPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "enable"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 198
    .restart local p2
    :cond_2
    iget-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mMediaFeedbackLevel:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 199
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, value:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->getMediaFeedbackPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "strength"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 203
    iget-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mMediaFeedbackLevel:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 204
    .local v2, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 205
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 206
    iget-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mMediaFeedbackLevel:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/MiuiSoundSettings;->mMediaFeedbackLevel:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 204
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mSilentOrVibrate:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lmiui/util/AudioManagerHelper;->toggleSilent(Landroid/content/Context;I)V

    .line 223
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SoundSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateInNormal:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateInNormal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lmiui/util/AudioManagerHelper;->setVibrateSetting(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateInSilent:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateInSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiui/util/AudioManagerHelper;->setVibrateSetting(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    invoke-super {p0}, Lcom/android/settings/SoundSettings;->onResume()V

    .line 141
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 145
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "vibrate_in_silent"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 147
    const-string v2, "vibrate_in_normal"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->refreshVolumeAndVibrate()V

    .line 151
    return-void
.end method

.method refreshVolumeAndVibrate()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 247
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 249
    .local v0, ringerMode:I
    iget-object v4, p0, Lcom/android/settings/MiuiSoundSettings;->mSilentOrVibrate:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 251
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateInSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_in_silent"

    invoke-static {v4, v5, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 257
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateInNormal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "vibrate_in_normal"

    invoke-static {v2, v4, v3}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 262
    return-void

    :cond_0
    move v1, v3

    .line 249
    goto :goto_0
.end method

.method protected ringtoneLookupOthers()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsReceivedSoundPreference:Lcom/android/settings/SmsRingtonePreference;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Landroid/media/ExtraRingtoneManager;->getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSoundSettings;->updateRingtoneName(Landroid/net/Uri;I)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsDeliveredSoundPreference:Lcom/android/settings/SmsRingtonePreference;

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/media/ExtraRingtoneManager;->getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSoundSettings;->updateRingtoneName(Landroid/net/Uri;I)V

    .line 172
    :cond_1
    return-void
.end method
