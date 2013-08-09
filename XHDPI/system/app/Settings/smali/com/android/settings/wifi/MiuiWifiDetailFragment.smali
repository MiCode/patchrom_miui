.class public Lcom/android/settings/wifi/MiuiWifiDetailFragment;
.super Lcom/android/settings/BaseEditFragment;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;


# instance fields
.field private mAccessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;

.field private mController:Lcom/android/settings/wifi/MiuiWifiConfigController;

.field private mEnabledSubmit:Z

.field private mNetworkId:I

.field private mSsidSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Lcom/android/settings/wifi/MiuiAccessPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSsidSet:Ljava/util/HashSet;

    return-object v0
.end method

.method private initAutoConnect(Landroid/view/View;Landroid/app/Activity;)V
    .locals 5
    .parameter "view"
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 123
    const v3, 0x7f090266

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, autoConnect:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    const v3, 0x6010039

    invoke-virtual {v0, v3}, Landroid/view/View;->setAdditionalState(I)V

    .line 126
    const v3, 0x7f090267

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/SlidingButton;

    .line 127
    .local v1, autoConnectButton:Lmiui/widget/SlidingButton;
    invoke-static {p2}, Lmiui/provider/ExtraSettings$System;->getDisableWifiAutoConnectSsid(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSsidSet:Ljava/util/HashSet;

    .line 128
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSsidSet:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/MiuiAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 129
    new-instance v2, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    return-void
.end method

.method private initWifiShareQrcode(Landroid/view/View;Landroid/app/Activity;)V
    .locals 3
    .parameter "view"
    .parameter "activity"

    .prologue
    .line 145
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/MiuiAccessPoint;->getWifiConfigurationSecurity()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;

    invoke-static {p2, v2}, Lcom/android/settings/wifi/QRCodeUtils;->getWifiQrcode(Landroid/content/Context;Lcom/android/settings/wifi/MiuiAccessPoint;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    .local v0, qrcode:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 152
    const v2, 0x7f090268

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 153
    .local v1, wifiShareQrcode:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 154
    const v2, 0x6010039

    invoke-virtual {v1, v2}, Landroid/view/View;->setAdditionalState(I)V

    .line 155
    new-instance v2, Lcom/android/settings/wifi/MiuiWifiDetailFragment$4;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment$4;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;Landroid/app/Activity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ssid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, ssid:Ljava/lang/String;
    const v1, 0x7f0c07fa

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v4, 0x1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/BaseEditFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 59
    .local v6, activity:Landroid/app/Activity;
    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 60
    .local v7, bundle:Landroid/os/Bundle;
    iput v13, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkId:I

    .line 61
    new-instance v0, Lcom/android/settings/wifi/MiuiAccessPoint;

    invoke-direct {v0, v6, v7}, Lcom/android/settings/wifi/MiuiAccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;

    .line 62
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->setHasOptionsMenu(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 64
    .local v2, view:Landroid/view/View;
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/MiuiAccessPoint;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkId:I

    .line 65
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiConfigController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/MiuiWifiConfigController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZLcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mController:Lcom/android/settings/wifi/MiuiWifiConfigController;

    .line 66
    const v0, 0x7f09020b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 67
    .local v10, deleteButton:Landroid/widget/Button;
    iget v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkId:I

    if-eq v0, v13, :cond_0

    .line 68
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/MiuiAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    const-string v0, "CMCC"

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/MiuiAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v9, v4

    .line 70
    .local v9, canNotDelete:Z
    :goto_0
    if-eqz v9, :cond_3

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v10, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 71
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .end local v9           #canNotDelete:Z
    :cond_0
    const v0, 0x7f09026a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 100
    .local v11, disconnectButton:Landroid/widget/Button;
    iget v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkId:I

    if-eq v0, v13, :cond_1

    if-eqz v11, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI:Z

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiAccessPoint;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 103
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment$2;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 113
    .local v8, button2:Landroid/view/View;
    invoke-virtual {v8, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/MiuiAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_4

    .line 120
    :goto_2
    return-void

    .end local v8           #button2:Landroid/view/View;
    .end local v11           #disconnectButton:Landroid/widget/Button;
    :cond_2
    move v9, v12

    .line 68
    goto :goto_0

    .restart local v9       #canNotDelete:Z
    :cond_3
    move v0, v12

    .line 70
    goto :goto_1

    .line 118
    .end local v9           #canNotDelete:Z
    .restart local v8       #button2:Landroid/view/View;
    .restart local v11       #disconnectButton:Landroid/widget/Button;
    :cond_4
    invoke-direct {p0, v2, v6}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->initAutoConnect(Landroid/view/View;Landroid/app/Activity;)V

    .line 119
    invoke-direct {p0, v2, v6}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->initWifiShareQrcode(Landroid/view/View;Landroid/app/Activity;)V

    goto :goto_2
.end method

.method public onCancel()V
    .locals 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 188
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400da

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onSave()V
    .locals 5

    .prologue
    .line 192
    iget-boolean v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mEnabledSubmit:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mController:Lcom/android/settings/wifi/MiuiWifiConfigController;

    if-eqz v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mController:Lcom/android/settings/wifi/MiuiWifiConfigController;

    invoke-virtual {v2}, Lcom/android/settings/wifi/MiuiWifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 194
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 195
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 196
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "config"

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mController:Lcom/android/settings/wifi/MiuiWifiConfigController;

    invoke-virtual {v3}, Lcom/android/settings/wifi/MiuiWifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 197
    const-string v2, "bssid"

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/MiuiAccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v2, "ssid"

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/MiuiAccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 204
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->onBackPressed()V

    .line 205
    return-void

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onSubmitStateChange(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mEnabledSubmit:Z

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x102001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 175
    .local v0, button2:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mEnabledSubmit:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 176
    return-void
.end method
