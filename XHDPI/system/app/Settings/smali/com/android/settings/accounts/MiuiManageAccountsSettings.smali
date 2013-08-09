.class public Lcom/android/settings/accounts/MiuiManageAccountsSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "MiuiManageAccountsSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/settings/DialogCreatable;


# instance fields
.field private mAuthorities:[Ljava/lang/String;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mSyncEnable:Landroid/preference/CheckBoxPreference;

.field private mSyncSettings:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    return-void
.end method

.method private reportSimOnDevice(Z)V
    .locals 6
    .parameter "masterSyncOn"

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 142
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 143
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string v4, "sms"

    invoke-static {v0, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 148
    .local v3, syncOn:Z
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.xiaomi.xmsf.action.UPLOAD_SIM_ON_DEVICE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "extra_upload_opt"

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 149
    :cond_1
    const/4 v4, 0x2

    goto :goto_1
.end method

.method private startAccountSettings(Lcom/android/settings/AccountPreference;)V
    .locals 7
    .parameter

    .prologue
    .line 187
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 188
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c05cd

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 193
    return-void
.end method

.method private turnOnSyncs(Z)V
    .locals 17
    .parameter "on"

    .prologue
    .line 160
    const-string v15, "account"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/AccountManager;

    .line 162
    .local v4, am:Landroid/accounts/AccountManager;
    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 163
    .local v2, accounts:[Landroid/accounts/Account;
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v12

    .line 165
    .local v12, syncAdapters:[Landroid/content/SyncAdapterType;
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 166
    .local v13, syncExtra:Landroid/os/Bundle;
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v14

    .line 167
    .local v14, syncs:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/SyncAdapterType;>;"
    move-object v5, v2

    .local v5, arr$:[Landroid/accounts/Account;
    array-length v9, v5

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v8, v7

    .end local v5           #arr$:[Landroid/accounts/Account;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_4

    aget-object v1, v5, v8

    .line 168
    .local v1, account:Landroid/accounts/Account;
    invoke-interface {v14}, Ljava/util/Set;->clear()V

    .line 169
    move-object v6, v12

    .local v6, arr$:[Landroid/content/SyncAdapterType;
    array-length v10, v6

    .local v10, len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    :goto_1
    if-ge v7, v10, :cond_1

    aget-object v3, v6, v7

    .line 170
    .local v3, adapter:Landroid/content/SyncAdapterType;
    iget-object v15, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v0, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    iget-object v15, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v1, v15}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 172
    invoke-interface {v14, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 175
    .end local v3           #adapter:Landroid/content/SyncAdapterType;
    :cond_1
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/SyncAdapterType;

    .line 176
    .local v11, sync:Landroid/content/SyncAdapterType;
    if-eqz p1, :cond_2

    .line 177
    iget-object v15, v11, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v1, v15, v13}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 180
    :cond_2
    iget-object v15, v11, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v1, v15}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_2

    .line 167
    .end local v11           #sync:Landroid/content/SyncAdapterType;
    :cond_3
    add-int/lit8 v7, v8, 0x1

    .local v7, i$:I
    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto :goto_0

    .line 184
    .end local v1           #account:Landroid/accounts/Account;
    .end local v6           #arr$:[Landroid/content/SyncAdapterType;
    .end local v10           #len$:I
    :cond_4
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 13
    .parameter "accounts"

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 340
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncSettings:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncSettings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 303
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncSettings:Landroid/preference/PreferenceCategory;

    .line 305
    :cond_1
    const/4 v7, 0x0

    .local v7, i:I
    array-length v10, p1

    .local v10, n:I
    :goto_1
    if-ge v7, v10, :cond_8

    .line 306
    aget-object v2, p1, v7

    .line 307
    .local v2, account:Landroid/accounts/Account;
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 309
    .local v4, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x1

    .line 310
    .local v12, showAccount:Z
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 311
    const/4 v12, 0x0

    .line 312
    iget-object v6, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .local v6, arr$:[Ljava/lang/String;
    array-length v9, v6

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_2
    if-ge v8, v9, :cond_2

    aget-object v11, v6, v8

    .line 313
    .local v11, requestedAuthority:Ljava/lang/String;
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 314
    const/4 v12, 0x1

    .line 320
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #requestedAuthority:Ljava/lang/String;
    :cond_2
    if-eqz v12, :cond_5

    .line 321
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncSettings:Landroid/preference/PreferenceCategory;

    if-nez v1, :cond_3

    .line 322
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncSettings:Landroid/preference/PreferenceCategory;

    .line 323
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncSettings:Landroid/preference/PreferenceCategory;

    const-string v5, "sync_settings"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncSettings:Landroid/preference/PreferenceCategory;

    const v5, 0x7f0c02aa

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncSettings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 328
    :cond_3
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 330
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    const-string v1, "com.xiaomi"

    iget-object v5, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.xiaomi.unactivated"

    iget-object v5, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 332
    :cond_4
    new-instance v0, Lcom/android/settings/accounts/XiaomiAccountPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/accounts/XiaomiAccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;)V

    .line 336
    .local v0, preference:Lcom/android/settings/AccountPreference;
    :goto_3
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncSettings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 305
    .end local v0           #preference:Lcom/android/settings/AccountPreference;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 312
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    .restart local v11       #requestedAuthority:Ljava/lang/String;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 334
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #requestedAuthority:Ljava/lang/String;
    .restart local v3       #icon:Landroid/graphics/drawable/Drawable;
    :cond_7
    new-instance v0, Lcom/android/settings/AccountPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    .restart local v0       #preference:Lcom/android/settings/AccountPreference;
    goto :goto_3

    .line 339
    .end local v0           #preference:Lcom/android/settings/AccountPreference;
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v4           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #showAccount:Z
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->onSyncStateUpdated()V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 103
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v1

    .line 105
    .local v1, view:Landroid/view/View;
    const v2, 0x7f090003

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 106
    iget-object v2, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v2, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncEnable:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 109
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "authorities"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->updateAuthDescriptions()V

    .line 112
    return-void
.end method

.method public onAddAccountClicked()V
    .locals 3

    .prologue
    .line 359
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "authorities"

    iget-object v2, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->startActivity(Landroid/content/Intent;)V

    .line 362
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 344
    iget-object v3, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncSettings:Landroid/preference/PreferenceCategory;

    if-nez v3, :cond_1

    .line 356
    :cond_0
    return-void

    .line 348
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncSettings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 349
    iget-object v3, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncSettings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 350
    .local v2, preference:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings/AccountPreference;

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 351
    check-cast v1, Lcom/android/settings/AccountPreference;

    .line 352
    .local v1, pref:Lcom/android/settings/AccountPreference;
    invoke-virtual {v1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 353
    invoke-virtual {v1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 348
    .end local v1           #pref:Lcom/android/settings/AccountPreference;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f06003d

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->setHasOptionsMenu(Z)V

    .line 80
    const-string v0, "sync_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncEnable:Landroid/preference/CheckBoxPreference;

    .line 81
    const-string v0, "sync_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncSettings:Landroid/preference/PreferenceCategory;

    .line 82
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 206
    const/4 v1, 0x1

    const v2, 0x7f0c05cf

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 207
    .local v0, addAccountItem:Landroid/view/MenuItem;
    const v1, 0x60200f9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 208
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 210
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 94
    const v1, 0x7f040056

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 214
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 215
    .local v0, itemId:I
    if-ne v0, v1, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->onAddAccountClicked()V

    .line 219
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferences"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 123
    instance-of v2, p2, Lcom/android/settings/accounts/XiaomiAccountPreference;

    if-eqz v2, :cond_1

    .line 137
    .end local p2
    :cond_0
    :goto_0
    return v1

    .line 125
    .restart local p2
    :cond_1
    instance-of v2, p2, Lcom/android/settings/AccountPreference;

    if-eqz v2, :cond_2

    .line 126
    check-cast p2, Lcom/android/settings/AccountPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->startAccountSettings(Lcom/android/settings/AccountPreference;)V

    .line 137
    const/4 v1, 0x1

    goto :goto_0

    .line 127
    .restart local p2
    :cond_2
    const-string v2, "sync_enable"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 129
    .local v0, isChecked:Z
    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 130
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->turnOnSyncs(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->onSyncStateUpdated()V

    .line 132
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->reportSimOnDevice(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 86
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStart()V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 88
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 89
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStop()V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 118
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 119
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 30

    .prologue
    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    if-nez v26, :cond_1

    .line 296
    :cond_0
    return-void

    .line 228
    :cond_1
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v15

    .line 230
    .local v15, masterSyncAutomatically:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncEnable:Landroid/preference/CheckBoxPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 233
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v10

    .line 235
    .local v10, currentSync:Landroid/content/SyncInfo;
    const/4 v5, 0x0

    .line 238
    .local v5, anySyncFailed:Z
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v20

    .line 239
    .local v20, syncAdapters:[Landroid/content/SyncAdapterType;
    new-instance v25, Ljava/util/HashSet;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashSet;-><init>()V

    .line 240
    .local v25, userFacing:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, k:I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v16, v0

    .local v16, n:I
    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_3

    .line 241
    aget-object v18, v20, v13

    .line 242
    .local v18, sa:Landroid/content/SyncAdapterType;
    invoke-virtual/range {v18 .. v18}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 243
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 246
    .end local v18           #sa:Landroid/content/SyncAdapterType;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncSettings:Landroid/preference/PreferenceCategory;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 247
    const/4 v11, 0x0

    .local v11, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncSettings:Landroid/preference/PreferenceCategory;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v9

    .local v9, count:I
    :goto_1
    if-ge v11, v9, :cond_0

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mSyncSettings:Landroid/preference/PreferenceCategory;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v17

    .line 249
    .local v17, pref:Landroid/preference/Preference;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/settings/AccountPreference;

    move/from16 v26, v0

    if-nez v26, :cond_4

    .line 247
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v3, v17

    .line 253
    check-cast v3, Lcom/android/settings/AccountPreference;

    .line 254
    .local v3, accountPref:Lcom/android/settings/AccountPreference;
    invoke-virtual {v3}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 255
    .local v2, account:Landroid/accounts/Account;
    const/16 v21, 0x0

    .line 256
    .local v21, syncCount:I
    const/16 v23, 0x0

    .line 257
    .local v23, syncIsFailing:Z
    invoke-virtual {v3}, Lcom/android/settings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v6

    .line 258
    .local v6, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_a

    .line 259
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 260
    .local v7, authority:Ljava/lang/String;
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v19

    .line 261
    .local v19, status:Landroid/content/SyncStatusInfo;
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6

    if-eqz v15, :cond_6

    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_6

    const/16 v22, 0x1

    .line 264
    .local v22, syncEnabled:Z
    :goto_4
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    .line 265
    .local v8, authorityIsPending:Z
    if-eqz v10, :cond_7

    iget-object v0, v10, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    new-instance v26, Landroid/accounts/Account;

    iget-object v0, v10, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v10, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v26 .. v28}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    const/4 v4, 0x1

    .line 269
    .local v4, activelySyncing:Z
    :goto_5
    if-eqz v19, :cond_8

    if-eqz v22, :cond_8

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_8

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_8

    const/4 v14, 0x1

    .line 274
    .local v14, lastSyncFailed:Z
    :goto_6
    if-eqz v14, :cond_5

    if-nez v4, :cond_5

    if-nez v8, :cond_5

    .line 275
    const/16 v23, 0x1

    .line 276
    const/4 v5, 0x1

    .line 278
    :cond_5
    if-eqz v22, :cond_9

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    const/16 v26, 0x1

    :goto_7
    add-int v21, v21, v26

    .line 279
    goto/16 :goto_3

    .line 261
    .end local v4           #activelySyncing:Z
    .end local v8           #authorityIsPending:Z
    .end local v14           #lastSyncFailed:Z
    .end local v22           #syncEnabled:Z
    :cond_6
    const/16 v22, 0x0

    goto :goto_4

    .line 265
    .restart local v8       #authorityIsPending:Z
    .restart local v22       #syncEnabled:Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    .line 269
    .restart local v4       #activelySyncing:Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_6

    .line 278
    .restart local v14       #lastSyncFailed:Z
    :cond_9
    const/16 v26, 0x0

    goto :goto_7

    .line 281
    .end local v4           #activelySyncing:Z
    .end local v7           #authority:Ljava/lang/String;
    .end local v8           #authorityIsPending:Z
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #lastSyncFailed:Z
    .end local v19           #status:Landroid/content/SyncStatusInfo;
    .end local v22           #syncEnabled:Z
    :cond_a
    const-string v26, "AccountSettings"

    const/16 v27, 0x2

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 282
    const-string v26, "AccountSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "no syncadapters found for "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_b
    const/16 v24, 0x1

    .line 286
    .local v24, syncStatus:I
    if-eqz v23, :cond_d

    .line 287
    const/16 v24, 0x2

    .line 293
    :cond_c
    :goto_8
    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_2

    .line 288
    :cond_d
    if-nez v21, :cond_e

    .line 289
    const/16 v24, 0x1

    goto :goto_8

    .line 290
    :cond_e
    if-lez v21, :cond_c

    .line 291
    const/16 v24, 0x0

    goto :goto_8
.end method

.method public showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "AccountSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 201
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
