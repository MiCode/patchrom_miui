.class public Lcom/android/settings/accounts/MiuiAddAccountSettings;
.super Lcom/android/settings/MiuiSettings;
.source "MiuiAddAccountSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings/MiuiSettings;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/MiuiAddAccountSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->gotoNextPage()V

    return-void
.end method

.method private gotoNextPage()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->setResult(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->finish()V

    .line 114
    return-void
.end method

.method private isSetupWizard()Z
    .locals 4

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, isSetupWizard:Z
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 47
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 48
    const-string v2, "account_setup_wizard"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 50
    :cond_0
    return v1
.end method

.method private launchAddAccount()V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.accounts.AddAccountSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v1, "account_setup_wizard"

    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->isSetupWizard()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 86
    return-void
.end method


# virtual methods
.method protected initializeViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 29
    const v1, 0x7f040005

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->setContentView(I)V

    .line 30
    new-instance v1, Lcom/android/settings/MiuiSettings$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->getAuthenticatorHelper()Lcom/android/settings/accounts/AuthenticatorHelper;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/settings/MiuiSettings$HeaderAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Z)V

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->isSetupWizard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const v1, 0x7f09000a

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 34
    .local v0, nextButton:Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 35
    new-instance v1, Lcom/android/settings/accounts/MiuiAddAccountSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings$1;-><init>(Lcom/android/settings/accounts/MiuiAddAccountSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .end local v0           #nextButton:Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 90
    packed-switch p1, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 92
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 93
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 94
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->launchAddAccount()V

    goto :goto_0

    .line 97
    :cond_0
    const v1, 0x7f090009

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 100
    .end local v0           #accounts:[Landroid/accounts/Account;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->gotoNextPage()V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v3, 0x7f060007

    invoke-virtual {p0, v3, p1}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 57
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->updateHeaderList(Ljava/util/List;Z)V

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 60
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 62
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v2, v3

    .line 63
    .local v2, id:I
    const v3, 0x7f0902a7

    if-ne v2, v3, :cond_1

    .line 64
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 68
    .end local v0           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v2           #id:I
    :cond_0
    return-void

    .line 59
    .restart local v0       #header:Landroid/preference/PreferenceActivity$Header;
    .restart local v2       #id:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/android/settings/MiuiSettings;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->launchAddAccount()V

    .line 25
    return-void
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 3
    .parameter "header"
    .parameter "position"

    .prologue
    .line 73
    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v0, v1

    .line 74
    .local v0, id:I
    const v1, 0x7f0902a8

    if-ne v0, v1, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiAddAccountSettings;->launchAddAccount()V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/MiuiSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0
.end method
