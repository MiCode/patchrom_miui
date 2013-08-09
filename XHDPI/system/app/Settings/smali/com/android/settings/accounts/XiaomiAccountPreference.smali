.class public Lcom/android/settings/accounts/XiaomiAccountPreference;
.super Lcom/android/settings/AccountPreference;
.source "XiaomiAccountPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "context"
    .parameter "account"
    .parameter "icon"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p4, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    .line 24
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.settings.XIAOMI_ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "account"

    invoke-virtual {v7, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0, v7}, Lcom/android/settings/accounts/XiaomiAccountPreference;->setIntent(Landroid/content/Intent;)V

    .line 29
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    .line 30
    .local v6, am:Landroid/accounts/AccountManager;
    const-string v0, "reg_type"

    invoke-virtual {v6, p2, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 31
    .local v8, regType:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    const v0, 0x7f0c0821

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/XiaomiAccountPreference;->setTitle(I)V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "summary"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/settings/accounts/XiaomiAccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c07a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method
