.class Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnlineState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 861
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 865
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 869
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 876
    const/4 v0, 0x0

    .line 878
    :cond_0
    :goto_0
    return v0

    .line 871
    :pswitch_0
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v1, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 872
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 873
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0x21008
        :pswitch_0
    .end packed-switch
.end method
