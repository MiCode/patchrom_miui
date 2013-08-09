.class public Lcom/mediatek/gemini/ImeiInfoGemini;
.super Landroid/preference/PreferenceActivity;
.source "ImeiInfoGemini.java"


# instance fields
.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gemini/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    return-void
.end method

.method private setSlotStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/mediatek/gemini/ImeiInfoGemini;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 54
    .local v0, preference:Landroid/preference/PreferenceScreen;
    iget-object v2, p0, Lcom/mediatek/gemini/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhoneNameGemini(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CDMA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    const-string v2, "meid_number_slot1"

    iget-object v3, p0, Lcom/mediatek/gemini/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getMeidGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/gemini/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "min_number_slot1"

    iget-object v3, p0, Lcom/mediatek/gemini/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCdmaMinGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/gemini/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "prl_version_slot1"

    iget-object v3, p0, Lcom/mediatek/gemini/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCdmaPrlVersionGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/gemini/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "imei_slot1"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 65
    .local v1, removablePref:Landroid/preference/Preference;
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 66
    const-string v2, "imei_sv_slot1"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 89
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhoneNameGemini(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CDMA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    const-string v2, "meid_number_slot2"

    iget-object v3, p0, Lcom/mediatek/gemini/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getMeidGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/gemini/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v2, "min_number_slot2"

    iget-object v3, p0, Lcom/mediatek/gemini/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCdmaMinGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/gemini/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v2, "prl_version_slot2"

    iget-object v3, p0, Lcom/mediatek/gemini/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCdmaPrlVersionGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/gemini/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "imei_slot2"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 101
    const-string v2, "imei_sv_slot2"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 119
    :goto_1
    return-void

    .line 69
    .end local v1           #removablePref:Landroid/preference/Preference;
    :cond_0
    const-string v2, "imei_slot1"

    iget-object v3, p0, Lcom/mediatek/gemini/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getDeviceIdGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/gemini/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v3, "imei_sv_slot1"

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/ImeiInfoGemini;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/mediatek/gemini/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v2, "prl_version_slot1"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 78
    .restart local v1       #removablePref:Landroid/preference/Preference;
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 79
    const-string v2, "meid_number_slot1"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 81
    const-string v2, "min_number_slot1"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 104
    :cond_1
    const-string v2, "imei_slot2"

    iget-object v3, p0, Lcom/mediatek/gemini/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getDeviceIdGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/gemini/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v3, "imei_sv_slot2"

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/ImeiInfoGemini;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/mediatek/gemini/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v2, "prl_version_slot2"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 113
    const-string v2, "meid_number_slot2"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 115
    const-string v2, "min_number_slot2"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/mediatek/gemini/ImeiInfoGemini;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 124
    .local v0, p:Landroid/preference/Preference;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/mediatek/gemini/ImeiInfoGemini;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f06001e

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/ImeiInfoGemini;->addPreferencesFromResource(I)V

    .line 38
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v0, p0, Lcom/mediatek/gemini/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 39
    invoke-direct {p0}, Lcom/mediatek/gemini/ImeiInfoGemini;->setSlotStatus()V

    .line 40
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 45
    return-void
.end method
