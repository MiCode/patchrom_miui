.class Landroid/accounts/AbstractAccountAuthenticator$1;
.super Ljava/lang/Object;
.source "AbstractAccountAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AbstractAccountAuthenticator;->getAccountCredentialsForCloning(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AbstractAccountAuthenticator;

.field final synthetic val$response:Landroid/accounts/AccountAuthenticatorResponse;


# direct methods
.method constructor <init>(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/AccountAuthenticatorResponse;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Landroid/accounts/AbstractAccountAuthenticator$1;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    iput-object p2, p0, Landroid/accounts/AbstractAccountAuthenticator$1;->val$response:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 522
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 523
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "booleanResult"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 524
    iget-object v1, p0, Landroid/accounts/AbstractAccountAuthenticator$1;->val$response:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v1, v0}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 525
    return-void
.end method
