.class public Lcom/android/settings/wifi/WifiShareActivity;
.super Landroid/app/Activity;
.source "WifiShareActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mWifiShareAction:Landroid/widget/Button;

.field private mWifiShareActionTurnOnSummary:Landroid/widget/TextView;

.field private mWifiShareSummary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiShareActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiShareActivity;->enableWifiShare(Z)V

    return-void
.end method

.method private enableWifiShare(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiShareUtils;->setWifiShare(Landroid/content/Context;Z)V

    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareActivity;->finish()V

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f0400df

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiShareActivity;->setContentView(I)V

    .line 35
    const v0, 0x7f09027f

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareActivity;->mWifiShareSummary:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f090280

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareActivity;->mWifiShareActionTurnOnSummary:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f090281

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiShareActivity;->mWifiShareAction:Landroid/widget/Button;

    .line 38
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareActivity;->updateUI()V

    .line 44
    return-void
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-static {p0}, Lcom/android/settings/wifi/WifiShareUtils;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 90
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 91
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiShareActivity;->enableWifiShare(Z)V

    .line 94
    .end local v0           #account:Landroid/accounts/Account;
    :cond_0
    return-void
.end method

.method public updateUI()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-static {p0}, Lcom/android/settings/wifi/WifiShareUtils;->isWifiShareTurnOn(Landroid/content/Context;)Z

    move-result v1

    .line 48
    .local v1, isWifiShareTurnOn:Z
    invoke-static {p0}, Lcom/android/settings/wifi/WifiShareUtils;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 49
    .local v0, hasLoginXiaomiAccount:Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0c0940

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0c0941

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, summary:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareActivity;->mWifiShareSummary:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareActivity;->mWifiShareActionTurnOnSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v3, 0x8

    :cond_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareActivity;->mWifiShareAction:Landroid/widget/Button;

    if-eqz v1, :cond_2

    const v3, 0x7f0c094d

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setText(I)V

    .line 55
    if-eqz v1, :cond_3

    .line 56
    iget-object v3, p0, Lcom/android/settings/wifi/WifiShareActivity;->mWifiShareAction:Landroid/widget/Button;

    new-instance v4, Lcom/android/settings/wifi/WifiShareActivity$1;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiShareActivity$1;-><init>(Lcom/android/settings/wifi/WifiShareActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :goto_2
    return-void

    .end local v0           #hasLoginXiaomiAccount:Z
    .end local v2           #summary:Ljava/lang/String;
    :cond_1
    move v0, v3

    .line 48
    goto :goto_0

    .line 53
    .restart local v0       #hasLoginXiaomiAccount:Z
    .restart local v2       #summary:Ljava/lang/String;
    :cond_2
    const v3, 0x7f0c094b

    goto :goto_1

    .line 62
    :cond_3
    if-eqz v0, :cond_4

    .line 63
    iget-object v3, p0, Lcom/android/settings/wifi/WifiShareActivity;->mWifiShareAction:Landroid/widget/Button;

    new-instance v4, Lcom/android/settings/wifi/WifiShareActivity$2;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiShareActivity$2;-><init>(Lcom/android/settings/wifi/WifiShareActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 70
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/WifiShareActivity;->mWifiShareAction:Landroid/widget/Button;

    new-instance v4, Lcom/android/settings/wifi/WifiShareActivity$3;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiShareActivity$3;-><init>(Lcom/android/settings/wifi/WifiShareActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method
