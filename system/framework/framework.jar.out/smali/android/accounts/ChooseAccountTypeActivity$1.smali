.class Landroid/accounts/ChooseAccountTypeActivity$1;
.super Ljava/lang/Object;
.source "ChooseAccountTypeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/ChooseAccountTypeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/ChooseAccountTypeActivity;


# direct methods
.method constructor <init>(Landroid/accounts/ChooseAccountTypeActivity;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Landroid/accounts/ChooseAccountTypeActivity$1;->this$0:Landroid/accounts/ChooseAccountTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
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
    .line 110
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Landroid/accounts/ChooseAccountTypeActivity$1;->this$0:Landroid/accounts/ChooseAccountTypeActivity;

    iget-object v0, p0, Landroid/accounts/ChooseAccountTypeActivity$1;->this$0:Landroid/accounts/ChooseAccountTypeActivity;

    # getter for: Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/accounts/ChooseAccountTypeActivity;->access$000(Landroid/accounts/ChooseAccountTypeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;

    iget-object v0, v0, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    # invokes: Landroid/accounts/ChooseAccountTypeActivity;->setResultAndFinish(Ljava/lang/String;)V
    invoke-static {v1, v0}, Landroid/accounts/ChooseAccountTypeActivity;->access$100(Landroid/accounts/ChooseAccountTypeActivity;Ljava/lang/String;)V

    .line 111
    return-void
.end method
