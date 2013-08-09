.class public Lcom/android/settings/KeySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KeySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBackLongPress:Landroid/preference/ListPreference;

.field private mButtonLight:Landroid/preference/CheckBoxPreference;

.field private mButtonLightTimout:Landroid/preference/ListPreference;

.field private mCameraKeyAction:Landroid/preference/Preference;

.field private mHomeLongPress:Landroid/preference/ListPreference;

.field private mMenuLongPress:Landroid/preference/ListPreference;

.field private mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

.field private mPowerLongPressEnable:Landroid/preference/CheckBoxPreference;

.field private mScreenKeyLongPressTimeout:Landroid/preference/ListPreference;

.field private mSnapshotScreenLockEnable:Landroid/preference/CheckBoxPreference;

.field private mTrackballWake:Landroid/preference/CheckBoxPreference;

.field private mVolumeKeyWakeEnable:Landroid/preference/CheckBoxPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateState(Z)V
    .locals 9
    .parameter "force"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 195
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 196
    iget-object v6, p0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "trackball_wake_screen"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 200
    :cond_0
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 201
    const-string v3, "persist.sys.multitouch"

    invoke-static {v3, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_7

    .line 202
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 208
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "screen_key_long_press_timeout"

    const/16 v7, 0x1f4

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 212
    .local v2, timeout:I
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mScreenKeyLongPressTimeout:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 213
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mScreenKeyLongPressTimeout:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/KeySettings;->mScreenKeyLongPressTimeout:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 215
    const-string v3, "screen_key_long_press_menu"

    iget-object v6, p0, Lcom/android/settings/KeySettings;->mMenuLongPress:Landroid/preference/ListPreference;

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/KeySettings;->updateScreenKeyLongPressAction(Ljava/lang/String;Landroid/preference/ListPreference;)V

    .line 216
    const-string v3, "screen_key_long_press_home"

    iget-object v6, p0, Lcom/android/settings/KeySettings;->mHomeLongPress:Landroid/preference/ListPreference;

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/KeySettings;->updateScreenKeyLongPressAction(Ljava/lang/String;Landroid/preference/ListPreference;)V

    .line 217
    const-string v3, "screen_key_long_press_back"

    iget-object v6, p0, Lcom/android/settings/KeySettings;->mBackLongPress:Landroid/preference/ListPreference;

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/KeySettings;->updateScreenKeyLongPressAction(Ljava/lang/String;Landroid/preference/ListPreference;)V

    .line 219
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mSnapshotScreenLockEnable:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 220
    iget-object v6, p0, Lcom/android/settings/KeySettings;->mSnapshotScreenLockEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "enable_snapshot_screenlock"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_8

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 225
    :cond_2
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mButtonLightTimout:Landroid/preference/ListPreference;

    if-eqz v3, :cond_3

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "screen_buttons_timeout"

    const/16 v7, 0x1388

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 230
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mButtonLightTimout:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 231
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mButtonLightTimout:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/KeySettings;->mButtonLightTimout:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 234
    :cond_3
    iget-object v6, p0, Lcom/android/settings/KeySettings;->mPowerLongPressEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "keyguard_disable_power_key_long_press"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_9

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 239
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mVolumeKeyWakeEnable:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_4

    .line 240
    iget-object v6, p0, Lcom/android/settings/KeySettings;->mVolumeKeyWakeEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "volumekey_wake_screen"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_a

    move v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 244
    :cond_4
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mButtonLight:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_5

    .line 245
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mButtonLight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_buttons_turn_on"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_b

    :goto_5
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 249
    :cond_5
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mCameraKeyAction:Landroid/preference/Preference;

    if-nez v3, :cond_c

    .line 275
    :goto_6
    return-void

    .end local v2           #timeout:I
    :cond_6
    move v3, v5

    .line 196
    goto/16 :goto_0

    .line 204
    :cond_7
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .restart local v2       #timeout:I
    :cond_8
    move v3, v5

    .line 220
    goto :goto_2

    :cond_9
    move v3, v5

    .line 234
    goto :goto_3

    :cond_a
    move v3, v5

    .line 240
    goto :goto_4

    :cond_b
    move v4, v5

    .line 245
    goto :goto_5

    .line 253
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "camera_key_preferred_action_type"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 256
    .local v0, actionType:I
    const v1, 0x7f0c07d9

    .line 257
    .local v1, lableId:I
    packed-switch v0, :pswitch_data_0

    .line 274
    :goto_7
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mCameraKeyAction:Landroid/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_6

    .line 259
    :pswitch_0
    const v1, 0x7f0c07d8

    .line 260
    goto :goto_7

    .line 263
    :pswitch_1
    const v1, 0x7f0c07d9

    .line 264
    goto :goto_7

    .line 267
    :pswitch_2
    const v1, 0x7f0c07da

    .line 268
    goto :goto_7

    .line 271
    :pswitch_3
    const v1, 0x7f0c07db

    goto :goto_7

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v17, 0x7f060036

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/KeySettings;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 74
    .local v13, resources:Landroid/content/res/Resources;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v11, mScreenKeyLongPressActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v17, 0x7f08005a

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v2, v3, v5

    .line 76
    .local v2, action:Ljava/lang/String;
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 78
    .end local v2           #action:Ljava/lang/String;
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v10, mScreenKeyLongPressActionValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v17, 0x7f08005b

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v8, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_1

    aget-object v15, v3, v5

    .line 80
    .local v15, value:Ljava/lang/String;
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 84
    .end local v15           #value:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 85
    .local v12, pm:Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v17, "android.intent.action.ASSIST"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v7, intent:Landroid/content/Intent;
    const/high16 v17, 0x1000

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    const/high16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v7, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 88
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    if-gtz v17, :cond_2

    .line 89
    const-string v17, "voice_assistant"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 90
    .local v6, index:I
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 91
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 95
    .end local v6           #index:I
    :cond_2
    new-instance v7, Landroid/content/Intent;

    .end local v7           #intent:Landroid/content/Intent;
    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .restart local v7       #intent:Landroid/content/Intent;
    const-string v17, "com.google.android.googlequicksearchbox"

    const-string v18, "com.google.android.googlequicksearchbox.SearchActivity"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const/high16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v7, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 98
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    if-gtz v17, :cond_3

    .line 99
    const-string v17, "google_now"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 100
    .restart local v6       #index:I
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 101
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 104
    .end local v6           #index:I
    :cond_3
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    .line 105
    .local v4, entries:[Ljava/lang/CharSequence;
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/CharSequence;

    .line 107
    .local v16, values:[Ljava/lang/CharSequence;
    const-string v17, "menu_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/KeySettings;->mMenuLongPress:Landroid/preference/ListPreference;

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/KeySettings;->mMenuLongPress:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/KeySettings;->mMenuLongPress:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/KeySettings;->mMenuLongPress:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    const-string v17, "home_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/KeySettings;->mHomeLongPress:Landroid/preference/ListPreference;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/KeySettings;->mHomeLongPress:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/KeySettings;->mHomeLongPress:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/KeySettings;->mHomeLongPress:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    const-string v17, "back_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/KeySettings;->mBackLongPress:Landroid/preference/ListPreference;

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/KeySettings;->mBackLongPress:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/KeySettings;->mBackLongPress:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/KeySettings;->mBackLongPress:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    const-string v17, "screen_key_long_press_timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/KeySettings;->mScreenKeyLongPressTimeout:Landroid/preference/ListPreference;

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/KeySettings;->mScreenKeyLongPressTimeout:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    const-string v17, "enable_snapshot_screenlock"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/KeySettings;->mSnapshotScreenLockEnable:Landroid/preference/CheckBoxPreference;

    .line 126
    const-string v17, "disable_power_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/KeySettings;->mPowerLongPressEnable:Landroid/preference/CheckBoxPreference;

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a000b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_5

    .line 129
    const-string v17, "under_keyguard"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceCategory;

    const-string v18, "pref_volume_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 134
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0009

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_6

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "multi_touch_points_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 140
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0008

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_7

    .line 141
    const-string v17, "under_keyguard"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceCategory;

    const-string v18, "trackball_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0007

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_8

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "camera_key_action_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a000f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_9

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "pref_button_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 162
    :goto_6
    const-string v17, "window"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/KeySettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 165
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/KeySettings;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v14

    .line 166
    .local v14, showNav:Z
    if-nez v14, :cond_4

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "screen_button_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v14           #showNav:Z
    :cond_4
    :goto_7
    return-void

    .line 132
    :cond_5
    const-string v17, "pref_volume_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/KeySettings;->mVolumeKeyWakeEnable:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_2

    .line 137
    :cond_6
    const-string v17, "enable_multi_touch_points"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_3

    .line 144
    :cond_7
    const-string v17, "trackball_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    goto/16 :goto_4

    .line 151
    :cond_8
    const-string v17, "camera_key_action"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/KeySettings;->mCameraKeyAction:Landroid/preference/Preference;

    goto/16 :goto_5

    .line 157
    :cond_9
    const-string v17, "pref_button_light"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/KeySettings;->mButtonLight:Landroid/preference/CheckBoxPreference;

    .line 158
    const-string v17, "button_light_timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/KeySettings;->mButtonLightTimout:Landroid/preference/ListPreference;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/KeySettings;->mButtonLightTimout:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_6

    .line 169
    :catch_0
    move-exception v17

    goto/16 :goto_7
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 322
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mScreenKeyLongPressTimeout:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    move-object v1, p2

    .line 323
    check-cast v1, Ljava/lang/String;

    .line 324
    .local v1, timeout:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mScreenKeyLongPressTimeout:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mScreenKeyLongPressTimeout:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/KeySettings;->mScreenKeyLongPressTimeout:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_key_long_press_timeout"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    .end local v1           #timeout:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 331
    :cond_1
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mMenuLongPress:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    move-object v0, p2

    .line 332
    check-cast v0, Ljava/lang/String;

    .line 333
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mMenuLongPress:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mMenuLongPress:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/KeySettings;->mMenuLongPress:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_key_long_press_menu"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 340
    .end local v0           #action:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mHomeLongPress:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    move-object v0, p2

    .line 341
    check-cast v0, Ljava/lang/String;

    .line 342
    .restart local v0       #action:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mHomeLongPress:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mHomeLongPress:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/KeySettings;->mHomeLongPress:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_key_long_press_home"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 349
    .end local v0           #action:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mBackLongPress:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_4

    move-object v0, p2

    .line 350
    check-cast v0, Ljava/lang/String;

    .line 351
    .restart local v0       #action:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mBackLongPress:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 352
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mBackLongPress:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/KeySettings;->mBackLongPress:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_key_long_press_back"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 358
    .end local v0           #action:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mButtonLightTimout:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    move-object v1, p2

    .line 359
    check-cast v1, Ljava/lang/String;

    .line 360
    .restart local v1       #timeout:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mButtonLightTimout:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 361
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mButtonLightTimout:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/KeySettings;->mButtonLightTimout:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_buttons_timeout"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 280
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mSnapshotScreenLockEnable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    .line 281
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mSnapshotScreenLockEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 282
    .local v0, isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_snapshot_screenlock"

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    .end local v0           #isChecked:Z
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .restart local v0       #isChecked:Z
    :cond_1
    move v1, v2

    .line 282
    goto :goto_0

    .line 286
    .end local v0           #isChecked:Z
    :cond_2
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mPowerLongPressEnable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_4

    .line 287
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mPowerLongPressEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 288
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "keyguard_disable_power_key_long_press"

    if-eqz v0, :cond_3

    :goto_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    .line 292
    .end local v0           #isChecked:Z
    :cond_4
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_6

    .line 293
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 294
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "trackball_wake_screen"

    if-eqz v0, :cond_5

    :goto_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_3

    .line 298
    .end local v0           #isChecked:Z
    :cond_6
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_8

    .line 299
    iget-object v1, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 300
    .restart local v0       #isChecked:Z
    if-eqz v0, :cond_7

    .line 301
    const-string v1, "persist.sys.multitouch"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 304
    :cond_7
    const-string v1, "persist.sys.multitouch"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 307
    .end local v0           #isChecked:Z
    :cond_8
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mVolumeKeyWakeEnable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_a

    .line 308
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mVolumeKeyWakeEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 309
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "volumekey_wake_screen"

    if-eqz v0, :cond_9

    :goto_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_9
    move v1, v2

    goto :goto_4

    .line 311
    .end local v0           #isChecked:Z
    :cond_a
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mButtonLight:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_0

    .line 312
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mButtonLight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 313
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_buttons_turn_on"

    if-eqz v0, :cond_b

    :goto_5
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_b
    move v1, v2

    goto :goto_5
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 177
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/KeySettings;->updateState(Z)V

    .line 178
    return-void
.end method

.method public updateScreenKeyLongPressAction(Ljava/lang/String;Landroid/preference/ListPreference;)V
    .locals 6
    .parameter "key"
    .parameter "preference"

    .prologue
    .line 181
    const-string v5, "none"

    invoke-virtual {p2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, p1}, Lmiui/provider/ExtraSettings$System;->getScreenKeyLongPressAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/CharSequence;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 185
    .local v2, charsequence:Ljava/lang/CharSequence;
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 186
    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 191
    .end local v2           #charsequence:Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 192
    return-void

    .line 184
    .restart local v2       #charsequence:Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
