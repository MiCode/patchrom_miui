.class public Lcom/android/settings/FrequentlyFragment;
.super Lcom/android/settings/BasePreferenceFragment;
.source "FrequentlyFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/BasePreferenceFragment;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public buildAdapter()V
    .locals 6

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/settings/BasePreferenceFragment;->buildAdapter()V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/FrequentlyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiSettings;

    .line 99
    .local v0, miuiSettings:Lcom/android/settings/MiuiSettings;
    invoke-virtual {p0}, Lcom/android/settings/FrequentlyFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/android/settings/MiuiSettings$HeaderAdapter;

    iget-object v3, p0, Lcom/android/settings/FrequentlyFragment;->mHeaders:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings;->getAuthenticatorHelper()Lcom/android/settings/accounts/AuthenticatorHelper;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/android/settings/MiuiSettings$HeaderAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    return-void
.end method

.method public buildHeaders()V
    .locals 9

    .prologue
    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-virtual {p0}, Lcom/android/settings/FrequentlyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/settings/MiuiSettings;

    .line 80
    .local v7, miuiSettings:Lcom/android/settings/MiuiSettings;
    invoke-static {v7}, Lcom/android/settings/provider/MiuiSettingsUtil;->getShowKeys(Landroid/content/Context;)[I

    move-result-object v5

    .line 81
    .local v5, indexArr:[I
    if-eqz v5, :cond_1

    .line 82
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 83
    invoke-static {}, Lcom/android/settings/FrequentlySet;->getHeaderIds()[I

    move-result-object v1

    .line 84
    .local v1, headerIds:[I
    move-object v0, v5

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_1

    aget v4, v0, v3

    .line 85
    .local v4, index:I
    if-ltz v4, :cond_0

    array-length v8, v1

    if-ge v4, v8, :cond_0

    .line 86
    aget v8, v1, v4

    invoke-virtual {v7, v8, v2}, Lcom/android/settings/MiuiSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 84
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v0           #arr$:[I
    .end local v1           #headerIds:[I
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v6           #len$:I
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Lcom/android/settings/MiuiSettings;->updateHeaderList(Ljava/util/List;Z)V

    .line 92
    iput-object v2, p0, Lcom/android/settings/FrequentlyFragment;->mHeaders:Ljava/util/List;

    .line 93
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/settings/BasePreferenceFragment;->onResume()V

    .line 70
    sget-boolean v0, Lcom/android/settings/provider/MiuiSettingsUtil;->sUpdateFrequent:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/FrequentlyFragment;->buildAdapter()V

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/provider/MiuiSettingsUtil;->sUpdateFrequent:Z

    .line 74
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 28
    invoke-super {p0, p1, p2}, Lcom/android/settings/BasePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/FrequentlyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x60a0039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 31
    .local v1, paddingTop:I
    invoke-virtual {p0}, Lcom/android/settings/FrequentlyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x60a0038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 33
    .local v0, paddingBottom:I
    invoke-virtual {p0}, Lcom/android/settings/FrequentlyFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v5, v1, v5, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/FrequentlyFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 35
    .local v2, tv:Landroid/widget/TextView;
    const v3, 0x7f0c084e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/FrequentlyFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/FrequentlyFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/android/settings/FrequentlyFragment$1;

    invoke-direct {v4, p0}, Lcom/android/settings/FrequentlyFragment$1;-><init>(Lcom/android/settings/FrequentlyFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 65
    return-void
.end method
