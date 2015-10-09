.class Landroid/net/wifi/WifiAutoConnController$5;
.super Ljava/lang/Object;
.source "WifiAutoConnController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiAutoConnController;->processBroadcast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiAutoConnController;

.field final synthetic val$action:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiAutoConnController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Landroid/net/wifi/WifiAutoConnController$5;->this$0:Landroid/net/wifi/WifiAutoConnController;

    iput-object p2, p0, Landroid/net/wifi/WifiAutoConnController$5;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 127
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    iget-object v2, p0, Landroid/net/wifi/WifiAutoConnController$5;->val$action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController$5;->this$0:Landroid/net/wifi/WifiAutoConnController;

    invoke-virtual {v1}, Landroid/net/wifi/WifiAutoConnController;->showAskDialog()V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    iget-object v2, p0, Landroid/net/wifi/WifiAutoConnController$5;->val$action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController$5;->this$0:Landroid/net/wifi/WifiAutoConnController;

    # getter for: Landroid/net/wifi/WifiAutoConnController;->mConnectedNetworkType:I
    invoke-static {v1}, Landroid/net/wifi/WifiAutoConnController;->access$500(Landroid/net/wifi/WifiAutoConnController;)I

    move-result v0

    .line 132
    .local v0, "connectedNetworkType":I
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController$5;->this$0:Landroid/net/wifi/WifiAutoConnController;

    iget-object v2, p0, Landroid/net/wifi/WifiAutoConnController$5;->this$0:Landroid/net/wifi/WifiAutoConnController;

    invoke-virtual {v2}, Landroid/net/wifi/WifiAutoConnController;->getConnectedNetworkType()I

    move-result v2

    # setter for: Landroid/net/wifi/WifiAutoConnController;->mConnectedNetworkType:I
    invoke-static {v1, v2}, Landroid/net/wifi/WifiAutoConnController;->access$502(Landroid/net/wifi/WifiAutoConnController;I)I

    .line 133
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController$5;->this$0:Landroid/net/wifi/WifiAutoConnController;

    # getter for: Landroid/net/wifi/WifiAutoConnController;->mConnectedNetworkType:I
    invoke-static {v1}, Landroid/net/wifi/WifiAutoConnController;->access$500(Landroid/net/wifi/WifiAutoConnController;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 134
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController$5;->this$0:Landroid/net/wifi/WifiAutoConnController;

    invoke-virtual {v1}, Landroid/net/wifi/WifiAutoConnController;->updateWifiEnableState()V

    goto :goto_0

    .line 136
    .end local v0    # "connectedNetworkType":I
    :cond_2
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    iget-object v2, p0, Landroid/net/wifi/WifiAutoConnController$5;->val$action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController$5;->this$0:Landroid/net/wifi/WifiAutoConnController;

    invoke-virtual {v1}, Landroid/net/wifi/WifiAutoConnController;->updateWifiEnableState()V

    goto :goto_0
.end method
