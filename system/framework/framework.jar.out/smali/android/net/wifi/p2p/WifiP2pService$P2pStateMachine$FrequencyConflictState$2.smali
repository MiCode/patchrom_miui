.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState$2;
.super Ljava/lang/Object;
.source "WifiP2pService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->notifyFrequencyConflict()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;)V
    .locals 0

    .prologue
    .line 1626
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState$2;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1629
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState$2;->this$2:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v1, 0x23005

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 1630
    return-void
.end method
