.class Lcom/android/settings/AppPickerV5$1;
.super Ljava/lang/Object;
.source "AppPickerV5.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AppPickerV5;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AppPickerV5;


# direct methods
.method constructor <init>(Lcom/android/settings/AppPickerV5;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/AppPickerV5$1;->this$0:Lcom/android/settings/AppPickerV5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 46
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/settings/AppPickerV5$1;->this$0:Lcom/android/settings/AppPickerV5;

    #getter for: Lcom/android/settings/AppPickerV5;->mAdapter:Lcom/android/settings/AppPickerV5$AppListAdapter;
    invoke-static {v2}, Lcom/android/settings/AppPickerV5;->access$000(Lcom/android/settings/AppPickerV5;)Lcom/android/settings/AppPickerV5$AppListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/settings/AppPickerV5$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/AppPickerV5$MyApplicationInfo;

    .line 47
    .local v0, app:Lcom/android/settings/AppPickerV5$MyApplicationInfo;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, v0, Lcom/android/settings/AppPickerV5$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/AppPickerV5$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/android/settings/AppPickerV5$1;->this$0:Lcom/android/settings/AppPickerV5;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/AppPickerV5;->setResult(ILandroid/content/Intent;)V

    .line 50
    iget-object v2, p0, Lcom/android/settings/AppPickerV5$1;->this$0:Lcom/android/settings/AppPickerV5;

    invoke-virtual {v2}, Lcom/android/settings/AppPickerV5;->finish()V

    .line 51
    return-void
.end method
