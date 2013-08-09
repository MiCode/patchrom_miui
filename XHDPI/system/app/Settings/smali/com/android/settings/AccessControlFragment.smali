.class public Lcom/android/settings/AccessControlFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessControlFragment.java"


# instance fields
.field private mAcPrivacylEnabled:Landroid/preference/CheckBoxPreference;

.field private mAcessControlEnabled:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

.field private mPrivacyEnabled:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AccessControlFragment;)Lmiui/security/ChooseLockSettingsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 114
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings/AccessControlFragment;->mAcessControlEnabled:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 117
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    new-instance v1, Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/AccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    .line 29
    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Lcom/android/settings/AccessControlFragment;->addPreferencesFromResource(I)V

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/AccessControlFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 32
    .local v0, root:Landroid/preference/PreferenceScreen;
    const-string v1, "privacy_mode_enable"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/AccessControlFragment;->mPrivacyEnabled:Landroid/preference/CheckBoxPreference;

    .line 33
    const-string v1, "ac_enable"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/AccessControlFragment;->mAcessControlEnabled:Landroid/preference/CheckBoxPreference;

    .line 34
    const-string v1, "ac_privacy_mode"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/AccessControlFragment;->mAcPrivacylEnabled:Landroid/preference/CheckBoxPreference;

    .line 35
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 47
    const-string v0, "privacy_mode_enable"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p2

    .line 48
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 49
    iget-object v1, p0, Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lmiui/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v1

    .line 50
    if-nez v1, :cond_1

    .line 51
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 52
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    const v2, 0x60c0149

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 54
    const v2, 0x60c0148

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 55
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/AccessControlFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/AccessControlFragment$1;-><init>(Lcom/android/settings/AccessControlFragment;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    const/high16 v0, 0x104

    new-instance v2, Lcom/android/settings/AccessControlFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings/AccessControlFragment$2;-><init>(Lcom/android/settings/AccessControlFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 108
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isPasswordForPrivacyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.CONFIRM_ACCESS_CONTROL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    const-string v1, "confirm_purpose"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/AccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0, v2}, Lmiui/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    goto :goto_0

    .line 85
    :cond_3
    const-string v0, "ac_enable"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    iget-object v0, p0, Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v0

    .line 87
    if-nez v0, :cond_4

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/AccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ChooseAccessControl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AccessControlFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 91
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/AccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ConfirmAccessControl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    const-string v1, "confirm_purpose"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/settings/AccessControlFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 96
    :cond_5
    const-string v0, "ac_privacy_mode"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isPasswordForPrivacyModeEnabled()Z

    move-result v0

    .line 98
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/AccessControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/ConfirmAccessControl;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    if-nez v0, :cond_6

    .line 100
    const-string v0, "confirm_purpose"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/AccessControlFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 103
    :cond_6
    const-string v0, "confirm_purpose"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 40
    iget-object v0, p0, Lcom/android/settings/AccessControlFragment;->mPrivacyEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lmiui/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 41
    iget-object v0, p0, Lcom/android/settings/AccessControlFragment;->mAcessControlEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lmiui/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 42
    iget-object v0, p0, Lcom/android/settings/AccessControlFragment;->mAcPrivacylEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lmiui/security/ChooseLockSettingsHelper;->isPasswordForPrivacyModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 43
    return-void
.end method
