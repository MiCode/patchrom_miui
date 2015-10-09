.class Landroid/net/wifi/WifiWatchdogStateMachine$3;
.super Landroid/database/ContentObserver;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;->registerForSettingsChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 409
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$3;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 412
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$3;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v1, 0x21006

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    .line 413
    return-void
.end method
