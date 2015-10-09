.class Landroid/net/DhcpStateMachine$StoppedState;
.super Lcom/android/internal/util/State;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoppedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/DhcpStateMachine;


# direct methods
.method constructor <init>(Landroid/net/DhcpStateMachine;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 211
    const/4 v0, 0x1

    .line 213
    .local v0, "retValue":Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 229
    const/4 v0, 0x0

    .line 232
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 215
    :pswitch_1
    iget-object v1, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    # getter for: Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->access$400(Landroid/net/DhcpStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    # getter for: Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/DhcpStateMachine;->access$500(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x30004

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 218
    iget-object v1, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    # getter for: Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->access$600(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->access$700(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 220
    :cond_1
    iget-object v1, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    sget-object v2, Landroid/net/DhcpStateMachine$DhcpAction;->START:Landroid/net/DhcpStateMachine$DhcpAction;

    # invokes: Landroid/net/DhcpStateMachine;->runDhcp(Landroid/net/DhcpStateMachine$DhcpAction;)Z
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->access$800(Landroid/net/DhcpStateMachine;Landroid/net/DhcpStateMachine$DhcpAction;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$StoppedState;->this$0:Landroid/net/DhcpStateMachine;

    # getter for: Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/DhcpStateMachine;->access$900(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->access$1000(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x30001
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
