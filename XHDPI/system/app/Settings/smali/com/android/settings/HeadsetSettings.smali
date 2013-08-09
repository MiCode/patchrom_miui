.class public Lcom/android/settings/HeadsetSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HeadsetSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mLastMode:Ljava/lang/String;

.field private mPrefModeMusic:Lmiui/preference/RadioButtonPreference;

.field private mPrefModeVolume:Lmiui/preference/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->mLastMode:Ljava/lang/String;

    return-void
.end method

.method private getMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    const-string v0, "persist.sys.button_jack_profile"

    const-string v1, "volume"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private refresh()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->getMode()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, mode:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->mLastMode:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    :goto_0
    return-void

    .line 50
    :cond_0
    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->mLastMode:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->mPrefModeVolume:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 52
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->mPrefModeMusic:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 54
    const-string v1, "music"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->mPrefModeMusic:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v1, v3}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->mPrefModeVolume:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v1, v3}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private setMode(Ljava/lang/String;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 66
    const-string v0, "HeadsetSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new mode, mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v0, "persist.sys.button_jack_profile"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->addPreferencesFromResource(I)V

    .line 31
    const-string v0, "mode_volume"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->mPrefModeVolume:Lmiui/preference/RadioButtonPreference;

    .line 32
    const-string v0, "mode_music"

    invoke-virtual {p0, v0}, Lcom/android/settings/HeadsetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/HeadsetSettings;->mPrefModeMusic:Lmiui/preference/RadioButtonPreference;

    .line 34
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->mPrefModeVolume:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 35
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->mPrefModeMusic:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 36
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/HeadsetSettings;->mLastMode:Ljava/lang/String;

    .line 73
    .local v0, mode:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->mPrefModeVolume:Lmiui/preference/RadioButtonPreference;

    if-ne v1, p1, :cond_2

    .line 74
    const-string v0, "volume"

    .line 79
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->mLastMode:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    invoke-direct {p0, v0}, Lcom/android/settings/HeadsetSettings;->setMode(Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->refresh()V

    .line 84
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/android/settings/HeadsetSettings;->mPrefModeMusic:Lmiui/preference/RadioButtonPreference;

    if-ne v1, p1, :cond_0

    .line 76
    const-string v0, "music"

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 41
    invoke-direct {p0}, Lcom/android/settings/HeadsetSettings;->refresh()V

    .line 42
    return-void
.end method
