.class Lcom/mediatek/wifi/hotspot/BandwidthUsage$2;
.super Landroid/content/BroadcastReceiver;
.source "BandwidthUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wifi/hotspot/BandwidthUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;


# direct methods
.method constructor <init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$2;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$2;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    #getter for: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$100(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$2;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-virtual {v3}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    .local v1, isAirplaneMode:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 106
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$2;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    #getter for: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;
    invoke-static {v3}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$200(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 107
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$2;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-virtual {v2}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->onBackPressed()V

    .line 110
    .end local v1           #isAirplaneMode:Z
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 103
    goto :goto_0
.end method
