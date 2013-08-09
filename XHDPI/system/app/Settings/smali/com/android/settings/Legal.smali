.class public Lcom/android/settings/Legal;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Legal.java"


# instance fields
.field private mMiuiCopyright:Landroid/preference/Preference;

.field private mMiuiPrivacyPolicy:Landroid/preference/Preference;

.field private mMiuiUserAgreement:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v3, 0x7f06001f

    invoke-virtual {p0, v3}, Lcom/android/settings/Legal;->addPreferencesFromResource(I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/Legal;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 34
    .local v1, actionBar:Landroid/app/ActionBar;
    const v3, 0x7f0c0391

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/Legal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 41
    .local v0, act:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings/Legal;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 42
    .local v2, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v3, "terms"

    invoke-static {v0, v2, v3, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 44
    const-string v3, "license"

    invoke-static {v0, v2, v3, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 46
    const-string v3, "copyright"

    invoke-static {v0, v2, v3, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 49
    const-string v3, "miuiCopyright"

    invoke-virtual {p0, v3}, Lcom/android/settings/Legal;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/Legal;->mMiuiCopyright:Landroid/preference/Preference;

    .line 50
    const-string v3, "miuiUserAgreement"

    invoke-virtual {p0, v3}, Lcom/android/settings/Legal;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/Legal;->mMiuiUserAgreement:Landroid/preference/Preference;

    .line 51
    const-string v3, "miuiPrivacyPolicy"

    invoke-virtual {p0, v3}, Lcom/android/settings/Legal;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/Legal;->mMiuiPrivacyPolicy:Landroid/preference/Preference;

    .line 52
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MIUI_LICENSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/Legal;->mMiuiCopyright:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 58
    sget-object v1, Lcom/miui/internal/app/MiuiLicenseActivity;->EXTRA_MIUI_DOC_URL:Ljava/lang/String;

    sget-object v2, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_COPYRIGHT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 67
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/android/settings/Legal;->mMiuiUserAgreement:Landroid/preference/Preference;

    if-ne p2, v1, :cond_2

    .line 61
    sget-object v1, Lcom/miui/internal/app/MiuiLicenseActivity;->EXTRA_MIUI_DOC_URL:Ljava/lang/String;

    sget-object v2, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/android/settings/Legal;->mMiuiPrivacyPolicy:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 64
    sget-object v1, Lcom/miui/internal/app/MiuiLicenseActivity;->EXTRA_MIUI_DOC_URL:Ljava/lang/String;

    sget-object v2, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method
