.class public Landroid/accounts/ChooseAccountActivity;
.super Landroid/app/Activity;
.source "ChooseAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;,
        Landroid/accounts/ChooseAccountActivity$ViewHolder;,
        Landroid/accounts/ChooseAccountActivity$AccountInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountManager"


# instance fields
.field private mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

.field private mAccounts:[Landroid/os/Parcelable;

.field private mResult:Landroid/os/Bundle;

.field private mTypeToAuthDescription:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    .line 46
    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/HashMap;

    .line 155
    return-void
.end method

.method private getAuthDescriptions()V
    .locals 6

    .prologue
    .line 92
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .local v0, "arr$":[Landroid/accounts/AuthenticatorDescription;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 93
    .local v1, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v4, p0, Landroid/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/HashMap;

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_0
    return-void
.end method

.method private getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x5

    .line 98
    const/4 v3, 0x0

    .line 99
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    :try_start_0
    iget-object v4, p0, Landroid/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 102
    .local v1, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/accounts/ChooseAccountActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 103
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 116
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 104
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AccountManager"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    const-string v4, "AccountManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No icon name for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 111
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "AccountManager"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    const-string v4, "AccountManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No icon resource for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mResult:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    iget-object v1, p0, Landroid/accounts/ChooseAccountActivity;->mResult:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManagerResponse;->onResult(Landroid/os/Bundle;)V

    .line 137
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 138
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManagerResponse;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "accounts"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    iput-object v3, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    .line 57
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "accountManagerResponse"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/accounts/AccountManagerResponse;

    iput-object v3, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    .line 61
    iget-object v3, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    if-nez v3, :cond_0

    .line 62
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/accounts/ChooseAccountActivity;->setResult(I)V

    .line 63
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->finish()V

    .line 89
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-direct {p0}, Landroid/accounts/ChooseAccountActivity;->getAuthDescriptions()V

    .line 69
    iget-object v3, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    array-length v3, v3

    new-array v2, v3, [Landroid/accounts/ChooseAccountActivity$AccountInfo;

    .line 70
    .local v2, "mAccountInfos":[Landroid/accounts/ChooseAccountActivity$AccountInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 71
    new-instance v4, Landroid/accounts/ChooseAccountActivity$AccountInfo;

    iget-object v3, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    aget-object v3, v3, v0

    check-cast v3, Landroid/accounts/Account;

    iget-object v5, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    aget-object v3, v3, v0

    check-cast v3, Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/accounts/ChooseAccountActivity;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/accounts/ChooseAccountActivity$AccountInfo;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    aput-object v4, v2, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_1
    sget v3, Lcom/android/internal/R$layout;->choose_account:I

    invoke-virtual {p0, v3}, Landroid/accounts/ChooseAccountActivity;->setContentView(I)V

    .line 78
    sget v3, Landroid/R$id;->list:I

    invoke-virtual {p0, v3}, Landroid/accounts/ChooseAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 80
    .local v1, "list":Landroid/widget/ListView;
    new-instance v3, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;

    sget v4, Landroid/R$layout;->simple_list_item_1:I

    invoke-direct {v3, p0, v4, v2}, Landroid/accounts/ChooseAccountActivity$AccountArrayAdapter;-><init>(Landroid/content/Context;I[Landroid/accounts/ChooseAccountActivity$AccountInfo;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 83
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 84
    new-instance v3, Landroid/accounts/ChooseAccountActivity$1;

    invoke-direct {v3, p0}, Landroid/accounts/ChooseAccountActivity$1;-><init>(Landroid/accounts/ChooseAccountActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 120
    iget-object v2, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    aget-object v0, v2, p3

    check-cast v0, Landroid/accounts/Account;

    .line 121
    .local v0, "account":Landroid/accounts/Account;
    const-string v2, "AccountManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selected account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "authAccount"

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v2, "accountType"

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iput-object v1, p0, Landroid/accounts/ChooseAccountActivity;->mResult:Landroid/os/Bundle;

    .line 126
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->finish()V

    .line 127
    return-void
.end method
