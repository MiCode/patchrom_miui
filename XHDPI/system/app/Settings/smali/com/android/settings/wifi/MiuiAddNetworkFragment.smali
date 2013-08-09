.class public Lcom/android/settings/wifi/MiuiAddNetworkFragment;
.super Lcom/android/settings/BaseEditFragment;
.source "MiuiAddNetworkFragment.java"

# interfaces
.implements Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;


# instance fields
.field private mController:Lcom/android/settings/wifi/MiuiWifiConfigController;

.field private mEnabledSubmit:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f0c07f9

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/android/settings/BaseEditFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->setHasOptionsMenu(Z)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 32
    .local v2, view:Landroid/view/View;
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiConfigController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/MiuiWifiConfigController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZLcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mController:Lcom/android/settings/wifi/MiuiWifiConfigController;

    .line 33
    return-void
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 50
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400da

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 24
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onSave()V
    .locals 4

    .prologue
    .line 54
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mController:Lcom/android/settings/wifi/MiuiWifiConfigController;

    invoke-virtual {v2}, Lcom/android/settings/wifi/MiuiWifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 55
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 56
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "config"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 60
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->onBackPressed()V

    .line 61
    return-void
.end method

.method public onSubmitStateChange(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEnabledSubmit:Z

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x102001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, button2:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->mEnabledSubmit:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 40
    return-void
.end method
