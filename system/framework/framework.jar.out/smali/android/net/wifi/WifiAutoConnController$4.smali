.class Landroid/net/wifi/WifiAutoConnController$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiAutoConnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiAutoConnController;->registerConnectivityChangedReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiAutoConnController;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiAutoConnController;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Landroid/net/wifi/WifiAutoConnController$4;->this$0:Landroid/net/wifi/WifiAutoConnController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/wifi/WifiAutoConnController$4;->this$0:Landroid/net/wifi/WifiAutoConnController;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiAutoConnController;->processBroadcast(Ljava/lang/String;)V

    .line 111
    return-void
.end method
