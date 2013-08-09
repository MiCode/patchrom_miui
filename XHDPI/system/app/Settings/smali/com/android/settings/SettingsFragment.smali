.class public Lcom/android/settings/SettingsFragment;
.super Lcom/android/settings/BasePreferenceFragment;
.source "SettingsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/settings/BasePreferenceFragment;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public buildAdapter()V
    .locals 6

    .prologue
    .line 19
    invoke-super {p0}, Lcom/android/settings/BasePreferenceFragment;->buildAdapter()V

    .line 20
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiSettings;

    .line 21
    .local v0, miuiSettings:Lcom/android/settings/MiuiSettings;
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/android/settings/MiuiSettings$HeaderAdapter;

    iget-object v3, p0, Lcom/android/settings/SettingsFragment;->mHeaders:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings;->getAuthenticatorHelper()Lcom/android/settings/accounts/AuthenticatorHelper;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/android/settings/MiuiSettings$HeaderAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 22
    return-void
.end method

.method protected getHeadersResourceId()I
    .locals 1

    .prologue
    .line 14
    const v0, 0x7f06005d

    return v0
.end method
