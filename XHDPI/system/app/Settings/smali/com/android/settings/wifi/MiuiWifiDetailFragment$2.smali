.class Lcom/android/settings/wifi/MiuiWifiDetailFragment$2;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiDetailFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$2;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 106
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$2;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-virtual {v1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$2;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    #getter for: Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkId:I
    invoke-static {v2}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->access$000(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/MiuiUtils;->connectToOtherWifi(Landroid/content/Context;I)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$2;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 108
    return-void
.end method
