.class public Lcom/mediatek/gemini/DefaultSimFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DefaultSimFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mCurrentSimId:J

.field private mEnableSimGprs:Landroid/preference/CheckBoxPreference;

.field private mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

.field private mSelectSimId:J

.field private mSelectedKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mCurrentSimId:J

    .line 192
    new-instance v0, Lcom/mediatek/gemini/DefaultSimFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gemini/DefaultSimFragment$1;-><init>(Lcom/mediatek/gemini/DefaultSimFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/DefaultSimFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mCurrentSimId:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/mediatek/gemini/DefaultSimFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mCurrentSimId:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/mediatek/gemini/DefaultSimFragment;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/gemini/DefaultSimFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mEnableSimGprs:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/gemini/DefaultSimFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/DefaultSimFragment;->updatePreference(Z)V

    return-void
.end method

.method private addPreference(Lcom/mediatek/gemini/SimItem;IIJ)V
    .locals 4
    .parameter "simItem"
    .parameter "simNum"
    .parameter "index"
    .parameter "currentSimId"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "sim_list"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 112
    .local v1, smsCategory:Landroid/preference/PreferenceCategory;
    if-nez v1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v0, Lcom/mediatek/gemini/SimInfoGprsPreference;

    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mediatek/gemini/SimInfoGprsPreference;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, simInfoGprsPreference:Lcom/mediatek/gemini/SimInfoGprsPreference;
    invoke-virtual {v0, p1}, Lcom/mediatek/gemini/SimInfoGprsPreference;->setSimItem(Lcom/mediatek/gemini/SimItem;)V

    .line 117
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/SimInfoGprsPreference;->setKey(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, p2}, Lcom/mediatek/gemini/SimInfoGprsPreference;->setSimNum(I)V

    .line 123
    iget-wide v2, p1, Lcom/mediatek/gemini/SimItem;->mSimID:J

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    .line 124
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/SimInfoGprsPreference;->setChecked(Z)V

    .line 125
    invoke-virtual {v0}, Lcom/mediatek/gemini/SimInfoGprsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mSelectedKey:Ljava/lang/String;

    .line 126
    iget-wide v2, p1, Lcom/mediatek/gemini/SimItem;->mSimID:J

    iput-wide v2, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mSelectSimId:J

    .line 128
    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private createPreference()V
    .locals 17

    .prologue
    .line 64
    const v1, 0x7f060060

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/DefaultSimFragment;->addPreferencesFromResource(I)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/DefaultSimFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "selected_sim_pos"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 67
    .local v9, currentPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/DefaultSimFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    .line 68
    .local v12, simInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-eqz v12, :cond_6

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/DefaultSimFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "enable_sim_gprs"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/gemini/DefaultSimFragment;->mEnableSimGprs:Landroid/preference/CheckBoxPreference;

    .line 70
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gemini/DefaultSimFragment;->mEnableSimGprs:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/DefaultSimFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "gprs_connection_sim_setting"

    const-wide/16 v13, 0x0

    invoke-static {v1, v3, v13, v14}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/mediatek/gemini/DefaultSimFragment;->mCurrentSimId:J

    .line 74
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gemini/DefaultSimFragment;->mEnableSimGprs:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/mediatek/gemini/DefaultSimFragment;->mCurrentSimId:J

    const-wide/16 v15, 0x0

    cmp-long v1, v13, v15

    if-lez v1, :cond_4

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 75
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/mediatek/gemini/DefaultSimFragment;->mCurrentSimId:J

    .line 76
    .local v5, defaultSimId:J
    const-wide/16 v13, 0x0

    cmp-long v1, v5, v13

    if-nez v1, :cond_1

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/DefaultSimFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "gprs_connection_backup_sim_setting"

    const-wide/16 v13, 0x0

    invoke-static {v1, v3, v13, v14}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    .line 80
    .local v7, backupSimId:J
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    .line 81
    .local v11, simInfo:Landroid/provider/Telephony$SIMInfo;
    iget-wide v13, v11, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v1, v13, v7

    if-nez v1, :cond_0

    .line 82
    move-wide v5, v7

    .line 88
    .end local v7           #backupSimId:J
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    const/4 v2, 0x0

    .line 89
    .local v2, simItem:Lcom/mediatek/gemini/SimItem;
    const/4 v4, 0x0

    .line 90
    .local v4, index:I
    new-instance v1, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;

    invoke-direct {v1}, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;-><init>()V

    invoke-static {v12, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 91
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    .line 92
    .restart local v11       #simInfo:Landroid/provider/Telephony$SIMInfo;
    const-wide/16 v13, 0x0

    cmp-long v1, v5, v13

    if-nez v1, :cond_2

    .line 93
    iget-wide v5, v11, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 95
    :cond_2
    new-instance v2, Lcom/mediatek/gemini/SimItem;

    .end local v2           #simItem:Lcom/mediatek/gemini/SimItem;
    invoke-direct {v2, v11}, Lcom/mediatek/gemini/SimItem;-><init>(Landroid/provider/Telephony$SIMInfo;)V

    .line 97
    .restart local v2       #simItem:Lcom/mediatek/gemini/SimItem;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/DefaultSimFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, v11, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-static {v1, v3}, Lcom/mediatek/gemini/SimManagement;->isRadioOff(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    const/4 v1, 0x1

    iput v1, v2, Lcom/mediatek/gemini/SimItem;->mState:I

    .line 101
    :cond_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/gemini/DefaultSimFragment;->addPreference(Lcom/mediatek/gemini/SimItem;IIJ)V

    .line 102
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 74
    .end local v2           #simItem:Lcom/mediatek/gemini/SimItem;
    .end local v4           #index:I
    .end local v5           #defaultSimId:J
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 106
    .restart local v2       #simItem:Lcom/mediatek/gemini/SimItem;
    .restart local v4       #index:I
    .restart local v5       #defaultSimId:J
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gemini/DefaultSimFragment;->mEnableSimGprs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mediatek/gemini/DefaultSimFragment;->updatePreference(Z)V

    .line 108
    .end local v2           #simItem:Lcom/mediatek/gemini/SimItem;
    .end local v4           #index:I
    .end local v5           #defaultSimId:J
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_6
    return-void
.end method

.method private updateDataSim(J)V
    .locals 3
    .parameter "selectSimId"

    .prologue
    .line 182
    iget-wide v1, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mCurrentSimId:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "simid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    iput-wide p1, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mCurrentSimId:J

    .line 190
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private updatePreference(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "sim_list"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 133
    .local v3, smsCategory:Landroid/preference/PreferenceCategory;
    if-eqz v3, :cond_2

    .line 134
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 139
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/SimInfoGprsPreference;

    .line 141
    .local v2, preference:Lcom/mediatek/gemini/SimInfoGprsPreference;
    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lcom/mediatek/gemini/SimInfoGprsPreference;->isStateDisabled()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x1

    .line 142
    .local v1, prefEnable:Z
    :goto_1
    invoke-virtual {v2, v1}, Lcom/mediatek/gemini/SimInfoGprsPreference;->setEnabled(Z)V

    .line 143
    if-eqz v1, :cond_1

    move-object v4, p0

    :goto_2
    invoke-virtual {v2, v4}, Lcom/mediatek/gemini/SimInfoGprsPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    .end local v1           #prefEnable:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 143
    .restart local v1       #prefEnable:Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 147
    .end local v0           #i:I
    .end local v1           #prefEnable:Z
    .end local v2           #preference:Lcom/mediatek/gemini/SimInfoGprsPreference;
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-direct {v0}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 48
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0a4f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 50
    invoke-direct {p0}, Lcom/mediatek/gemini/DefaultSimFragment;->createPreference()V

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gprs_connection_sim_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 54
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 59
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 60
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 61
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preference"

    .prologue
    const/4 v7, 0x1

    .line 151
    const-string v4, "enable_sim_gprs"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    iget-object v4, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mEnableSimGprs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/mediatek/gemini/DefaultSimFragment;->updatePreference(Z)V

    .line 153
    iget-object v4, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mEnableSimGprs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mSelectSimId:J

    :goto_0
    invoke-direct {p0, v4, v5}, Lcom/mediatek/gemini/DefaultSimFragment;->updateDataSim(J)V

    .line 178
    :cond_0
    :goto_1
    return v7

    .line 153
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 157
    check-cast v2, Lcom/mediatek/gemini/SimInfoGprsPreference;

    .line 158
    .local v2, simInfoGprsPreference:Lcom/mediatek/gemini/SimInfoGprsPreference;
    invoke-virtual {v2}, Lcom/mediatek/gemini/SimInfoGprsPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, selectedKey:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/mediatek/gemini/SimInfoGprsPreference;->getSimItem()Lcom/mediatek/gemini/SimItem;

    move-result-object v3

    .line 160
    .local v3, simItem:Lcom/mediatek/gemini/SimItem;
    if-eqz v3, :cond_3

    iget-boolean v4, v3, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    if-eqz v4, :cond_3

    iget v4, v3, Lcom/mediatek/gemini/SimItem;->mState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 163
    iget-object v4, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    iget v5, v3, Lcom/mediatek/gemini/SimItem;->mSlot:I

    const/16 v6, 0x12e

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    .line 167
    :cond_3
    iget-object v4, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mSelectedKey:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 168
    invoke-virtual {v2, v7}, Lcom/mediatek/gemini/SimInfoGprsPreference;->setChecked(Z)V

    .line 169
    iget-object v4, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mSelectedKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 170
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gemini/SimInfoGprsPreference;

    .line 172
    .local v0, prevSimInfoGprsPreference:Lcom/mediatek/gemini/SimInfoGprsPreference;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/mediatek/gemini/SimInfoGprsPreference;->setChecked(Z)V

    .line 174
    .end local v0           #prevSimInfoGprsPreference:Lcom/mediatek/gemini/SimInfoGprsPreference;
    :cond_4
    iget-wide v4, v3, Lcom/mediatek/gemini/SimItem;->mSimID:J

    iput-wide v4, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mSelectSimId:J

    .line 175
    iput-object v1, p0, Lcom/mediatek/gemini/DefaultSimFragment;->mSelectedKey:Ljava/lang/String;

    .line 176
    iget-wide v4, v3, Lcom/mediatek/gemini/SimItem;->mSimID:J

    invoke-direct {p0, v4, v5}, Lcom/mediatek/gemini/DefaultSimFragment;->updateDataSim(J)V

    goto :goto_1
.end method
