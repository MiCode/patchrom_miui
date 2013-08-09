.class public Lcom/mediatek/gemini/GeminiUtils;
.super Lcom/android/settings/MiuiUtils;
.source "GeminiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;
    }
.end annotation


# static fields
.field static sG3SlotID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/gemini/GeminiUtils;->sG3SlotID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/MiuiUtils;-><init>()V

    .line 85
    return-void
.end method

.method static synthetic access$001(Lcom/mediatek/gemini/GeminiUtils;Landroid/content/Context;Landroid/preference/CheckBoxPreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/MiuiUtils;->enableGps(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Z)V

    return-void
.end method

.method static getSimColorResource(I)I
    .locals 1
    .parameter "color"

    .prologue
    .line 65
    if-ltz p0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    .line 66
    sget-object v0, Landroid/provider/Telephony;->SIMBackgroundDarkRes:[I

    aget v0, v0, p0

    .line 68
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static getStatusResource(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 60
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public addSimLockPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 10
    .parameter "root"
    .parameter "key"

    .prologue
    .line 95
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 96
    .local v1, group:Landroid/preference/PreferenceGroup;
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 97
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 99
    .local v6, simInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 100
    :cond_0
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 120
    :cond_1
    return-void

    .line 103
    :cond_2
    new-instance v8, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;

    invoke-direct {v8}, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;-><init>()V

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 104
    const-string v8, "phone"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 105
    .local v7, telephony:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    .line 106
    .local v5, simInfo:Landroid/provider/Telephony$SIMInfo;
    new-instance v4, Landroid/preference/Preference;

    invoke-direct {v4, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 107
    .local v4, preference:Landroid/preference/Preference;
    iget-object v8, v5, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "com.android.settings"

    const-string v9, "com.mediatek.gemini.GeminiIccLockSettings"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v8, "slotid"

    iget v9, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 114
    :try_start_0
    iget v8, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z

    move-result v8

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 115
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public enableGps(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Z)V
    .locals 4
    .parameter "context"
    .parameter "gpsPreference"
    .parameter "enabled"

    .prologue
    .line 124
    if-nez p3, :cond_0

    .line 125
    const/4 v1, 0x0

    invoke-super {p0, p1, p2, v1}, Lcom/android/settings/MiuiUtils;->enableGps(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Z)V

    .line 148
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0385

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0b3d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/mediatek/gemini/GeminiUtils$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/mediatek/gemini/GeminiUtils$2;-><init>(Lcom/mediatek/gemini/GeminiUtils;Landroid/preference/CheckBoxPreference;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/mediatek/gemini/GeminiUtils$1;

    invoke-direct {v3, p0, p2}, Lcom/mediatek/gemini/GeminiUtils$1;-><init>(Lcom/mediatek/gemini/GeminiUtils;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 147
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public trackSimCard(Landroid/content/Context;Lmiui/analytics/XiaomiAnalytics;)V
    .locals 15
    .parameter "context"
    .parameter "tracker"

    .prologue
    .line 152
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 153
    .local v8, siminfoList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-nez v8, :cond_0

    .line 180
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "gprs_connection_sim_setting"

    const-wide/16 v13, 0x0

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 160
    .local v1, currentSimId:J
    const/4 v3, -0x1

    .line 161
    .local v3, gprsSlot:I
    const-string v5, ""

    .line 162
    .local v5, networkOperatorSlot1:Ljava/lang/String;
    const-string v6, ""

    .line 163
    .local v6, networkOperatorSlot2:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v10

    .line 165
    .local v10, tm:Lcom/mediatek/telephony/TelephonyManagerEx;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_4

    .line 166
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    iget v9, v11, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 167
    .local v9, slot:I
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    iget-wide v11, v11, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v11, v11, v1

    if-nez v11, :cond_1

    .line 168
    move v3, v9

    .line 170
    :cond_1
    invoke-virtual {v10, v9}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, operatorName:Ljava/lang/String;
    if-nez v9, :cond_3

    .line 172
    move-object v5, v7

    .line 165
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 173
    :cond_3
    const/4 v11, 0x1

    if-ne v9, v11, :cond_2

    .line 174
    move-object v6, v7

    goto :goto_2

    .line 177
    .end local v7           #operatorName:Ljava/lang/String;
    .end local v9           #slot:I
    :cond_4
    const-string v11, "gemini_slot1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v5}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    const-string v11, "gemini_slot2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v6}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    const-string v11, "gemini_gprs"

    int-to-long v12, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12, v13}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;J)V

    goto :goto_0
.end method
