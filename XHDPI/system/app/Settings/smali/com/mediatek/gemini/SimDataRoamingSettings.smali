.class public Lcom/mediatek/gemini/SimDataRoamingSettings;
.super Lcom/mediatek/gemini/SimCheckboxEntrance;
.source "SimDataRoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mCurrentSimID:J

.field private mCurrentSimSlot:I

.field private mExt:Lcom/android/settings/ext/ISimRoamingExt;

.field private mSimInfoPref:Lcom/mediatek/gemini/SimInfoPreference;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;-><init>()V

    return-void
.end method

.method private setDataRoaming(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 116
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    iget v3, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mCurrentSimSlot:I

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabledGemini(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    if-eqz p1, :cond_1

    .line 125
    const/4 v1, 0x1

    .line 129
    .local v1, roamingState:I
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimDataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-wide v3, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mCurrentSimID:J

    invoke-static {v2, v1, v3, v4}, Landroid/provider/Telephony$SIMInfo;->setDataRoaming(Landroid/content/Context;IJ)I

    .line 133
    .end local v1           #roamingState:I
    :goto_1
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SimDataRoamingSettings"

    const-string v3, "mTelephony exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 127
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #roamingState:I
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 137
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 138
    invoke-direct {p0, v1}, Lcom/mediatek/gemini/SimDataRoamingSettings;->setDataRoaming(Z)V

    .line 139
    iget-object v0, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mSimInfoPref:Lcom/mediatek/gemini/SimInfoPreference;

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/SimInfoPreference;->setCheck(Z)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mSimInfoPref:Lcom/mediatek/gemini/SimInfoPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/SimInfoPreference;->setCheck(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/mediatek/gemini/SimCheckboxEntrance;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 42
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimDataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/gemini/SimUtils;->getSimRoamingExtPlugin(Landroid/content/Context;)Lcom/android/settings/ext/ISimRoamingExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mExt:Lcom/android/settings/ext/ISimRoamingExt;

    .line 43
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "dialogId"

    .prologue
    .line 78
    const/4 v3, 0x1

    if-ne v3, p1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimDataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 80
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mExt:Lcom/android/settings/ext/ISimRoamingExt;

    const v4, 0x7f0c00f7

    invoke-interface {v3, v1, v4}, Lcom/android/settings/ext/ISimRoamingExt;->getRoamingWarningMsg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, msg:Ljava/lang/String;
    const-string v3, "SimDataRoamingSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 90
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #msg:Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    invoke-super {p0, p1}, Lcom/mediatek/gemini/SimCheckboxEntrance;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v3

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 48
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 49
    .local v1, simID:J
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimDataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    .line 50
    .local v3, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v3, :cond_1

    .line 53
    iget v0, v3, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    .line 61
    .local v0, dataRoaming:I
    iget v6, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iput v6, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mCurrentSimSlot:I

    .line 62
    iget-wide v6, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    iput-wide v6, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mCurrentSimID:J

    .line 63
    check-cast p2, Lcom/mediatek/gemini/SimInfoPreference;

    .end local p2
    iput-object p2, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mSimInfoPref:Lcom/mediatek/gemini/SimInfoPreference;

    .line 64
    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/SimDataRoamingSettings;->showDialog(I)V

    .line 72
    .end local v0           #dataRoaming:I
    :goto_0
    return v4

    .line 67
    .restart local v0       #dataRoaming:I
    :cond_0
    invoke-direct {p0, v5}, Lcom/mediatek/gemini/SimDataRoamingSettings;->setDataRoaming(Z)V

    .line 68
    iget-object v6, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mSimInfoPref:Lcom/mediatek/gemini/SimInfoPreference;

    invoke-virtual {v6, v5}, Lcom/mediatek/gemini/SimInfoPreference;->setCheck(Z)V

    goto :goto_0

    .end local v0           #dataRoaming:I
    .restart local p2
    :cond_1
    move v4, v5

    .line 72
    goto :goto_0
.end method

.method protected shouldDisableWhenRadioOff()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method protected updateCheckState(Lcom/mediatek/gemini/SimInfoPreference;Landroid/provider/Telephony$SIMInfo;)V
    .locals 2
    .parameter "pref"
    .parameter "siminfo"

    .prologue
    const/4 v0, 0x1

    .line 100
    iget v1, p2, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/mediatek/gemini/SimInfoPreference;->setCheck(Z)V

    .line 104
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
