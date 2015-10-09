.class Landroid/net/wifi/WifiStateMachine$InterfaceObserver;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterfaceObserver"
.end annotation


# instance fields
.field private mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p2, "wifiStateMachine"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 241
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    .line 242
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 243
    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 244
    return-void
.end method


# virtual methods
.method public addressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "scope"    # I

    .prologue
    .line 259
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x2008d

    new-instance v2, Landroid/net/LinkAddress;

    invoke-direct {v2, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 266
    :cond_0
    return-void
.end method

.method public addressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "scope"    # I

    .prologue
    .line 248
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x2008c

    new-instance v2, Landroid/net/LinkAddress;

    invoke-direct {v2, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 255
    :cond_0
    return-void
.end method
