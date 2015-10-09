.class Landroid/accounts/GrantCredentialsPermissionActivity$1$1;
.super Ljava/lang/Object;
.source "GrantCredentialsPermissionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/GrantCredentialsPermissionActivity$1;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/accounts/GrantCredentialsPermissionActivity$1;

.field final synthetic val$authTokenLabel:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/accounts/GrantCredentialsPermissionActivity$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->this$1:Landroid/accounts/GrantCredentialsPermissionActivity$1;

    iput-object p2, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->val$authTokenLabel:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->this$1:Landroid/accounts/GrantCredentialsPermissionActivity$1;

    iget-object v0, v0, Landroid/accounts/GrantCredentialsPermissionActivity$1;->this$0:Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-virtual {v0}, Landroid/accounts/GrantCredentialsPermissionActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->this$1:Landroid/accounts/GrantCredentialsPermissionActivity$1;

    iget-object v0, v0, Landroid/accounts/GrantCredentialsPermissionActivity$1;->val$authTokenTypeView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->val$authTokenLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity$1$1;->this$1:Landroid/accounts/GrantCredentialsPermissionActivity$1;

    iget-object v0, v0, Landroid/accounts/GrantCredentialsPermissionActivity$1;->val$authTokenTypeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    :cond_0
    return-void
.end method
