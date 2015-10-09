.class Landroid/net/wifi/WifiAutoConnController$3;
.super Landroid/database/ContentObserver;
.source "WifiAutoConnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiAutoConnController;->registerSelectSsidTypeChangedObserver()V
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
    .line 91
    iput-object p1, p0, Landroid/net/wifi/WifiAutoConnController$3;->this$0:Landroid/net/wifi/WifiAutoConnController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 94
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController$3;->this$0:Landroid/net/wifi/WifiAutoConnController;

    iget-object v2, p0, Landroid/net/wifi/WifiAutoConnController$3;->this$0:Landroid/net/wifi/WifiAutoConnController;

    # getter for: Landroid/net/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/WifiAutoConnController;->access$100(Landroid/net/wifi/WifiAutoConnController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiAutoConnController;->loadSelectSsidType(Landroid/content/Context;)I

    move-result v0

    .line 95
    .local v0, "selectSsidType":I
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController$3;->this$0:Landroid/net/wifi/WifiAutoConnController;

    # getter for: Landroid/net/wifi/WifiAutoConnController;->mSelectSsidType:I
    invoke-static {v1}, Landroid/net/wifi/WifiAutoConnController;->access$400(Landroid/net/wifi/WifiAutoConnController;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController$3;->this$0:Landroid/net/wifi/WifiAutoConnController;

    # setter for: Landroid/net/wifi/WifiAutoConnController;->mSelectSsidType:I
    invoke-static {v1, v0}, Landroid/net/wifi/WifiAutoConnController;->access$402(Landroid/net/wifi/WifiAutoConnController;I)I

    .line 97
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController$3;->this$0:Landroid/net/wifi/WifiAutoConnController;

    invoke-virtual {v1}, Landroid/net/wifi/WifiAutoConnController;->updateWifiEnableState()V

    .line 99
    :cond_0
    return-void
.end method
