.class Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifyingLinkState"
.end annotation


# instance fields
.field private mSampleCount:I

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 622
    iput v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    .line 623
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->newLinkDetected()V

    .line 624
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v2, 0x2100b

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2504(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 625
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 629
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 681
    :goto_0
    return v4

    .line 631
    :sswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 632
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 633
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$900(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    :cond_0
    :goto_1
    :sswitch_1
    move v4, v5

    .line 681
    goto :goto_0

    .line 638
    :sswitch_2
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v6

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 642
    :sswitch_3
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2500(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 643
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2700(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v6

    const v7, 0x25014

    invoke-virtual {v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 644
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v8, 0x2100b

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2504(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v9

    invoke-virtual {v7, v8, v9, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v7, 0x3e8

    invoke-virtual {v6, v4, v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_1

    .line 650
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/RssiPacketCountInfo;

    .line 651
    .local v0, "info":Landroid/net/wifi/RssiPacketCountInfo;
    iget v1, v0, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 654
    .local v1, "rssi":I
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v6

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$2800(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 655
    .local v2, "time":J
    cmp-long v6, v2, v10

    if-gtz v6, :cond_1

    .line 658
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$900(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    goto :goto_1

    .line 660
    :cond_1
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v6

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v6

    if-lt v1, v6, :cond_2

    .line 661
    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v6

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$3000(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v6

    if-lt v4, v6, :cond_0

    .line 664
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v4

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v4, v10, v11}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$2802(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 665
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$900(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    goto/16 :goto_1

    .line 668
    :cond_2
    iput v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    goto/16 :goto_1

    .line 629
    nop

    :sswitch_data_0
    .sparse-switch
        0x21006 -> :sswitch_0
        0x21007 -> :sswitch_2
        0x2100b -> :sswitch_3
        0x25015 -> :sswitch_4
        0x25016 -> :sswitch_1
    .end sparse-switch
.end method
