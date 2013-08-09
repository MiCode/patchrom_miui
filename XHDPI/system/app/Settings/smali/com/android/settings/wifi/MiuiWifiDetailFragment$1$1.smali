.class Lcom/android/settings/wifi/MiuiWifiDetailFragment$1$1;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$1$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "network_id"

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$1$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;

    iget-object v2, v2, Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    #getter for: Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkId:I
    invoke-static {v2}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->access$000(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    const-string v1, "config"

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$1$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;

    iget-object v2, v2, Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    #getter for: Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;
    invoke-static {v2}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->access$100(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Lcom/android/settings/wifi/MiuiAccessPoint;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/wifi/MiuiAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$1$1;->this$1:Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;

    iget-object v1, v1, Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-virtual {v1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 84
    return-void
.end method
