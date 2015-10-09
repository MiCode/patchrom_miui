.class Landroid/net/wifi/WifiApConfigStore$ActiveState$1;
.super Ljava/lang/Object;
.source "WifiApConfigStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiApConfigStore$ActiveState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/WifiApConfigStore$ActiveState;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiApConfigStore$ActiveState;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Landroid/net/wifi/WifiApConfigStore$ActiveState$1;->this$1:Landroid/net/wifi/WifiApConfigStore$ActiveState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore$ActiveState$1;->this$1:Landroid/net/wifi/WifiApConfigStore$ActiveState;

    iget-object v0, v0, Landroid/net/wifi/WifiApConfigStore$ActiveState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    iget-object v1, p0, Landroid/net/wifi/WifiApConfigStore$ActiveState$1;->this$1:Landroid/net/wifi/WifiApConfigStore$ActiveState;

    iget-object v1, v1, Landroid/net/wifi/WifiApConfigStore$ActiveState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    # getter for: Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Landroid/net/wifi/WifiApConfigStore;->access$000(Landroid/net/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiApConfigStore;->writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiApConfigStore;->access$400(Landroid/net/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)V

    .line 118
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore$ActiveState$1;->this$1:Landroid/net/wifi/WifiApConfigStore$ActiveState;

    iget-object v0, v0, Landroid/net/wifi/WifiApConfigStore$ActiveState;->this$0:Landroid/net/wifi/WifiApConfigStore;

    const v1, 0x2001a

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiApConfigStore;->sendMessage(I)V

    .line 119
    return-void
.end method
