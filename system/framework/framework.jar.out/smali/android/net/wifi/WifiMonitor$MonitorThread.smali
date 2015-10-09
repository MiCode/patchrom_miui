.class Landroid/net/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonitorThread"
.end annotation


# instance fields
.field private mRecvErrors:I

.field private mStateMachine:Lcom/android/internal/util/StateMachine;

.field private final mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

.field private final mWifiNative:Landroid/net/wifi/WifiNative;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiNative;Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;)V
    .locals 1
    .param p1, "wifiNative"    # Landroid/net/wifi/WifiNative;
    .param p2, "wifiMonitorSingleton"    # Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    .prologue
    .line 500
    const-string v0, "WifiMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 496
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 501
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 502
    iput-object p2, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    .line 503
    return-void
.end method

.method private dispatchEvent(Ljava/lang/String;)Z
    .locals 11
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x1

    const v9, 0x24007

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 579
    const-string v7, "CTRL-EVENT-"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 580
    const-string v6, "WPA:"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "pre-shared key may be incorrect"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    .line 582
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v6, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 687
    :cond_0
    :goto_0
    return v5

    .line 584
    :cond_1
    const-string v6, "WAPI:"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "pre-shared key may be incorrect"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    .line 586
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v6, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 588
    :cond_2
    const-string v6, "WPS-SUCCESS"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 589
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x24008

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 590
    :cond_3
    const-string v6, "WPS-FAIL"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 591
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleWpsFailEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 592
    :cond_4
    const-string v6, "WPS-OVERLAP-DETECTED"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 593
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x2400a

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 594
    :cond_5
    const-string v6, "WPS-TIMEOUT"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 595
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x2400b

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 596
    :cond_6
    const-string v6, "P2P"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 597
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleP2pEvents(Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_7
    const-string v6, "AP"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 599
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleHostApEvents(Ljava/lang/String;)V

    goto :goto_0

    .line 607
    :cond_8
    # getter for: Landroid/net/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$600()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 608
    .local v2, "eventName":Ljava/lang/String;
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 609
    .local v4, "nameEnd":I
    if-eq v4, v8, :cond_9

    .line 610
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 611
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 619
    const-string v7, "CONNECTED"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 620
    const/4 v0, 0x1

    .line 640
    .local v0, "event":I
    :goto_1
    move-object v1, p1

    .line 641
    .local v1, "eventData":Ljava/lang/String;
    const/4 v7, 0x7

    if-eq v0, v7, :cond_a

    const/4 v7, 0x5

    if-ne v0, v7, :cond_16

    .line 642
    :cond_a
    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v1, v7, v6

    .line 655
    :cond_b
    :goto_2
    if-ne v0, v10, :cond_19

    .line 656
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleSupplicantStateChange(Ljava/lang/String;)V

    .line 686
    :cond_c
    :goto_3
    iput v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    goto/16 :goto_0

    .line 621
    .end local v0    # "event":I
    .end local v1    # "eventData":Ljava/lang/String;
    :cond_d
    const-string v7, "DISCONNECTED"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 622
    const/4 v0, 0x2

    .restart local v0    # "event":I
    goto :goto_1

    .line 623
    .end local v0    # "event":I
    :cond_e
    const-string v7, "STATE-CHANGE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 624
    const/4 v0, 0x3

    .restart local v0    # "event":I
    goto :goto_1

    .line 625
    .end local v0    # "event":I
    :cond_f
    const-string v7, "SCAN-RESULTS"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 626
    const/4 v0, 0x4

    .restart local v0    # "event":I
    goto :goto_1

    .line 627
    .end local v0    # "event":I
    :cond_10
    const-string v7, "LINK-SPEED"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 628
    const/4 v0, 0x5

    .restart local v0    # "event":I
    goto :goto_1

    .line 629
    .end local v0    # "event":I
    :cond_11
    const-string v7, "TERMINATING"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 630
    const/4 v0, 0x6

    .restart local v0    # "event":I
    goto :goto_1

    .line 631
    .end local v0    # "event":I
    :cond_12
    const-string v7, "DRIVER-STATE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 632
    const/4 v0, 0x7

    .restart local v0    # "event":I
    goto :goto_1

    .line 633
    .end local v0    # "event":I
    :cond_13
    const-string v7, "EAP-FAILURE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 634
    const/16 v0, 0x8

    .restart local v0    # "event":I
    goto :goto_1

    .line 635
    .end local v0    # "event":I
    :cond_14
    const-string v7, "ASSOC-REJECT"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 636
    const/16 v0, 0x9

    .restart local v0    # "event":I
    goto :goto_1

    .line 638
    .end local v0    # "event":I
    :cond_15
    const/16 v0, 0xa

    .restart local v0    # "event":I
    goto :goto_1

    .line 643
    .restart local v1    # "eventData":Ljava/lang/String;
    :cond_16
    if-eq v0, v10, :cond_17

    const/16 v7, 0x8

    if-ne v0, v7, :cond_18

    .line 644
    :cond_17
    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 645
    .local v3, "ind":I
    if-eq v3, v8, :cond_b

    .line 646
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 649
    .end local v3    # "ind":I
    :cond_18
    const-string v7, " - "

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 650
    .restart local v3    # "ind":I
    if-eq v3, v8, :cond_b

    .line 651
    add-int/lit8 v7, v3, 0x3

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 657
    .end local v3    # "ind":I
    :cond_19
    const/4 v7, 0x7

    if-ne v0, v7, :cond_1a

    .line 658
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleDriverEvent(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 659
    :cond_1a
    const/4 v7, 0x6

    if-ne v0, v7, :cond_1c

    .line 664
    const-string/jumbo v7, "recv error"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 665
    iget v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mRecvErrors:I

    const/16 v8, 0xa

    if-le v7, v8, :cond_0

    .line 675
    :cond_1b
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x24002

    invoke-virtual {v5, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    move v5, v6

    .line 676
    goto/16 :goto_0

    .line 677
    :cond_1c
    const/16 v6, 0x8

    if-ne v0, v6, :cond_1d

    .line 678
    const-string v6, "EAP authentication failed"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 679
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v6, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 681
    :cond_1d
    const/16 v6, 0x9

    if-ne v0, v6, :cond_1e

    .line 682
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x2402b

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 684
    :cond_1e
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_3
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 691
    if-nez p1, :cond_1

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    const-string v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x2400c

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method private handleHostApEvents(Ljava/lang/String;)V
    .locals 4
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 839
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, "tokens":[Ljava/lang/String;
    aget-object v1, v0, v3

    const-string v2, "AP-STA-CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 842
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2402a

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 844
    :cond_1
    aget-object v1, v0, v3

    const-string v2, "AP-STA-DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 845
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24029

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 5
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 907
    const/4 v0, 0x0

    .line 908
    .local v0, "BSSID":Ljava/lang/String;
    const/4 v3, -0x1

    .line 909
    .local v3, "networkId":I
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v4, :cond_0

    .line 910
    # getter for: Landroid/net/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 911
    .local v2, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_1

    .line 921
    :goto_0
    invoke-virtual {p0, p1, v0, v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V

    .line 923
    .end local v2    # "match":Ljava/util/regex/Matcher;
    :cond_0
    return-void

    .line 914
    .restart local v2    # "match":Ljava/util/regex/Matcher;
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 916
    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 917
    :catch_0
    move-exception v1

    .line 918
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private handleP2pEvents(Ljava/lang/String;)V
    .locals 4
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 785
    const-string v1, "P2P-DEVICE-FOUND"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 786
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24015

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 787
    :cond_1
    const-string v1, "P2P-DEVICE-LOST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 788
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24016

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 789
    :cond_2
    const-string v1, "P2P-FIND-STOPPED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 790
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24025

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 791
    :cond_3
    const-string v1, "P2P-GO-NEG-REQUEST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 792
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24017

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 794
    :cond_4
    const-string v1, "P2P-GO-NEG-SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 795
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24019

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 796
    :cond_5
    const-string v1, "P2P-GO-NEG-FAILURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 797
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401a

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 798
    :cond_6
    const-string v1, "P2P-GROUP-FORMATION-SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 799
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401b

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 800
    :cond_7
    const-string v1, "P2P-GROUP-FORMATION-FAILURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 801
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401c

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 802
    :cond_8
    const-string v1, "P2P-GROUP-STARTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 803
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401d

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 804
    :cond_9
    const-string v1, "P2P-GROUP-REMOVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 805
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401e

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 806
    :cond_a
    const-string v1, "P2P-INVITATION-RECEIVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 807
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401f

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 809
    :cond_b
    const-string v1, "P2P-INVITATION-RESULT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 810
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24020

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 811
    :cond_c
    const-string v1, "P2P-PROV-DISC-PBC-REQ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 812
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24021

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 814
    :cond_d
    const-string v1, "P2P-PROV-DISC-PBC-RESP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 815
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24022

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 817
    :cond_e
    const-string v1, "P2P-PROV-DISC-ENTER-PIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 818
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24023

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 820
    :cond_f
    const-string v1, "P2P-PROV-DISC-SHOW-PIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 821
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24024

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 823
    :cond_10
    const-string v1, "P2P-PROV-DISC-FAILURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 824
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24027

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 825
    :cond_11
    const-string v1, "P2P-SERV-DISC-RESP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 826
    invoke-static {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->newInstance(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 827
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    if-eqz v0, :cond_12

    .line 828
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24026

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 830
    :cond_12
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null service resp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .locals 20
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 855
    const/16 v16, 0x0

    .line 856
    .local v16, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const-string v17, "SSID="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 857
    .local v7, "index":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_0

    .line 858
    add-int/lit8 v17, v7, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v16

    .line 861
    :cond_0
    const-string v17, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 863
    .local v4, "dataTokens":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 864
    .local v2, "BSSID":Ljava/lang/String;
    const/4 v10, -0x1

    .line 865
    .local v10, "networkId":I
    const/4 v11, -0x1

    .line 866
    .local v11, "newState":I
    move-object v3, v4

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_5

    aget-object v14, v3, v6

    .line 867
    .local v14, "token":Ljava/lang/String;
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 868
    .local v9, "nameValue":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 866
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 872
    :cond_2
    const/16 v17, 0x0

    aget-object v17, v9, v17

    const-string v18, "BSSID"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 873
    const/16 v17, 0x1

    aget-object v2, v9, v17

    .line 874
    goto :goto_1

    .line 879
    :cond_3
    const/16 v17, 0x1

    :try_start_0
    aget-object v17, v9, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 884
    .local v15, "value":I
    const/16 v17, 0x0

    aget-object v17, v9, v17

    const-string v18, "id"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 885
    move v10, v15

    goto :goto_1

    .line 880
    .end local v15    # "value":I
    :catch_0
    move-exception v5

    .line 881
    .local v5, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 886
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "value":I
    :cond_4
    const/16 v17, 0x0

    aget-object v17, v9, v17

    const-string/jumbo v18, "state"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 887
    move v11, v15

    goto :goto_1

    .line 891
    .end local v9    # "nameValue":[Ljava/lang/String;
    .end local v14    # "token":Ljava/lang/String;
    .end local v15    # "value":I
    :cond_5
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_6

    .line 904
    .end local v3    # "arr$":[Ljava/lang/String;
    :goto_2
    return-void

    .line 893
    .restart local v3    # "arr$":[Ljava/lang/String;
    :cond_6
    sget-object v12, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 894
    .local v12, "newSupplicantState":Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v3

    .local v3, "arr$":[Landroid/net/wifi/SupplicantState;
    array-length v8, v3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v8, :cond_7

    aget-object v13, v3, v6

    .line 895
    .local v13, "state":Landroid/net/wifi/SupplicantState;
    invoke-virtual {v13}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v11, :cond_9

    .line 896
    move-object v12, v13

    .line 900
    .end local v13    # "state":Landroid/net/wifi/SupplicantState;
    :cond_7
    sget-object v17, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    if-ne v12, v0, :cond_8

    .line 901
    const-string v17, "WifiMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid supplicant state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v10, v1, v2, v12}, Landroid/net/wifi/WifiMonitor$MonitorThread;->notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    goto :goto_2

    .line 894
    .restart local v13    # "state":Landroid/net/wifi/SupplicantState;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method private handleWpsFailEvent(Ljava/lang/String;)V
    .locals 9
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const v8, 0x24009

    const/4 v7, 0x0

    .line 725
    const-string v4, "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 726
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 727
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 728
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, "cfgErr":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 731
    .local v3, "reason":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 732
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 743
    :cond_0
    if-eqz v0, :cond_1

    .line 744
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 757
    .end local v0    # "cfgErr":Ljava/lang/String;
    .end local v3    # "reason":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v5, v8, v7, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 759
    :goto_0
    return-void

    .line 734
    .restart local v0    # "cfgErr":Ljava/lang/String;
    .restart local v3    # "reason":Ljava/lang/String;
    :pswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x5

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 738
    :pswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x4

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 746
    :sswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x6

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 750
    :sswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x3

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 732
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 744
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    .locals 8
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 763
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 764
    .local v1, "err":Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 765
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    if-ge v4, v7, :cond_0

    move-object v4, v1

    .line 778
    :goto_0
    return-object v4

    .line 766
    :cond_0
    aget-object v4, v3, v6

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 767
    .local v2, "nameValue":[Ljava/lang/String;
    array-length v4, v2

    if-eq v4, v7, :cond_1

    move-object v4, v1

    goto :goto_0

    .line 770
    :cond_1
    aget-object v4, v2, v6

    const-string v5, "FREQ_CONFLICT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 771
    sget-object v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0

    .line 774
    :cond_2
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->valueOf(I)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v4, v1

    .line 778
    goto :goto_0

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method handleEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "remainder"    # Ljava/lang/String;

    .prologue
    .line 706
    packed-switch p1, :pswitch_data_0

    .line 722
    :goto_0
    :pswitch_0
    return-void

    .line 708
    :pswitch_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 712
    :pswitch_2
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 716
    :pswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x24005

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 706
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .locals 4
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "netId"    # I

    .prologue
    const/4 v3, 0x0

    .line 936
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 937
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24003

    invoke-virtual {v1, v2, p3, v3, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 939
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 945
    :goto_0
    return-void

    .line 941
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24004

    invoke-virtual {v1, v2, p3, v3, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 943
    .restart local v0    # "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 4
    .param p1, "networkId"    # I
    .param p2, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p3, "BSSID"    # Ljava/lang/String;
    .param p4, "newState"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 957
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24006

    new-instance v3, Landroid/net/wifi/StateChangeResult;

    invoke-direct {v3, p1, p2, p3, p4}, Landroid/net/wifi/StateChangeResult;-><init>(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 959
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    .line 508
    :cond_0
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v7}, Landroid/net/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, "eventStr":Ljava/lang/String;
    const-string/jumbo v3, "p2p0"

    .line 516
    .local v3, "iface":Ljava/lang/String;
    const/4 v5, 0x0

    .line 517
    .local v5, "m":Landroid/net/wifi/WifiMonitor;
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 519
    const-string v7, "IFNAME="

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 520
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 521
    .local v6, "space":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 522
    const/4 v7, 0x7

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 523
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v3}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$300(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    .line 524
    if-nez v5, :cond_1

    const-string/jumbo v7, "p2p-"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 528
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    const-string/jumbo v8, "p2p0"

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v8}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$300(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    .line 530
    :cond_1
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 537
    .end local v6    # "space":I
    :cond_2
    :goto_0
    if-eqz v5, :cond_3

    .line 538
    # getter for: Landroid/net/wifi/WifiMonitor;->mMonitoring:Z
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 539
    # getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 547
    :cond_3
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    if-eqz v7, :cond_5

    .line 548
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->dispatchEvent(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 574
    :goto_1
    return-void

    .line 534
    :cond_4
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    const-string/jumbo v8, "p2p0"

    # invokes: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->getMonitor(Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;
    invoke-static {v7, v8}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$300(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Ljava/lang/String;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    goto :goto_0

    .line 553
    :cond_5
    const/4 v0, 0x0

    .line 554
    .local v0, "done":Z
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    # getter for: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mIfaceMap:Ljava/util/HashMap;
    invoke-static {v7}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$400(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 556
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;>;"
    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 557
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 558
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "m":Landroid/net/wifi/WifiMonitor;
    check-cast v5, Landroid/net/wifi/WifiMonitor;

    .line 559
    .restart local v5    # "m":Landroid/net/wifi/WifiMonitor;
    # getter for: Landroid/net/wifi/WifiMonitor;->mWifiStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 560
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiMonitor$MonitorThread;->dispatchEvent(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 561
    const/4 v0, 0x1

    goto :goto_2

    .line 565
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiMonitor;>;"
    :cond_7
    if-eqz v0, :cond_0

    .line 569
    iget-object v7, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->mWifiMonitorSingleton:Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;

    const/4 v8, 0x0

    # setter for: Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->mConnected:Z
    invoke-static {v7, v8}, Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;->access$502(Landroid/net/wifi/WifiMonitor$WifiMonitorSingleton;Z)Z

    goto :goto_1
.end method
