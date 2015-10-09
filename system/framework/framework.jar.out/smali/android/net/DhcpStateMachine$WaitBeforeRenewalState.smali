.class Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;
.super Lcom/android/internal/util/State;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitBeforeRenewalState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/DhcpStateMachine;


# direct methods
.method constructor <init>(Landroid/net/DhcpStateMachine;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;->this$0:Landroid/net/DhcpStateMachine;

    # getter for: Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/DhcpStateMachine;->access$000(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 346
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 317
    const/4 v0, 0x1

    .line 319
    .local v0, "retValue":Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 338
    const/4 v0, 0x0

    .line 341
    :goto_0
    :sswitch_0
    return v0

    .line 321
    :sswitch_1
    iget-object v1, p0, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;->this$0:Landroid/net/DhcpStateMachine;

    # getter for: Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->access$1600(Landroid/net/DhcpStateMachine;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;->this$0:Landroid/net/DhcpStateMachine;

    # getter for: Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->access$1500(Landroid/net/DhcpStateMachine;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 322
    iget-object v1, p0, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;->this$0:Landroid/net/DhcpStateMachine;

    # getter for: Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->access$300(Landroid/net/DhcpStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    const-string v1, "DhcpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to stop Dhcp on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;->this$0:Landroid/net/DhcpStateMachine;

    # getter for: Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/DhcpStateMachine;->access$300(Landroid/net/DhcpStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    iget-object v1, p0, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;->this$0:Landroid/net/DhcpStateMachine;

    # getter for: Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->access$1200(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->access$2100(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 328
    :sswitch_2
    iget-object v1, p0, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;->this$0:Landroid/net/DhcpStateMachine;

    sget-object v2, Landroid/net/DhcpStateMachine$DhcpAction;->RENEW:Landroid/net/DhcpStateMachine$DhcpAction;

    # invokes: Landroid/net/DhcpStateMachine;->runDhcp(Landroid/net/DhcpStateMachine$DhcpAction;)Z
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->access$800(Landroid/net/DhcpStateMachine;Landroid/net/DhcpStateMachine$DhcpAction;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;->this$0:Landroid/net/DhcpStateMachine;

    # getter for: Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->access$900(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->access$2200(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 331
    :cond_1
    iget-object v1, p0, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;->this$0:Landroid/net/DhcpStateMachine;

    # getter for: Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->access$1200(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->access$2300(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 319
    nop

    :sswitch_data_0
    .sparse-switch
        0x30001 -> :sswitch_0
        0x30002 -> :sswitch_1
        0x30007 -> :sswitch_2
    .end sparse-switch
.end method
