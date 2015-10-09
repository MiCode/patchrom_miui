.class Landroid/net/wifi/WifiAutoConnController$2;
.super Landroid/database/ContentObserver;
.source "WifiAutoConnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiAutoConnController;->registerConnectTypeChangedObserver()V
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
    .line 76
    iput-object p1, p0, Landroid/net/wifi/WifiAutoConnController$2;->this$0:Landroid/net/wifi/WifiAutoConnController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 79
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController$2;->this$0:Landroid/net/wifi/WifiAutoConnController;

    iget-object v2, p0, Landroid/net/wifi/WifiAutoConnController$2;->this$0:Landroid/net/wifi/WifiAutoConnController;

    # getter for: Landroid/net/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/WifiAutoConnController;->access$100(Landroid/net/wifi/WifiAutoConnController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiAutoConnController;->loadConnectType(Landroid/content/Context;)I

    move-result v0

    .line 80
    .local v0, "connectType":I
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController$2;->this$0:Landroid/net/wifi/WifiAutoConnController;

    # getter for: Landroid/net/wifi/WifiAutoConnController;->mConnectType:I
    invoke-static {v1}, Landroid/net/wifi/WifiAutoConnController;->access$300(Landroid/net/wifi/WifiAutoConnController;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController$2;->this$0:Landroid/net/wifi/WifiAutoConnController;

    # setter for: Landroid/net/wifi/WifiAutoConnController;->mConnectType:I
    invoke-static {v1, v0}, Landroid/net/wifi/WifiAutoConnController;->access$302(Landroid/net/wifi/WifiAutoConnController;I)I

    .line 82
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController$2;->this$0:Landroid/net/wifi/WifiAutoConnController;

    invoke-virtual {v1}, Landroid/net/wifi/WifiAutoConnController;->updateWifiEnableState()V

    .line 84
    :cond_0
    return-void
.end method
