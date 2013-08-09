.class Lcom/android/settings/permission/ApplicationFragment$1;
.super Ljava/lang/Object;
.source "ApplicationFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/permission/ApplicationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/permission/ApplicationFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/permission/ApplicationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/permission/ApplicationFragment$1;->this$0:Lcom/android/settings/permission/ApplicationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 82
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.permission.AppPermissionsEditor"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v2, "extra_package_uid"

    iget-object v1, p0, Lcom/android/settings/permission/ApplicationFragment$1;->this$0:Lcom/android/settings/permission/ApplicationFragment;

    #getter for: Lcom/android/settings/permission/ApplicationFragment;->mPackageList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/permission/ApplicationFragment;->access$000(Lcom/android/settings/permission/ApplicationFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lbe/security/bean/Package;

    invoke-virtual {v1}, Lcom/lbe/security/bean/Package;->getUid()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Lcom/android/settings/permission/ApplicationFragment$1;->this$0:Lcom/android/settings/permission/ApplicationFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings/permission/ApplicationFragment;->startActivity(Landroid/content/Intent;)V

    .line 87
    return-void
.end method
