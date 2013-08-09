.class public Lcom/android/settings/wifi/WifiShareUploadFragment;
.super Landroid/app/Fragment;
.source "WifiShareUploadFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;
    }
.end annotation


# instance fields
.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mWifiListAdapter:Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;

.field private mWifiShareAction:Landroid/widget/Button;

.field private mWifiShareCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiShareUploadFragment;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiShareUploadFragment;->updateState(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiShareUploadFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->updateTitle()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiShareUploadFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiShareUploadFragment;->enableWifiShare(Z)V

    return-void
.end method

.method private enableWifiShare(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/wifi/WifiShareUtils;->setWifiShare(Landroid/content/Context;Z)V

    .line 133
    if-nez p1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->updateUI()V

    goto :goto_0
.end method

.method public static isConnectivityActive(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 104
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 106
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 107
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateState(IZ)V
    .locals 2
    .parameter "position"
    .parameter "success"

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 97
    :cond_2
    if-eqz p2, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mWifiListAdapter:Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->setChecked(IZ)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mWifiListAdapter:Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 7

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiShareCount(Landroid/content/Context;)I

    move-result v0

    .line 185
    .local v0, count:I
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mWifiShareCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0944

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    .line 149
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getView()Landroid/view/View;

    move-result-object v6

    .line 151
    .local v6, view:Landroid/view/View;
    const v7, 0x102000a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 152
    .local v4, listView:Landroid/widget/ListView;
    const v7, 0x7f090283

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 153
    .local v1, emptyView:Landroid/widget/TextView;
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 156
    .local v3, layoutInflater:Landroid/view/LayoutInflater;
    const v7, 0x7f0400e5

    invoke-virtual {v3, v7, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mWifiShareCount:Landroid/widget/TextView;

    .line 157
    iget-object v7, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mWifiShareCount:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->updateTitle()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, checkedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/android/settings/wifi/WifiConfigurationManager;->getWifiShareList(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    .line 162
    .local v5, ssidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    move v7, v8

    :goto_0
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v7, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mWifiShareCount:Landroid/widget/TextView;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    move v8, v9

    :cond_0
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    const v7, 0x7f0400e3

    invoke-virtual {v3, v7, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 166
    .local v2, footer:Landroid/view/View;
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 167
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 168
    new-instance v7, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, p0, v5, v0, v8}, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;-><init>(Lcom/android/settings/wifi/WifiShareUploadFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mWifiListAdapter:Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;

    .line 169
    iget-object v7, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mWifiListAdapter:Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    const v7, 0x7f090281

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mWifiShareAction:Landroid/widget/Button;

    .line 177
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->updateUI()V

    .line 178
    return-void

    .end local v2           #footer:Landroid/view/View;
    :cond_1
    move v7, v9

    .line 162
    goto :goto_0

    .line 172
    .restart local v2       #footer:Landroid/view/View;
    :cond_2
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    const v7, 0x7f090284

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mWifiShareAction:Landroid/widget/Button;

    .line 174
    iget-object v7, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mWifiShareAction:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400e2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 116
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 117
    return-void
.end method

.method public updateUI()V
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/WifiShareUtils;->isWifiShareTurnOn(Landroid/content/Context;)Z

    move-result v0

    .line 121
    .local v0, isWifiShareTurnOn:Z
    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mWifiShareAction:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const v1, 0x7f0c094d

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(I)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mWifiShareAction:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/wifi/WifiShareUploadFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/wifi/WifiShareUploadFragment$2;-><init>(Lcom/android/settings/wifi/WifiShareUploadFragment;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void

    .line 121
    :cond_0
    const v1, 0x7f0c094b

    goto :goto_0
.end method

.method public upload(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x1

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 49
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiShareUploadFragment;->isConnectivityActive(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mWifiListAdapter:Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;

    if-eqz v3, :cond_0

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v1, wifiShareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mWifiListAdapter:Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 60
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiConfigurationManager;->setWifiShareList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 63
    :cond_2
    const/4 v3, 0x0

    const v4, 0x7f0c093a

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiShareUploadFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 64
    iget-object v3, p0, Lcom/android/settings/wifi/WifiShareUploadFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 65
    invoke-static {v0}, Lmiui/net/WifiShareManager;->get(Landroid/content/Context;)Lmiui/net/WifiShareManager;

    move-result-object v2

    .line 66
    .local v2, wifiShareManager:Lmiui/net/WifiShareManager;
    new-instance v3, Lcom/android/settings/wifi/WifiShareUploadFragment$1;

    invoke-direct {v3, p0, v2, v0, p1}, Lcom/android/settings/wifi/WifiShareUploadFragment$1;-><init>(Lcom/android/settings/wifi/WifiShareUploadFragment;Lmiui/net/WifiShareManager;Landroid/app/Activity;I)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiShareUploadFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
