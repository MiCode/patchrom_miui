.class Landroid/accounts/AccountManager$AmsTask$1;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager$AmsTask;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$this$0:Landroid/accounts/AccountManager;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;)V
    .locals 0

    .prologue
    .line 1460
    iput-object p1, p0, Landroid/accounts/AccountManager$AmsTask$1;->val$this$0:Landroid/accounts/AccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1462
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1460
    invoke-virtual {p0}, Landroid/accounts/AccountManager$AmsTask$1;->call()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
