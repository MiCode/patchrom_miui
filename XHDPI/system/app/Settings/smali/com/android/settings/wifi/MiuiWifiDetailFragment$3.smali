.class Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiDetailFragment;->initAutoConnect(Landroid/view/View;Landroid/app/Activity;)V
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
    .line 129
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 133
    if-eqz p2, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    #getter for: Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSsidSet:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->access$200(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    #getter for: Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;
    invoke-static {v1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->access$100(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Lcom/android/settings/wifi/MiuiAccessPoint;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/wifi/MiuiAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    #getter for: Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSsidSet:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->access$200(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/provider/ExtraSettings$System;->setDisableWifiAutoConnectSsid(Landroid/content/Context;Ljava/util/HashSet;)V

    .line 139
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    #getter for: Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSsidSet:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->access$200(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    #getter for: Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAccessPoint:Lcom/android/settings/wifi/MiuiAccessPoint;
    invoke-static {v1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->access$100(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Lcom/android/settings/wifi/MiuiAccessPoint;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/wifi/MiuiAccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
