.class Landroid/net/wifi/WifiAutoConnController$1;
.super Landroid/database/ContentObserver;
.source "WifiAutoConnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiAutoConnController;->registerDisableWifiAutoConnectChangedObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiAutoConnController;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiAutoConnController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 61
    iput-object p1, p0, Landroid/net/wifi/WifiAutoConnController$1;->this$0:Landroid/net/wifi/WifiAutoConnController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/wifi/WifiAutoConnController$1;->this$0:Landroid/net/wifi/WifiAutoConnController;

    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController$1;->this$0:Landroid/net/wifi/WifiAutoConnController;

    # getter for: Landroid/net/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiAutoConnController;->access$100(Landroid/net/wifi/WifiAutoConnController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->getDisableWifiAutoConnectSsid(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v1

    # setter for: Landroid/net/wifi/WifiAutoConnController;->mDisableSsidSet:Ljava/util/HashSet;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiAutoConnController;->access$002(Landroid/net/wifi/WifiAutoConnController;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 65
    iget-object v0, p0, Landroid/net/wifi/WifiAutoConnController$1;->this$0:Landroid/net/wifi/WifiAutoConnController;

    # getter for: Landroid/net/wifi/WifiAutoConnController;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v0}, Landroid/net/wifi/WifiAutoConnController;->access$200(Landroid/net/wifi/WifiAutoConnController;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 66
    return-void
.end method
