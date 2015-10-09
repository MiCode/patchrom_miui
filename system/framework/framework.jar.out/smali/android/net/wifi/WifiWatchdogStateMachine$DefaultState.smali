.class Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 457
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 461
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 485
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$400(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 488
    :goto_0
    :sswitch_0
    return v3

    .line 463
    :sswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    goto :goto_0

    .line 467
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    move-result v1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$102(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    goto :goto_0

    .line 479
    :sswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v0, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    goto :goto_0

    .line 482
    :sswitch_4
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v1, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    goto :goto_0

    .line 461
    :sswitch_data_0
    .sparse-switch
        0x21002 -> :sswitch_0
        0x21003 -> :sswitch_2
        0x21004 -> :sswitch_0
        0x21005 -> :sswitch_0
        0x21006 -> :sswitch_1
        0x21007 -> :sswitch_0
        0x21008 -> :sswitch_3
        0x21009 -> :sswitch_4
        0x2100b -> :sswitch_0
        0x25015 -> :sswitch_0
        0x25016 -> :sswitch_0
    .end sparse-switch
.end method
