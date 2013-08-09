.class public Lcom/mediatek/gemini/GeminiPowerUsageSummary;
.super Lcom/android/settings/fuelgauge/PowerUsageSummary;
.source "GeminiPowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/GeminiPowerUsageSummary$GetPowerSavingStatusTask;,
        Lcom/mediatek/gemini/GeminiPowerUsageSummary$PowerSavingTASK;
    }
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;-><init>()V

    .line 156
    new-instance v0, Lcom/mediatek/gemini/GeminiPowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/GeminiPowerUsageSummary$1;-><init>(Lcom/mediatek/gemini/GeminiPowerUsageSummary;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiPowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected addExtraPreference(Landroid/preference/PreferenceGroup;)V
    .locals 5
    .parameter "preferenceGroup"

    .prologue
    .line 39
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiPowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, powerSavingPrf:Landroid/preference/CheckBoxPreference;
    const-string v1, "cpu_dtm"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 41
    const v1, 0x7f0c0aef

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/GeminiPowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    const v1, 0x7f0c0af0

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/GeminiPowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 43
    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 46
    new-instance v1, Lcom/mediatek/gemini/GeminiPowerUsageSummary$GetPowerSavingStatusTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/gemini/GeminiPowerUsageSummary$GetPowerSavingStatusTask;-><init>(Lcom/mediatek/gemini/GeminiPowerUsageSummary;Lcom/mediatek/gemini/GeminiPowerUsageSummary$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "cat /data/.tp.settings"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/mediatek/gemini/GeminiPowerUsageSummary$GetPowerSavingStatusTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 47
    const-string v1, "GeminiPowerUsageSummary"

    const-string v2, "Add power saving pref"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 50
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 60
    instance-of v3, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 62
    const-string v3, "cpu_dtm"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, p2

    .line 63
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 64
    .local v1, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "/system/bin/thermal_manager /etc/.tp/thermal.conf"

    .line 65
    .local v0, command:Ljava/lang/String;
    :goto_0
    const-string v3, "GeminiPowerUsageSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceTreeClick : command is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v3, Lcom/mediatek/gemini/GeminiPowerUsageSummary$PowerSavingTASK;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/mediatek/gemini/GeminiPowerUsageSummary$PowerSavingTASK;-><init>(Lcom/mediatek/gemini/GeminiPowerUsageSummary;Lcom/mediatek/gemini/GeminiPowerUsageSummary$1;)V

    new-array v4, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lcom/mediatek/gemini/GeminiPowerUsageSummary$PowerSavingTASK;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    .end local v0           #command:Ljava/lang/String;
    .end local v1           #pref:Landroid/preference/CheckBoxPreference;
    :cond_0
    :goto_1
    return v2

    .line 64
    .restart local v1       #pref:Landroid/preference/CheckBoxPreference;
    :cond_1
    const-string v0, "/system/bin/thermal_manager /etc/.tp/thermal.off.conf"

    goto :goto_0

    .line 70
    .end local v1           #pref:Landroid/preference/CheckBoxPreference;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1
.end method

.method protected showLowAveragePower()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method
