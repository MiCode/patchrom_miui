.class Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LinkMonitoringState"
.end annotation


# instance fields
.field private mLastRssi:I

.field private mLastTxBad:I

.field private mLastTxGood:I

.field private mSampleCount:I

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 761
    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mSampleCount:I

    .line 762
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v1, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    invoke-direct {v1, v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;D)V

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3702(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .line 763
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v2, 0x2100b

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2504(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 764
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 768
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_0

    .line 852
    const/4 v13, 0x0

    .line 854
    :goto_0
    return v13

    .line 770
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I
    invoke-static {v14, v15}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    move-result v14

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$102(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 771
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v13

    const/4 v14, 0x4

    if-gt v13, v14, :cond_1

    .line 854
    :cond_0
    :goto_1
    :sswitch_1
    const/4 v13, 0x1

    goto :goto_0

    .line 775
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static {v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3800(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 780
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
    invoke-static {v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 784
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 785
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static {v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v14

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4000(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 786
    :cond_2
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2500(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v14

    if-ne v13, v14, :cond_0

    .line 787
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2700(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x25014

    invoke-virtual {v13, v14}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 788
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v15, 0x2100b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2504(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v15, 0x3e8

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_1

    .line 794
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/RssiPacketCountInfo;

    .line 795
    .local v4, "info":Landroid/net/wifi/RssiPacketCountInfo;
    iget v10, v4, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 796
    .local v10, "rssi":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastRssi:I

    add-int/2addr v13, v10

    div-int/lit8 v7, v13, 0x2

    .line 797
    .local v7, "mrssi":I
    iget v11, v4, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    .line 798
    .local v11, "txbad":I
    iget v12, v4, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    .line 803
    .local v12, "txgood":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 804
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v13

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$4100(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v13

    sub-long v13, v8, v13

    const-wide/16 v15, 0x7d0

    cmp-long v13, v13, v15

    if-gez v13, :cond_3

    .line 807
    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxBad:I

    sub-int v1, v11, v13

    .line 808
    .local v1, "dbad":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxGood:I

    sub-int v2, v12, v13

    .line 809
    .local v2, "dgood":I
    add-int v3, v1, v2

    .line 811
    .local v3, "dtotal":I
    if-lez v3, :cond_3

    .line 813
    int-to-double v13, v1

    int-to-double v15, v3

    div-double v5, v13, v15

    .line 815
    .local v5, "loss":D
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v13

    invoke-virtual {v13, v5, v6, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    .line 824
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v13

    invoke-virtual {v13, v7, v5, v6, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->updateLoss(IDI)V

    .line 827
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v13

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$4200(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v13

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    cmpl-double v13, v13, v15

    if-lez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v13

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$4300(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    cmpl-double v13, v13, v15

    if-lez v13, :cond_4

    .line 829
    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mSampleCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mSampleCount:I

    const/4 v14, 0x3

    if-lt v13, v14, :cond_3

    .line 830
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 831
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V
    invoke-static {v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$900(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    .line 832
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # ++operator for: Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2504(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    .line 840
    .end local v1    # "dbad":I
    .end local v2    # "dgood":I
    .end local v3    # "dtotal":I
    .end local v5    # "loss":D
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v13

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J
    invoke-static {v13, v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$4102(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 841
    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxBad:I

    .line 842
    move-object/from16 v0, p0

    iput v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastTxGood:I

    .line 843
    move-object/from16 v0, p0

    iput v10, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastRssi:I

    goto/16 :goto_1

    .line 835
    .restart local v1    # "dbad":I
    .restart local v2    # "dgood":I
    .restart local v3    # "dtotal":I
    .restart local v5    # "loss":D
    :cond_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mSampleCount:I

    goto :goto_2

    .line 768
    :sswitch_data_0
    .sparse-switch
        0x21003 -> :sswitch_0
        0x21007 -> :sswitch_2
        0x2100b -> :sswitch_3
        0x25015 -> :sswitch_4
        0x25016 -> :sswitch_1
    .end sparse-switch
.end method
