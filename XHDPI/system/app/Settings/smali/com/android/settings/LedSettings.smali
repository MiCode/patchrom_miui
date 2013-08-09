.class public Lcom/android/settings/LedSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LedSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBreathingLightColor:Landroid/preference/ListPreference;

.field private mBreathingLightFreq:Landroid/preference/ListPreference;

.field private mCallBreathingLightColor:Landroid/preference/ListPreference;

.field private mCallBreathingLightFreq:Landroid/preference/ListPreference;

.field private mMmsBreathingLightColor:Landroid/preference/ListPreference;

.field private mMmsBreathingLightFreq:Landroid/preference/ListPreference;

.field private mNotificationPulse:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setSummary(Landroid/preference/ListPreference;IZ)I
    .locals 8
    .parameter "pref"
    .parameter "value"
    .parameter "isColor"

    .prologue
    .line 123
    const/4 v4, -0x1

    .line 124
    .local v4, i:I
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/CharSequence;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v0, v5

    .line 125
    .local v3, entryValue:Ljava/lang/CharSequence;
    add-int/lit8 v4, v4, 0x1

    .line 126
    const/4 v2, 0x0

    .line 127
    .local v2, entry:I
    if-eqz p3, :cond_1

    .line 128
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 132
    :goto_1
    if-ne p2, v2, :cond_2

    .line 133
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 134
    .local v1, entries:[Ljava/lang/CharSequence;
    aget-object v7, v1, v4

    invoke-virtual {p1, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    .end local v1           #entries:[Ljava/lang/CharSequence;
    .end local v2           #entry:I
    .end local v3           #entryValue:Ljava/lang/CharSequence;
    :cond_0
    return v4

    .line 130
    .restart local v2       #entry:I
    .restart local v3       #entryValue:Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 124
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private setValue(Landroid/preference/ListPreference;IZ)V
    .locals 2
    .parameter "pref"
    .parameter "value"
    .parameter "isColor"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/LedSettings;->setSummary(Landroid/preference/ListPreference;IZ)I

    move-result v0

    .line 117
    .local v0, index:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 118
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v11, 0x7f06003b

    invoke-virtual {p0, v11}, Lcom/android/settings/LedSettings;->addPreferencesFromResource(I)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0c0802

    invoke-virtual {v11, v12}, Landroid/app/Activity;->setTitle(I)V

    .line 39
    const v11, 0x7f0c07fc

    invoke-virtual {p0, v11}, Lcom/android/settings/LedSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 40
    .local v10, notification:Ljava/lang/String;
    const v11, 0x7f0c07fb

    invoke-virtual {p0, v11}, Lcom/android/settings/LedSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, call:Ljava/lang/String;
    const v11, 0x7f0c07fd

    invoke-virtual {p0, v11}, Lcom/android/settings/LedSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 43
    .local v7, mms:Ljava/lang/String;
    const-string v11, "notification_pulse"

    invoke-virtual {p0, v11}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/LedSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    .line 44
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 46
    const-string v11, "breathing_light_color"

    invoke-virtual {p0, v11}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/settings/LedSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    .line 47
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/LedSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v11, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    const-string v11, "breathing_light_freq"

    invoke-virtual {p0, v11}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/settings/LedSettings;->mBreathingLightFreq:Landroid/preference/ListPreference;

    .line 50
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {v11, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mBreathingLightFreq:Landroid/preference/ListPreference;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/LedSettings;->mBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    const-string v11, "call_breathing_light_color"

    invoke-virtual {p0, v11}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    .line 54
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v11, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    const-string v11, "call_breathing_light_freq"

    invoke-virtual {p0, v11}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightFreq:Landroid/preference/ListPreference;

    .line 57
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {v11, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightFreq:Landroid/preference/ListPreference;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    const-string v11, "mms_breathing_light_color"

    invoke-virtual {p0, v11}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    .line 61
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v11, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 62
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    const-string v11, "mms_breathing_light_freq"

    invoke-virtual {p0, v11}, Lcom/android/settings/LedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightFreq:Landroid/preference/ListPreference;

    .line 64
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {v11, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightFreq:Landroid/preference/ListPreference;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    sget-boolean v11, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v11, :cond_0

    sget-boolean v11, Lmiui/os/Build;->IS_MI1S:Z

    if-eqz v11, :cond_1

    .line 68
    :cond_0
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    const v12, 0x7f080054

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 69
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    const v12, 0x7f080053

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 71
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    const v12, 0x7f080054

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 72
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    const v12, 0x7f080053

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 74
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    const v12, 0x7f080054

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 75
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    const v12, 0x7f080053

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x6070003

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 80
    .local v4, defaultColor:I
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "breathing_light_color"

    invoke-static {v11, v12, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 82
    .local v3, color:I
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "call_breathing_light_color"

    invoke-static {v11, v12, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 84
    .local v1, callColor:I
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "mms_breathing_light_color"

    invoke-static {v11, v12, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 87
    .local v8, mmsColor:I
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    const/4 v12, 0x1

    invoke-direct {p0, v11, v3, v12}, Lcom/android/settings/LedSettings;->setValue(Landroid/preference/ListPreference;IZ)V

    .line 88
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    const/4 v12, 0x1

    invoke-direct {p0, v11, v1, v12}, Lcom/android/settings/LedSettings;->setValue(Landroid/preference/ListPreference;IZ)V

    .line 89
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    const/4 v12, 0x1

    invoke-direct {p0, v11, v8, v12}, Lcom/android/settings/LedSettings;->setValue(Landroid/preference/ListPreference;IZ)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x6080008

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 93
    .local v5, defaultFreq:I
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "breathing_light_freq"

    invoke-static {v11, v12, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 95
    .local v6, freq:I
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "call_breathing_light_freq"

    invoke-static {v11, v12, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 97
    .local v2, callFreq:I
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "mms_breathing_light_freq"

    invoke-static {v11, v12, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 100
    .local v9, mmsFreq:I
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mBreathingLightFreq:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-direct {p0, v11, v6, v12}, Lcom/android/settings/LedSettings;->setValue(Landroid/preference/ListPreference;IZ)V

    .line 101
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightFreq:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-direct {p0, v11, v2, v12}, Lcom/android/settings/LedSettings;->setValue(Landroid/preference/ListPreference;IZ)V

    .line 102
    iget-object v11, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightFreq:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-direct {p0, v11, v9, v12}, Lcom/android/settings/LedSettings;->setValue(Landroid/preference/ListPreference;IZ)V

    .line 105
    iget-object v12, p0, Lcom/android/settings/LedSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "notification_light_pulse"

    const/4 v14, 0x1

    invoke-static {v11, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_3

    const/4 v11, 0x1

    :goto_0
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0014

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-nez v11, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/LedSettings;->mBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/LedSettings;->mCallBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/LedSettings;->mMmsBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 113
    :cond_2
    return-void

    .line 105
    :cond_3
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v6, 0x1

    .line 142
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, key:Ljava/lang/String;
    const/4 v4, -0x1

    .line 144
    .local v4, value:I
    const/4 v2, 0x0

    .line 145
    .local v2, isColor:Z
    const-string v5, "breathing_light_color"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 146
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 147
    const/4 v2, 0x1

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "breathing_light_color"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    instance-of v5, p1, Landroid/preference/ListPreference;

    if-eqz v5, :cond_1

    .line 202
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-direct {p0, p1, v4, v2}, Lcom/android/settings/LedSettings;->setSummary(Landroid/preference/ListPreference;IZ)I

    .line 204
    :cond_1
    return v6

    .line 151
    .restart local p1
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "TrackballSettings"

    const-string v7, "could not persist breathing light color settings"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 154
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_2
    const-string v5, "breathing_light_freq"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 155
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 157
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "breathing_light_freq"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 159
    :catch_1
    move-exception v0

    .line 160
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v5, "TrackballSettings"

    const-string v7, "could not persist breathing light frequency settings"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 162
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_3
    const-string v5, "call_breathing_light_color"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 163
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 164
    const/4 v2, 0x1

    .line 166
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "call_breathing_light_color"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 168
    :catch_2
    move-exception v0

    .line 169
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v5, "TrackballSettings"

    const-string v7, "could not persist breathing light color settings"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 171
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_4
    const-string v5, "call_breathing_light_freq"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 172
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 174
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "call_breathing_light_freq"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 176
    :catch_3
    move-exception v0

    .line 177
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v5, "TrackballSettings"

    const-string v7, "could not persist breathing light frequency settings"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 179
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_5
    const-string v5, "mms_breathing_light_color"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 180
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 181
    const/4 v2, 0x1

    .line 183
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "mms_breathing_light_color"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 185
    :catch_4
    move-exception v0

    .line 186
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v5, "TrackballSettings"

    const-string v7, "could not persist breathing light color settings"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 188
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_6
    const-string v5, "mms_breathing_light_freq"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 189
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 191
    :try_start_5
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "mms_breathing_light_freq"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 193
    :catch_5
    move-exception v0

    .line 194
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v5, "TrackballSettings"

    const-string v7, "could not persist breathing light frequency settings"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 196
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_7
    const-string v5, "notification_pulse"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 197
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 198
    .local v1, isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/LedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "notification_light_pulse"

    if-eqz v1, :cond_8

    move v5, v6

    :goto_1
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_8
    const/4 v5, 0x0

    goto :goto_1
.end method
