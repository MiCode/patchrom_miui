.class public Lcom/mediatek/gemini/SimCheckboxEntrance;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SimCheckboxEntrance.java"


# instance fields
.field private mDisableWhenRadioOff:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field protected mSimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mDisableWhenRadioOff:Z

    .line 37
    new-instance v0, Lcom/mediatek/gemini/SimCheckboxEntrance$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimCheckboxEntrance$1;-><init>(Lcom/mediatek/gemini/SimCheckboxEntrance;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/SimCheckboxEntrance;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimCheckboxEntrance;->updateSimState(II)V

    return-void
.end method

.method private getSimIndicator(I)I
    .locals 6
    .parameter "slotId"

    .prologue
    const/4 v2, -0x1

    .line 178
    const-string v3, "SimCheckboxEntrance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimIndicator---slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_0

    .line 181
    iget-object v3, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 190
    :cond_0
    :goto_0
    return v2

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SimCheckboxEntrance"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 189
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v3, "SimCheckboxEntrance"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSimState(II)V
    .locals 7
    .parameter "slotID"
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 207
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 209
    .local v1, siminfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v1, :cond_0

    .line 211
    iget-wide v5, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimCheckboxEntrance;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gemini/SimInfoPreference;

    .line 214
    .local v0, pref:Lcom/mediatek/gemini/SimInfoPreference;
    if-nez v0, :cond_1

    .line 230
    .end local v0           #pref:Lcom/mediatek/gemini/SimInfoPreference;
    :cond_0
    :goto_0
    return-void

    .line 217
    .restart local v0       #pref:Lcom/mediatek/gemini/SimInfoPreference;
    :cond_1
    invoke-virtual {v0, p2}, Lcom/mediatek/gemini/SimInfoPreference;->setStatus(I)V

    .line 219
    iget-boolean v2, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mDisableWhenRadioOff:Z

    if-eqz v2, :cond_2

    .line 220
    if-ne p2, v4, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/SimInfoPreference;->setEnabled(Z)V

    .line 222
    const-string v2, "SimCheckboxEntrance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simInfoPref.setEnabled(); "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne p2, v4, :cond_4

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_2
    const-string v2, "SimCheckboxEntrance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSimState of sim "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v2, v4

    .line 220
    goto :goto_1

    :cond_4
    move v3, v4

    .line 222
    goto :goto_2
.end method


# virtual methods
.method protected addSimInfoPreference()V
    .locals 17

    .prologue
    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 127
    if-nez v15, :cond_1

    .line 176
    :cond_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimList:Ljava/util/List;

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimList:Ljava/util/List;

    new-instance v2, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;

    invoke-direct {v2}, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 136
    const-string v1, "SimCheckboxEntrance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hot swap_mSimList.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v1, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/Settings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/SimCheckboxEntrance;->startActivity(Landroid/content/Intent;)V

    .line 142
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_3
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/provider/Telephony$SIMInfo;

    .line 144
    iget v1, v14, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mediatek/gemini/SimCheckboxEntrance;->getSimIndicator(I)I

    move-result v6

    .line 149
    new-instance v1, Lcom/mediatek/gemini/SimInfoPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v14, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    iget-object v4, v14, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    iget v5, v14, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iget v7, v14, Landroid/provider/Telephony$SIMInfo;->mColor:I

    iget v8, v14, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    iget-wide v9, v14, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-direct/range {v1 .. v13}, Lcom/mediatek/gemini/SimInfoPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZZZ)V

    .line 154
    const-string v2, "SimCheckboxEntrance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state of sim "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v14, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-eqz v1, :cond_3

    .line 156
    new-instance v2, Lcom/mediatek/gemini/SimCheckboxEntrance$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/gemini/SimCheckboxEntrance$2;-><init>(Lcom/mediatek/gemini/SimCheckboxEntrance;)V

    invoke-virtual {v1, v2}, Lcom/mediatek/gemini/SimInfoPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 165
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v14}, Lcom/mediatek/gemini/SimCheckboxEntrance;->updateCheckState(Lcom/mediatek/gemini/SimInfoPreference;Landroid/provider/Telephony$SIMInfo;)V

    .line 166
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mDisableWhenRadioOff:Z

    if-eqz v2, :cond_4

    .line 167
    const/4 v2, 0x1

    if-ne v6, v2, :cond_5

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/mediatek/gemini/SimInfoPreference;->setEnabled(Z)V

    .line 168
    const-string v3, "SimCheckboxEntrance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simInfoPref.setEnabled(); "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x1

    if-ne v6, v2, :cond_6

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_4
    invoke-virtual {v15, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 167
    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    .line 168
    :cond_6
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f06005e

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->addPreferencesFromResource(I)V

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    .line 84
    iget-object v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->shouldDisableWhenRadioOff()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mDisableWhenRadioOff:Z

    .line 88
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 89
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->addSimInfoPreference()V

    .line 90
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 115
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 110
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 96
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 97
    return-void
.end method

.method protected shouldDisableWhenRadioOff()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method protected updateCheckState(Lcom/mediatek/gemini/SimInfoPreference;Landroid/provider/Telephony$SIMInfo;)V
    .locals 0
    .parameter "pref"
    .parameter "siminfo"

    .prologue
    .line 203
    return-void
.end method
