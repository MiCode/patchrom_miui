.class public Lcom/android/settings/permission/RootManageActivity;
.super Landroid/preference/PreferenceActivity;
.source "RootManageActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/permission/RootManageActivity$LBEConnection;
    }
.end annotation


# instance fields
.field private mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

.field private mLBEConnection:Lcom/android/settings/permission/RootManageActivity$LBEConnection;

.field private mRootEnable:Landroid/preference/CheckBoxPreference;

.field private mRootManager:Landroid/preference/Preference;

.field private mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/permission/RootManageActivity;)Lcom/lbe/security/service/privacy/HIPSService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/permission/RootManageActivity;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/permission/RootManageActivity;Lcom/lbe/security/service/privacy/HIPSService;)Lcom/lbe/security/service/privacy/HIPSService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/settings/permission/RootManageActivity;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/permission/RootManageActivity;)Lcom/lbe/security/service/sdkhelper/SDKHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/permission/RootManageActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/permission/RootManageActivity;Lcom/lbe/security/service/sdkhelper/SDKHelper;)Lcom/lbe/security/service/sdkhelper/SDKHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/settings/permission/RootManageActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/permission/RootManageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/permission/RootManageActivity;->updateRootState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/permission/RootManageActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/permission/RootManageActivity;->mRootEnable:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/permission/RootManageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/settings/permission/RootManageActivity;->enableRoot(Z)V

    return-void
.end method

.method private enableRoot(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/permission/RootManageActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    invoke-virtual {v0, p1}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->setROOTEnabled(Z)V

    .line 78
    invoke-direct {p0}, Lcom/android/settings/permission/RootManageActivity;->updateRootState()V

    .line 79
    return-void
.end method

.method private updateRootState()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 82
    const v2, 0x7f0c0749

    invoke-virtual {p0, v2}, Lcom/android/settings/permission/RootManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, titleText:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/permission/RootManageActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    invoke-virtual {v2}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->getROOTEnabled()Z

    move-result v7

    .line 84
    .local v7, isRootEnabled:Z
    if-eqz v7, :cond_0

    .line 85
    new-instance v0, Lcom/lbe/security/service/privacy/PackageFilter;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lcom/lbe/security/service/sdkhelper/SDKConstants;->PERM_FILTER_ROOT:[I

    move-object v2, v1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/lbe/security/service/privacy/PackageFilter;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;[I)V

    .line 86
    .local v0, packageFilter:Lcom/lbe/security/service/privacy/PackageFilter;
    iget-object v1, p0, Lcom/android/settings/permission/RootManageActivity;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    invoke-virtual {v1, v0}, Lcom/lbe/security/service/privacy/HIPSService;->getPackageCount(Lcom/lbe/security/service/privacy/PackageFilter;)I

    move-result v6

    .line 87
    .local v6, count:I
    const v1, 0x7f0c0748

    new-array v2, v9, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/permission/RootManageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 89
    .end local v0           #packageFilter:Lcom/lbe/security/service/privacy/PackageFilter;
    .end local v6           #count:I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/permission/RootManageActivity;->mRootEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lcom/android/settings/permission/RootManageActivity;->mRootEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 91
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v1, 0x7f06004b

    invoke-virtual {p0, v1}, Lcom/android/settings/permission/RootManageActivity;->addPreferencesFromResource(I)V

    .line 38
    const-string v1, "root_enable"

    invoke-virtual {p0, v1}, Lcom/android/settings/permission/RootManageActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/permission/RootManageActivity;->mRootEnable:Landroid/preference/CheckBoxPreference;

    .line 39
    iget-object v1, p0, Lcom/android/settings/permission/RootManageActivity;->mRootEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 40
    const-string v1, "root_manage"

    invoke-virtual {p0, v1}, Lcom/android/settings/permission/RootManageActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/permission/RootManageActivity;->mRootManager:Landroid/preference/Preference;

    .line 41
    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/android/settings/permission/RootManageActivity;->mRootEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 43
    iget-object v1, p0, Lcom/android/settings/permission/RootManageActivity;->mRootEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 44
    iget-object v1, p0, Lcom/android/settings/permission/RootManageActivity;->mRootManager:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 45
    const-string v1, "root_summary"

    invoke-virtual {p0, v1}, Lcom/android/settings/permission/RootManageActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 46
    .local v0, summary:Landroid/preference/Preference;
    const v1, 0x7f0c0750

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 52
    .end local v0           #summary:Landroid/preference/Preference;
    :goto_0
    return-void

    .line 50
    :cond_0
    new-instance v1, Lcom/android/settings/permission/RootManageActivity$LBEConnection;

    const-string v2, "com.lbe.security.miui"

    invoke-direct {v1, p0, p0, v2}, Lcom/android/settings/permission/RootManageActivity$LBEConnection;-><init>(Lcom/android/settings/permission/RootManageActivity;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/permission/RootManageActivity;->mLBEConnection:Lcom/android/settings/permission/RootManageActivity$LBEConnection;

    .line 51
    iget-object v1, p0, Lcom/android/settings/permission/RootManageActivity;->mLBEConnection:Lcom/android/settings/permission/RootManageActivity$LBEConnection;

    invoke-static {v1}, Lcom/lbe/security/sdk/SDKService;->bindSDKService(Lcom/lbe/security/sdk/SDKConnection;)Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/permission/RootManageActivity;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/settings/permission/RootManageActivity;->mLBEConnection:Lcom/android/settings/permission/RootManageActivity$LBEConnection;

    invoke-static {v0}, Lcom/lbe/security/sdk/SDKService;->unbindSDKService(Lcom/lbe/security/sdk/SDKConnection;)V

    .line 59
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 60
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x0

    .line 119
    const-string v3, "root_enable"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    iget-object v3, p0, Lcom/android/settings/permission/RootManageActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    if-nez v3, :cond_0

    .line 142
    .end local p2
    :goto_0
    return v2

    .line 123
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 124
    .local v1, isChecked:Z
    if-eqz v1, :cond_1

    .line 125
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0c075e

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 127
    const v3, 0x7f0c075f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 128
    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 129
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/permission/RootManageActivity$1;

    invoke-direct {v4, p0}, Lcom/android/settings/permission/RootManageActivity$1;-><init>(Lcom/android/settings/permission/RootManageActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 139
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/permission/RootManageActivity;->enableRoot(Z)V

    .line 142
    .end local v1           #isChecked:Z
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/permission/RootManageActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    .line 68
    :cond_0
    const-string v0, "root_manage"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/permission/PermDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const-string v1, "permission"

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 73
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method
