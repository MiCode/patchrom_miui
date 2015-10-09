.class Landroid/accounts/AbstractAccountAuthenticator$Transport;
.super Landroid/accounts/IAccountAuthenticator$Stub;
.source "AbstractAccountAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AbstractAccountAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Transport"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AbstractAccountAuthenticator;


# direct methods
.method private constructor <init>(Landroid/accounts/AbstractAccountAuthenticator;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticator$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/AbstractAccountAuthenticator$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/accounts/AbstractAccountAuthenticator;
    .param p2, "x1"    # Landroid/accounts/AbstractAccountAuthenticator$1;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Landroid/accounts/AbstractAccountAuthenticator$Transport;-><init>(Landroid/accounts/AbstractAccountAuthenticator;)V

    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "features"    # [Ljava/lang/String;
    .param p5, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 121
    const-string v0, "AccountAuthenticator"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string v1, "AccountAuthenticator"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAccount: accountType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", authTokenType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", features "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p4, :cond_3

    const-string v0, "[]"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    # invokes: Landroid/accounts/AbstractAccountAuthenticator;->checkBinderPermission()V
    invoke-static {v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    .line 128
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v1, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v1, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AbstractAccountAuthenticator;->addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 131
    .local v7, "result":Landroid/os/Bundle;
    const-string v0, "AccountAuthenticator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 133
    const-string v0, "AccountAuthenticator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAccount: result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_1
    if-eqz v7, :cond_2

    .line 136
    invoke-interface {p1, v7}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v7    # "result":Landroid/os/Bundle;
    :cond_2
    :goto_1
    return-void

    .line 122
    :cond_3
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v6

    .line 139
    .local v6, "e":Ljava/lang/Exception;
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v1, "addAccount"

    # invokes: Landroid/accounts/AbstractAccountAuthenticator;->handleException(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v0, p1, v1, p2, v6}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public addAccountFromCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "accountCredentials"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    # invokes: Landroid/accounts/AbstractAccountAuthenticator;->checkBinderPermission()V
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    .line 299
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v2, v3, p2, p3}, Landroid/accounts/AbstractAccountAuthenticator;->addAccountFromCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 303
    .local v1, "result":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 304
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v3, "addAccountFromCredentials"

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/accounts/AbstractAccountAuthenticator;->handleException(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v2, p1, v3, v4, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public confirmCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 145
    const-string v2, "AccountAuthenticator"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    const-string v2, "AccountAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirmCredentials: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    # invokes: Landroid/accounts/AbstractAccountAuthenticator;->checkBinderPermission()V
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    .line 150
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v2, v3, p2, p3}, Landroid/accounts/AbstractAccountAuthenticator;->confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 152
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "AccountAuthenticator"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 154
    const-string v2, "AccountAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirmCredentials: result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    if-eqz v1, :cond_2

    .line 158
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_2
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v3, "confirmCredentials"

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/accounts/AbstractAccountAuthenticator;->handleException(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v2, p1, v3, v4, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public editProperties(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    # invokes: Landroid/accounts/AbstractAccountAuthenticator;->checkBinderPermission()V
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    .line 241
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v2, v3, p2}, Landroid/accounts/AbstractAccountAuthenticator;->editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 243
    .local v1, "result":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 244
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v3, "editProperties"

    # invokes: Landroid/accounts/AbstractAccountAuthenticator;->handleException(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v2, p1, v3, p2, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getAccountCredentialsForCloning(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    # invokes: Landroid/accounts/AbstractAccountAuthenticator;->checkBinderPermission()V
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    .line 283
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v2, v3, p2}, Landroid/accounts/AbstractAccountAuthenticator;->getAccountCredentialsForCloning(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v1

    .line 286
    .local v1, "result":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 287
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v3, "getAccountCredentialsForCloning"

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/accounts/AbstractAccountAuthenticator;->handleException(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v2, p1, v3, v4, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getAccountRemovalAllowed(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    # invokes: Landroid/accounts/AbstractAccountAuthenticator;->checkBinderPermission()V
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    .line 269
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v2, v3, p2}, Landroid/accounts/AbstractAccountAuthenticator;->getAccountRemovalAllowed(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v1

    .line 271
    .local v1, "result":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 272
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v3, "getAccountRemovalAllowed"

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/accounts/AbstractAccountAuthenticator;->handleException(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v2, p1, v3, v4, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "loginOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 190
    const-string v2, "AccountAuthenticator"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    const-string v2, "AccountAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAuthToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", authTokenType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    # invokes: Landroid/accounts/AbstractAccountAuthenticator;->checkBinderPermission()V
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    .line 196
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/accounts/AbstractAccountAuthenticator;->getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 199
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "AccountAuthenticator"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 201
    const-string v2, "AccountAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAuthToken: result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_1
    if-eqz v1, :cond_2

    .line 204
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_2
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v3, "getAuthToken"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/accounts/AbstractAccountAuthenticator;->handleException(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v2, p1, v3, v4, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 168
    const-string v2, "AccountAuthenticator"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    const-string v2, "AccountAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAuthTokenLabel: authTokenType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    # invokes: Landroid/accounts/AbstractAccountAuthenticator;->checkBinderPermission()V
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    .line 173
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "authTokenLabelKey"

    iget-object v3, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-virtual {v3, p2}, Landroid/accounts/AbstractAccountAuthenticator;->getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v2, "AccountAuthenticator"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 178
    const-string v2, "AccountAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAuthTokenLabel: result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_1
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v1    # "result":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v3, "getAuthTokenLabel"

    # invokes: Landroid/accounts/AbstractAccountAuthenticator;->handleException(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v2, p1, v3, p2, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "features"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    # invokes: Landroid/accounts/AbstractAccountAuthenticator;->checkBinderPermission()V
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    .line 255
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v2, v3, p2, p3}, Landroid/accounts/AbstractAccountAuthenticator;->hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 257
    .local v1, "result":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 258
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string v3, "hasFeatures"

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/accounts/AbstractAccountAuthenticator;->handleException(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v2, p1, v3, v4, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public updateCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "response"    # Landroid/accounts/IAccountAuthenticatorResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "loginOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 214
    const-string v2, "AccountAuthenticator"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    const-string v2, "AccountAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCredentials: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", authTokenType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    # invokes: Landroid/accounts/AbstractAccountAuthenticator;->checkBinderPermission()V
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    .line 220
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/accounts/AbstractAccountAuthenticator;->updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 223
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "AccountAuthenticator"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 225
    const-string v2, "AccountAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCredentials: result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_1
    if-eqz v1, :cond_2

    .line 229
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_2
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    const-string/jumbo v3, "updateCredentials"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/accounts/AbstractAccountAuthenticator;->handleException(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v2, p1, v3, v4, v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$100(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
