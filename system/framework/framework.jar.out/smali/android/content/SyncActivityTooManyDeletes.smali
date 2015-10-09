.class public Landroid/content/SyncActivityTooManyDeletes;
.super Landroid/app/Activity;
.source "SyncActivityTooManyDeletes.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mNumDeletes:J

.field private mProvider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private startSyncReallyDelete()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "deletions_override"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    const-string v1, "expedited"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 121
    const-string/jumbo v1, "upload"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    iget-object v1, p0, Landroid/content/SyncActivityTooManyDeletes;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Landroid/content/SyncActivityTooManyDeletes;->mAuthority:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method private startSyncUndoDeletes()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "discard_deletions"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    const-string v1, "expedited"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    const-string/jumbo v1, "upload"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    iget-object v1, p0, Landroid/content/SyncActivityTooManyDeletes;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Landroid/content/SyncActivityTooManyDeletes;->mAuthority:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 132
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Landroid/content/SyncActivityTooManyDeletes;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 51
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/content/SyncActivityTooManyDeletes;->finish()V

    .line 107
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string/jumbo v8, "numDeletes"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Landroid/content/SyncActivityTooManyDeletes;->mNumDeletes:J

    .line 57
    const-string v8, "account"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/accounts/Account;

    iput-object v8, p0, Landroid/content/SyncActivityTooManyDeletes;->mAccount:Landroid/accounts/Account;

    .line 58
    const-string v8, "authority"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/content/SyncActivityTooManyDeletes;->mAuthority:Ljava/lang/String;

    .line 59
    const-string/jumbo v8, "provider"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/content/SyncActivityTooManyDeletes;->mProvider:Ljava/lang/String;

    .line 62
    const/4 v8, 0x3

    new-array v5, v8, [Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/internal/R$string;->sync_really_delete:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/internal/R$string;->sync_undo_deletes:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x2

    invoke-virtual {p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/internal/R$string;->sync_do_nothing:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v5, v8

    .line 68
    .local v5, "options":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget v8, Landroid/R$layout;->simple_list_item_1:I

    sget v9, Landroid/R$id;->text1:I

    invoke-direct {v0, p0, v8, v9, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 73
    .local v0, "adapter":Landroid/widget/ListAdapter;
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 74
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 76
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 79
    .local v6, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/internal/R$string;->sync_too_many_deletes_desc:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 81
    .local v7, "tooManyDeletesDescFormat":Ljava/lang/CharSequence;
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-wide v11, p0, Landroid/content/SyncActivityTooManyDeletes;->mNumDeletes:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Landroid/content/SyncActivityTooManyDeletes;->mProvider:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Landroid/content/SyncActivityTooManyDeletes;->mAccount:Landroid/accounts/Account;

    iget-object v11, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    .local v3, "ll":Landroid/widget/LinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/4 v10, 0x0

    invoke-direct {v4, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 88
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    invoke-virtual {p0, v3}, Landroid/content/SyncActivityTooManyDeletes;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_1

    invoke-direct {p0}, Landroid/content/SyncActivityTooManyDeletes;->startSyncReallyDelete()V

    .line 113
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/SyncActivityTooManyDeletes;->finish()V

    .line 114
    return-void

    .line 112
    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-direct {p0}, Landroid/content/SyncActivityTooManyDeletes;->startSyncUndoDeletes()V

    goto :goto_0
.end method
