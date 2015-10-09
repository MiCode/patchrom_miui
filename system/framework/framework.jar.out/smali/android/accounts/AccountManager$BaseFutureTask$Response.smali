.class public Landroid/accounts/AccountManager$BaseFutureTask$Response;
.super Landroid/accounts/IAccountManagerResponse$Stub;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager$BaseFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Response"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/accounts/AccountManager$BaseFutureTask;


# direct methods
.method protected constructor <init>(Landroid/accounts/AccountManager$BaseFutureTask;)V
    .locals 0

    .prologue
    .line 1614
    .local p0, "this":Landroid/accounts/AccountManager$BaseFutureTask$Response;, "Landroid/accounts/AccountManager$BaseFutureTask<TT;>.Response;"
    iput-object p1, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    invoke-direct {p0}, Landroid/accounts/IAccountManagerResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1632
    .local p0, "this":Landroid/accounts/AccountManager$BaseFutureTask$Response;, "Landroid/accounts/AccountManager$BaseFutureTask<TT;>.Response;"
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1633
    iget-object v0, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager$BaseFutureTask;->cancel(Z)Z

    .line 1637
    :goto_0
    return-void

    .line 1636
    :cond_0
    iget-object v0, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    iget-object v1, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    iget-object v1, v1, Landroid/accounts/AccountManager$BaseFutureTask;->this$0:Landroid/accounts/AccountManager;

    # invokes: Landroid/accounts/AccountManager;->convertErrorToException(ILjava/lang/String;)Ljava/lang/Exception;
    invoke-static {v1, p1, p2}, Landroid/accounts/AccountManager;->access$400(Landroid/accounts/AccountManager;ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    # invokes: Landroid/accounts/AccountManager$BaseFutureTask;->setException(Ljava/lang/Throwable;)V
    invoke-static {v0, v1}, Landroid/accounts/AccountManager$BaseFutureTask;->access$800(Landroid/accounts/AccountManager$BaseFutureTask;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1617
    .local p0, "this":Landroid/accounts/AccountManager$BaseFutureTask$Response;, "Landroid/accounts/AccountManager$BaseFutureTask<TT;>.Response;"
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager$BaseFutureTask;->bundleToResult(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    .line 1618
    .local v0, "result":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 1629
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :goto_0
    return-void

    .line 1621
    .restart local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-object v1, p0, Landroid/accounts/AccountManager$BaseFutureTask$Response;->this$1:Landroid/accounts/AccountManager$BaseFutureTask;

    # invokes: Landroid/accounts/AccountManager$BaseFutureTask;->set(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Landroid/accounts/AccountManager$BaseFutureTask;->access$700(Landroid/accounts/AccountManager$BaseFutureTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1623
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 1628
    :goto_1
    const/4 v1, 0x5

    const-string/jumbo v2, "no result in response"

    invoke-virtual {p0, v1, v2}, Landroid/accounts/AccountManager$BaseFutureTask$Response;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 1625
    :catch_1
    move-exception v1

    goto :goto_1
.end method
