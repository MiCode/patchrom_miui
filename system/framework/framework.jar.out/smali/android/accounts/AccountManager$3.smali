.class Landroid/accounts/AccountManager$3;
.super Landroid/accounts/AccountManager$Future2Task;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/AccountManager$Future2Task",
        "<[",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$features:[Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 577
    .local p3, "x1":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$3;->this$0:Landroid/accounts/AccountManager;

    iput-object p4, p0, Landroid/accounts/AccountManager$3;->val$type:Ljava/lang/String;

    iput-object p5, p0, Landroid/accounts/AccountManager$3;->val$features:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManager$Future2Task;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bundleToResult(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 577
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$3;->bundleToResult(Landroid/os/Bundle;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public bundleToResult(Landroid/os/Bundle;)[Landroid/accounts/Account;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 582
    const-string v3, "accounts"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 583
    new-instance v3, Landroid/accounts/AuthenticatorException;

    const-string/jumbo v4, "no result in response"

    invoke-direct {v3, v4}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 585
    :cond_0
    const-string v3, "accounts"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 586
    .local v2, "parcelables":[Landroid/os/Parcelable;
    array-length v3, v2

    new-array v0, v3, [Landroid/accounts/Account;

    .line 587
    .local v0, "descs":[Landroid/accounts/Account;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 588
    aget-object v3, v2, v1

    check-cast v3, Landroid/accounts/Account;

    aput-object v3, v0, v1

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 590
    :cond_1
    return-object v0
.end method

.method public doWork()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 579
    iget-object v0, p0, Landroid/accounts/AccountManager$3;->this$0:Landroid/accounts/AccountManager;

    # getter for: Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;
    invoke-static {v0}, Landroid/accounts/AccountManager;->access$000(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AccountManager$3;->mResponse:Landroid/accounts/IAccountManagerResponse;

    iget-object v2, p0, Landroid/accounts/AccountManager$3;->val$type:Ljava/lang/String;

    iget-object v3, p0, Landroid/accounts/AccountManager$3;->val$features:[Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/accounts/IAccountManager;->getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V

    .line 580
    return-void
.end method
