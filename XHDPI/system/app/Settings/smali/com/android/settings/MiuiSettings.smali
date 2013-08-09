.class public Lcom/android/settings/MiuiSettings;
.super Landroid/preference/PreferenceActivity;
.source "MiuiSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiSettings$HeaderAdapter;
    }
.end annotation


# static fields
.field private static sCategoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[I

.field private mActionBar:Lmiui/v5/app/MiuiActionBar;

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mListeningToAccountUpdates:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/MiuiSettings;->sCategoryList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 87
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->SETTINGS_FOR_RESTRICTED:[I

    .line 429
    return-void

    .line 87
    nop

    :array_0
    .array-data 0x4
        0xbbt 0x2t 0x9t 0x7ft
        0xbdt 0x2t 0x9t 0x7ft
        0xact 0x2t 0x9t 0x7ft
        0xbft 0x2t 0x9t 0x7ft
        0xc8t 0x2t 0x9t 0x7ft
        0xc3t 0x2t 0x9t 0x7ft
        0xc2t 0x2t 0x9t 0x7ft
        0xcat 0x2t 0x9t 0x7ft
        0xcft 0x2t 0x9t 0x7ft
        0xc9t 0x2t 0x9t 0x7ft
        0xc0t 0x2t 0x9t 0x7ft
        0xc6t 0x2t 0x9t 0x7ft
        0xc5t 0x2t 0x9t 0x7ft
        0xb1t 0x2t 0x9t 0x7ft
        0xc1t 0x2t 0x9t 0x7ft
        0xa7t 0x2t 0x9t 0x7ft
        0xa8t 0x2t 0x9t 0x7ft
        0xcdt 0x2t 0x9t 0x7ft
        0xaet 0x2t 0x9t 0x7ft
        0xa4t 0x2t 0x9t 0x7ft
        0xd1t 0x2t 0x9t 0x7ft
    .end array-data
.end method

.method static synthetic access$100(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-static {p0}, Lcom/android/settings/MiuiSettings;->getChildBackgroundState(I)I

    move-result v0

    return v0
.end method

.method private createTab()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getMiuiActionBar()Lmiui/v5/app/MiuiActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    .line 141
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-interface {v0, p0, v1, v5}, Lmiui/v5/app/MiuiActionBar;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;Z)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-interface {v0}, Lmiui/v5/app/MiuiActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 145
    const v0, 0x7f0c07e6

    invoke-virtual {v2, v0}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 146
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    const-string v1, "com.android.settings.FrequentlyFragment"

    const-class v3, Lcom/android/settings/FrequentlyFragment;

    invoke-interface/range {v0 .. v5}, Lmiui/v5/app/MiuiActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 149
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-interface {v0}, Lmiui/v5/app/MiuiActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v8

    .line 150
    const v0, 0x7f0c07e5

    invoke-virtual {v8, v0}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 151
    iget-object v6, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    const-string v7, "com.android.settings.SettingsFragment"

    const-class v9, Lcom/android/settings/SettingsFragment;

    move-object v10, v4

    move v11, v5

    invoke-interface/range {v6 .. v11}, Lmiui/v5/app/MiuiActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 154
    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-interface {v0, v8}, Lmiui/v5/app/MiuiActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 165
    return-void

    .line 158
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 159
    const-string v1, "leave_fragment_index"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 160
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    move-object v8, v2

    goto :goto_0
.end method

.method private static getChildBackgroundState(I)I
    .locals 3
    .parameter "pos"

    .prologue
    .line 416
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/settings/MiuiSettings;->sCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 417
    sget-object v1, Lcom/android/settings/MiuiSettings;->sCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p0, :cond_1

    .line 418
    sget-object v1, Lcom/android/settings/MiuiSettings;->sCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/settings/MiuiSettings;->sCategoryList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p0, :cond_0

    .line 419
    const v1, 0x6010039

    .line 426
    :goto_1
    return v1

    .line 421
    :cond_0
    const v1, 0x6010036

    goto :goto_1

    .line 422
    :cond_1
    sget-object v1, Lcom/android/settings/MiuiSettings;->sCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/android/settings/MiuiSettings;->sCategoryList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p0, :cond_2

    .line 423
    const v1, 0x6010037

    goto :goto_1

    .line 416
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    :cond_3
    const v1, 0x6010038

    goto :goto_1
.end method

.method private insertAccountsHeaders(Ljava/util/List;I)I
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const v12, 0x7f0c05cd

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v4

    .line 243
    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v4

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 244
    array-length v6, v4

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_6

    aget-object v7, v4, v3

    .line 245
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 246
    if-nez v8, :cond_1

    .line 244
    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 250
    :cond_1
    const-string v0, "com.xiaomi"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.xiaomi.unactivated"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 257
    array-length v0, v9

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 259
    :goto_2
    new-instance v10, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v10}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 260
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 261
    iget-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v11, :cond_2

    .line 262
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 265
    :cond_2
    if-eqz v0, :cond_5

    .line 266
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 267
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 268
    const-class v0, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 269
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 270
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v8, "account_type"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v8, "account"

    aget-object v11, v9, v2

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 272
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v8, "account"

    aget-object v9, v9, v2

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 275
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v8, "account_type"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_3
    :goto_3
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move v0, v2

    .line 257
    goto :goto_2

    .line 278
    :cond_5
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 279
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 280
    const-class v0, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 281
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 282
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->isMultiPane()Z

    move-result v0

    if-nez v0, :cond_3

    .line 286
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v7, "account_label"

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 294
    :cond_6
    new-instance v0, Lcom/android/settings/MiuiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSettings$2;-><init>(Lcom/android/settings/MiuiSettings;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 302
    const v0, 0x7f06003f

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/MiuiSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 303
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 304
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 306
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 307
    add-int/lit8 v3, v2, 0x1

    invoke-interface {p1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v2, v3

    goto :goto_4

    .line 309
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/MiuiSettings;->mListeningToAccountUpdates:Z

    if-nez v0, :cond_8

    .line 310
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 311
    iput-boolean v1, p0, Lcom/android/settings/MiuiSettings;->mListeningToAccountUpdates:Z

    .line 313
    :cond_8
    return v2
.end method


# virtual methods
.method public getAuthenticatorHelper()Lcom/android/settings/accounts/AuthenticatorHelper;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    return-object v0
.end method

.method protected initializeViews()V
    .locals 1

    .prologue
    .line 134
    const v0, 0x7f0400ad

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings;->setContentView(I)V

    .line 136
    invoke-direct {p0}, Lcom/android/settings/MiuiSettings;->createTab()V

    .line 137
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 672
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->invalidateHeaders()V

    .line 673
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 3
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
    .local p1, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v2, 0x1

    .line 680
    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-interface {v1}, Lmiui/v5/app/MiuiActionBar;->getFragmentTabCount()I

    move-result v1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-interface {v1, v2}, Lmiui/v5/app/MiuiActionBar;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/MiuiSettings;->mListeningToAccountUpdates:Z

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-interface {v1, v2}, Lmiui/v5/app/MiuiActionBar;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsFragment;

    .line 683
    .local v0, settingsFragment:Lcom/android/settings/SettingsFragment;
    invoke-virtual {v0}, Lcom/android/settings/SettingsFragment;->buildAdapter()V

    .line 685
    .end local v0           #settingsFragment:Lcom/android/settings/SettingsFragment;
    :cond_0
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 174
    const-class v1, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/SoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/vpn2/MiuiVpnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/TetherSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/ApnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/ZonePicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    :cond_0
    const-string v1, "settings:remove_ui_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    :cond_1
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 197
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 198
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 122
    new-instance v0, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 123
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 125
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    const-string v0, "development"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->initializeViews()V

    .line 131
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 226
    iget-object v2, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-interface {v2}, Lmiui/v5/app/MiuiActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 227
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 228
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 229
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "leave_fragment_index"

    iget-object v3, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Lmiui/v5/app/MiuiActionBar;

    invoke-interface {v3}, Lmiui/v5/app/MiuiActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 233
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/MiuiSettings;->mListeningToAccountUpdates:Z

    if-eqz v2, :cond_1

    .line 234
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 235
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/MiuiSettings;->mListeningToAccountUpdates:Z

    .line 238
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 239
    return-void
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 4
    .parameter "header"
    .parameter "position"

    .prologue
    .line 689
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0902b5

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 690
    invoke-static {p0}, Lmiui/net/PaymentManager;->get(Landroid/content/Context;)Lmiui/net/PaymentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/net/PaymentManager;->gotoMiliCenter(Landroid/app/Activity;)V

    .line 694
    :goto_0
    return-void

    .line 692
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 219
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 222
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 205
    new-instance v0, Lcom/android/settings/MiuiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSettings$1;-><init>(Lcom/android/settings/MiuiSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 211
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 213
    return-void
.end method

.method public updateHeaderList(Ljava/util/List;Z)V
    .locals 11
    .parameter
    .parameter "buildCategoryList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v9, p0, Lcom/android/settings/MiuiSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v10, "show"

    sget-boolean v8, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez v8, :cond_8

    const/4 v8, 0x1

    :goto_0
    invoke-interface {v9, v10, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 324
    .local v7, showDev:Z
    const/4 v3, 0x0

    .line 325
    .local v3, i:I
    if-eqz p2, :cond_0

    .line 326
    sget-object v8, Lcom/android/settings/MiuiSettings;->sCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 329
    :cond_0
    invoke-static {p0}, Lcom/android/settings/OldmanHelper;->isOldmanModeSettingsHidden(Landroid/content/Context;)Z

    move-result v5

    .line 330
    .local v5, isOldmanModeSettingsHidden:Z
    invoke-static {p0}, Lcom/android/settings/OldmanHelper;->isStatusBarSettingsHidden(Landroid/content/Context;)Z

    move-result v6

    .line 331
    .local v6, isStatusBarSettingsHidden:Z
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_15

    .line 332
    move v0, v3

    .line 333
    .local v0, category:I
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 335
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v4, v8

    .line 336
    .local v4, id:I
    const v8, 0x7f0902be

    if-eq v4, v8, :cond_2

    const v8, 0x7f0902cc

    if-ne v4, v8, :cond_9

    .line 337
    :cond_2
    invoke-static {p0, p1, v1}, Lcom/android/settings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    .line 384
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    const v8, 0x7f0902ce

    if-ne v4, v8, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_4

    .line 385
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 386
    :cond_4
    if-eqz v6, :cond_5

    const v8, 0x7f0902c4

    if-ne v4, v8, :cond_5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_5

    .line 387
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 389
    :cond_5
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/settings/MiuiSettings;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v8, v4}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    if-nez v8, :cond_6

    .line 392
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 395
    :cond_6
    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v8, :cond_7

    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v8, :cond_7

    if-eqz p2, :cond_7

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 397
    sget-object v8, Lcom/android/settings/MiuiSettings;->sCategoryList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_1

    .line 402
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 321
    .end local v0           #category:I
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v3           #i:I
    .end local v4           #id:I
    .end local v5           #isOldmanModeSettingsHidden:Z
    .end local v6           #isStatusBarSettingsHidden:Z
    .end local v7           #showDev:Z
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 338
    .restart local v0       #category:I
    .restart local v1       #header:Landroid/preference/PreferenceActivity$Header;
    .restart local v3       #i:I
    .restart local v4       #id:I
    .restart local v5       #isOldmanModeSettingsHidden:Z
    .restart local v6       #isStatusBarSettingsHidden:Z
    .restart local v7       #showDev:Z
    :cond_9
    const v8, 0x7f0902bd

    if-ne v4, v8, :cond_a

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android.hardware.wifi"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 341
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 343
    :cond_a
    const v8, 0x7f0902ac

    if-ne v4, v8, :cond_b

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 346
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 348
    :cond_b
    const v8, 0x7f0902b6

    if-ne v4, v8, :cond_c

    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 350
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 351
    :cond_c
    const v8, 0x7f0902aa

    if-ne v4, v8, :cond_d

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v8

    if-nez v8, :cond_d

    .line 353
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 354
    :cond_d
    const v8, 0x7f0902b3

    if-ne v4, v8, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a000a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_e

    .line 356
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 357
    :cond_e
    const v8, 0x7f0902bc

    if-ne v4, v8, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0018

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_f

    .line 359
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 360
    :cond_f
    const v8, 0x7f0902a7

    if-ne v4, v8, :cond_10

    .line 361
    add-int/lit8 v2, v3, 0x1

    .line 362
    .local v2, headerIndex:I
    invoke-direct {p0, p1, v2}, Lcom/android/settings/MiuiSettings;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v3

    .line 363
    goto/16 :goto_2

    .end local v2           #headerIndex:I
    :cond_10
    const v8, 0x7f0902c1

    if-ne v4, v8, :cond_12

    .line 364
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 367
    :cond_11
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 369
    :cond_12
    const v8, 0x7f0902d2

    if-ne v4, v8, :cond_13

    .line 370
    if-nez v7, :cond_3

    .line 371
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 373
    :cond_13
    const v8, 0x7f0902b5

    if-ne v4, v8, :cond_14

    .line 374
    invoke-static {p0}, Lmiui/net/PaymentManager;->get(Landroid/content/Context;)Lmiui/net/PaymentManager;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/net/PaymentManager;->isMibiServiceDisabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 375
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 377
    :cond_14
    const v8, 0x7f0902cb

    if-ne v4, v8, :cond_3

    .line 378
    sget-boolean v8, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v8, :cond_3

    sget-boolean v8, Lmiui/os/Build;->IS_HONGMI:Z

    if-nez v8, :cond_3

    .line 379
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 405
    .end local v0           #category:I
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v4           #id:I
    :cond_15
    if-eqz p2, :cond_16

    .line 406
    sget-object v8, Lcom/android/settings/MiuiSettings;->sCategoryList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_16
    return-void
.end method
