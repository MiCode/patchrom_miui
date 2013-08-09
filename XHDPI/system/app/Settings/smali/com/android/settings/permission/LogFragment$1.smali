.class Lcom/android/settings/permission/LogFragment$1;
.super Ljava/lang/Object;
.source "LogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/permission/LogFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/permission/LogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/permission/LogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/permission/LogFragment$1;->this$0:Lcom/android/settings/permission/LogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment$1;->this$0:Lcom/android/settings/permission/LogFragment;

    iget-object v0, v0, Lcom/android/settings/permission/LogFragment;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    new-instance v1, Lcom/lbe/security/service/privacy/EventFilter;

    invoke-direct {v1}, Lcom/lbe/security/service/privacy/EventFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/privacy/HIPSService;->deleteEventLog(Lcom/lbe/security/service/privacy/EventFilter;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment$1;->this$0:Lcom/android/settings/permission/LogFragment;

    #getter for: Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/permission/LogFragment;->access$100(Lcom/android/settings/permission/LogFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment$1;->this$0:Lcom/android/settings/permission/LogFragment;

    invoke-virtual {v0}, Lcom/android/settings/permission/LogFragment;->updateUI()V

    .line 121
    return-void
.end method
