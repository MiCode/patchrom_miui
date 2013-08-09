.class public Lcom/android/settings/BasePreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BasePreferenceFragment.java"


# instance fields
.field protected mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 83
    new-instance v0, Lcom/android/settings/BasePreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/BasePreferenceFragment$1;-><init>(Lcom/android/settings/BasePreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/BasePreferenceFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BasePreferenceFragment;Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BasePreferenceFragment;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    return-void
.end method

.method private onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 8
    .parameter "header"
    .parameter "position"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;

    .line 60
    .local v0, adapter:Lcom/android/settings/MiuiSettings$HeaderAdapter;
    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->isSwitchHeader(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0902b6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0902bc

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/MiuiAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 71
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/MiuiSettings;

    .line 72
    .local v3, miuiSettings:Lcom/android/settings/MiuiSettings;
    invoke-virtual {v3, p1, p2}, Lcom/android/settings/MiuiSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 74
    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v4, v4

    invoke-static {v4}, Lcom/android/settings/FrequentlySet;->getKeyIndex(I)I

    move-result v1

    .line 75
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 76
    invoke-static {v1}, Lcom/android/settings/FrequentlySet;->getKey(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, key:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 78
    invoke-static {v2, v2, v1}, Lcom/android/settings/provider/MiuiSettingsUtil;->addToCache(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public buildAdapter()V
    .locals 4

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->buildHeaders()V

    .line 28
    iget-object v2, p0, Lcom/android/settings/BasePreferenceFragment;->mHeaders:Ljava/util/List;

    if-nez v2, :cond_0

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/BasePreferenceFragment;->mHeaders:Ljava/util/List;

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 33
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 34
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 35
    iget-object v3, p0, Lcom/android/settings/BasePreferenceFragment;->mHeaders:Ljava/util/List;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;

    .line 41
    .local v0, adapter:Lcom/android/settings/MiuiSettings$HeaderAdapter;
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->pause()V

    .line 44
    :cond_1
    return-void
.end method

.method public buildHeaders()V
    .locals 4

    .prologue
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getHeadersResourceId()I

    move-result v2

    .line 95
    .local v2, resourceId:I
    if-lez v2, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/MiuiSettings;

    .line 97
    .local v1, miuiSettings:Lcom/android/settings/MiuiSettings;
    if-nez v1, :cond_0

    .line 105
    .end local v1           #miuiSettings:Lcom/android/settings/MiuiSettings;
    :goto_0
    return-void

    .line 100
    .restart local v1       #miuiSettings:Lcom/android/settings/MiuiSettings;
    :cond_0
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/MiuiSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 102
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/MiuiSettings;->updateHeaderList(Ljava/util/List;Z)V

    .line 104
    .end local v1           #miuiSettings:Lcom/android/settings/MiuiSettings;
    :cond_1
    iput-object v0, p0, Lcom/android/settings/BasePreferenceFragment;->mHeaders:Ljava/util/List;

    goto :goto_0
.end method

.method protected getHeadersResourceId()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 134
    .local v1, listAdapter:Landroid/widget/ListAdapter;
    instance-of v2, v1, Lcom/android/settings/MiuiSettings$HeaderAdapter;

    if-eqz v2, :cond_0

    .line 135
    check-cast v1, Lcom/android/settings/MiuiSettings$HeaderAdapter;

    .end local v1           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getAirplaneModeEnabler()Lcom/android/settings/MiuiAirplaneModeEnabler;

    move-result-object v0

    .line 136
    .local v0, airplaneModeEnabler:Lcom/android/settings/MiuiAirplaneModeEnabler;
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/MiuiAirplaneModeEnabler;->onActivityResult(IILandroid/content/Intent;)V

    .line 140
    .end local v0           #airplaneModeEnabler:Lcom/android/settings/MiuiAirplaneModeEnabler;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 126
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 127
    check-cast v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->pause()V

    .line 129
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 116
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 117
    check-cast v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->resume()V

    .line 119
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->buildAdapter()V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BasePreferenceFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x60a0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 53
    .local v0, paddingBottom:I
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 54
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    return-void
.end method
