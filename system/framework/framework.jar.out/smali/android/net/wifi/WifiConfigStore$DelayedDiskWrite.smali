.class Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedDiskWrite"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DelayedDiskWrite"

.field private static sDiskWriteHandler:Landroid/os/Handler;

.field private static sDiskWriteHandlerThread:Landroid/os/HandlerThread;

.field private static sWriteSequence:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 809
    const/4 v0, 0x0

    sput v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 804
    invoke-static {p0}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->onWriteCalled(Ljava/util/List;)V

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 955
    const-string v0, "DelayedDiskWrite"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    return-void
.end method

.method private static onWriteCalled(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 833
    .local p0, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v10, 0x0

    .line 835
    .local v10, "out":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v11, Ljava/io/DataOutputStream;

    new-instance v16, Ljava/io/BufferedOutputStream;

    new-instance v17, Ljava/io/FileOutputStream;

    # getter for: Landroid/net/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->access$100()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v16 .. v17}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 838
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .local v11, "out":Ljava/io/DataOutputStream;
    const/16 v16, 0x2

    :try_start_1
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 840
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 841
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v15, 0x0

    .line 844
    .local v15, "writeToFile":Z
    :try_start_2
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 845
    .local v9, "linkProperties":Landroid/net/LinkProperties;
    sget-object v16, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$IpAssignment:[I

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 886
    const-string v16, "Ignore invalid ip assignment while writing"

    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->loge(Ljava/lang/String;)V

    .line 890
    :goto_1
    :pswitch_0
    sget-object v16, Landroid/net/wifi/WifiConfigStore$1;->$SwitchMap$android$net$wifi$WifiConfiguration$ProxySettings:[I

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_1

    .line 921
    const-string v16, "Ignthisore invalid proxy settings while writing"

    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->loge(Ljava/lang/String;)V

    .line 924
    :goto_2
    :pswitch_1
    if-eqz v15, :cond_0

    .line 925
    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 926
    # invokes: Landroid/net/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I
    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->access$200(Landroid/net/wifi/WifiConfiguration;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 931
    .end local v9    # "linkProperties":Landroid/net/LinkProperties;
    :cond_0
    :goto_3
    :try_start_3
    const-string v16, "eos"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 934
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v15    # "writeToFile":Z
    :catch_0
    move-exception v3

    move-object v10, v11

    .line 935
    .end local v11    # "out":Ljava/io/DataOutputStream;
    .local v3, "e":Ljava/io/IOException;
    .restart local v10    # "out":Ljava/io/DataOutputStream;
    :goto_4
    :try_start_4
    const-string v16, "Error writing data file"

    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 937
    if-eqz v10, :cond_1

    .line 939
    :try_start_5
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 944
    :cond_1
    :goto_5
    const-class v17, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;

    monitor-enter v17

    .line 945
    :try_start_6
    sget v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    add-int/lit8 v16, v16, -0x1

    sput v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    if-nez v16, :cond_2

    .line 946
    sget-object v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual/range {v16 .. v16}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/Looper;->quit()V

    .line 947
    const/16 v16, 0x0

    sput-object v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    .line 948
    const/16 v16, 0x0

    sput-object v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 950
    :cond_2
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 952
    .end local v3    # "e":Ljava/io/IOException;
    :goto_6
    return-void

    .line 847
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v9    # "linkProperties":Landroid/net/LinkProperties;
    .restart local v11    # "out":Ljava/io/DataOutputStream;
    .restart local v15    # "writeToFile":Z
    :pswitch_2
    :try_start_7
    const-string v16, "ipAssignment"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 848
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 849
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkAddress;

    .line 850
    .local v8, "linkAddr":Landroid/net/LinkAddress;
    const-string v16, "linkAddress"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 851
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 852
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_7

    .line 928
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "linkAddr":Landroid/net/LinkAddress;
    .end local v9    # "linkProperties":Landroid/net/LinkProperties;
    :catch_1
    move-exception v3

    .line 929
    .local v3, "e":Ljava/lang/NullPointerException;
    :try_start_8
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failure in writing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->loge(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    .line 937
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .end local v15    # "writeToFile":Z
    :catchall_0
    move-exception v16

    move-object v10, v11

    .end local v11    # "out":Ljava/io/DataOutputStream;
    .restart local v10    # "out":Ljava/io/DataOutputStream;
    :goto_8
    if-eqz v10, :cond_3

    .line 939
    :try_start_9
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 944
    :cond_3
    :goto_9
    const-class v17, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;

    monitor-enter v17

    .line 945
    :try_start_a
    sget v18, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    add-int/lit8 v18, v18, -0x1

    sput v18, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    if-nez v18, :cond_4

    .line 946
    sget-object v18, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual/range {v18 .. v18}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/Looper;->quit()V

    .line 947
    const/16 v18, 0x0

    sput-object v18, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    .line 948
    const/16 v18, 0x0

    sput-object v18, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 950
    :cond_4
    monitor-exit v17
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v16

    .line 854
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v9    # "linkProperties":Landroid/net/LinkProperties;
    .restart local v11    # "out":Ljava/io/DataOutputStream;
    .restart local v15    # "writeToFile":Z
    :cond_5
    :try_start_b
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/RouteInfo;

    .line 855
    .local v14, "route":Landroid/net/RouteInfo;
    const-string v16, "gateway"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 856
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v2

    .line 857
    .local v2, "dest":Landroid/net/LinkAddress;
    if-eqz v2, :cond_6

    .line 858
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 859
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 860
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 864
    :goto_b
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v16

    if-eqz v16, :cond_7

    .line 865
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 866
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_a

    .line 862
    :cond_6
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_b

    .line 868
    :cond_7
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_a

    .line 871
    .end local v2    # "dest":Landroid/net/LinkAddress;
    .end local v14    # "route":Landroid/net/RouteInfo;
    :cond_8
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 872
    .local v7, "inetAddr":Ljava/net/InetAddress;
    const-string v16, "dns"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 873
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_c

    .line 875
    .end local v7    # "inetAddr":Ljava/net/InetAddress;
    :cond_9
    const/4 v15, 0x1

    .line 876
    goto/16 :goto_1

    .line 878
    .end local v6    # "i$":Ljava/util/Iterator;
    :pswitch_3
    const-string v16, "ipAssignment"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 879
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 880
    const/4 v15, 0x1

    .line 881
    goto/16 :goto_1

    .line 892
    :pswitch_4
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v13

    .line 893
    .local v13, "proxyProperties":Landroid/net/ProxyProperties;
    invoke-virtual {v13}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v4

    .line 894
    .local v4, "exclusionList":Ljava/lang/String;
    const-string/jumbo v16, "proxySettings"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 895
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 896
    const-string/jumbo v16, "proxyHost"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 897
    invoke-virtual {v13}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 898
    const-string/jumbo v16, "proxyPort"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 899
    invoke-virtual {v13}, Landroid/net/ProxyProperties;->getPort()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 900
    const-string v16, "exclusionList"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 901
    invoke-virtual {v11, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 902
    const/4 v15, 0x1

    .line 903
    goto/16 :goto_2

    .line 905
    .end local v4    # "exclusionList":Ljava/lang/String;
    .end local v13    # "proxyProperties":Landroid/net/ProxyProperties;
    :pswitch_5
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v12

    .line 906
    .local v12, "proxyPacProperties":Landroid/net/ProxyProperties;
    const-string/jumbo v16, "proxySettings"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 907
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 908
    const-string/jumbo v16, "proxyPac"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 909
    invoke-virtual {v12}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 910
    const/4 v15, 0x1

    .line 911
    goto/16 :goto_2

    .line 913
    .end local v12    # "proxyPacProperties":Landroid/net/ProxyProperties;
    :pswitch_6
    const-string/jumbo v16, "proxySettings"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 914
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 915
    const/4 v15, 0x1

    .line 916
    goto/16 :goto_2

    .line 937
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "linkProperties":Landroid/net/LinkProperties;
    .end local v15    # "writeToFile":Z
    :cond_a
    if-eqz v11, :cond_b

    .line 939
    :try_start_c
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 944
    :cond_b
    :goto_d
    const-class v17, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;

    monitor-enter v17

    .line 945
    :try_start_d
    sget v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    add-int/lit8 v16, v16, -0x1

    sput v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    if-nez v16, :cond_c

    .line 946
    sget-object v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual/range {v16 .. v16}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/Looper;->quit()V

    .line 947
    const/16 v16, 0x0

    sput-object v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    .line 948
    const/16 v16, 0x0

    sput-object v16, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 950
    :cond_c
    monitor-exit v17

    move-object v10, v11

    .line 951
    .end local v11    # "out":Ljava/io/DataOutputStream;
    .restart local v10    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_6

    .line 950
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .restart local v11    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v16

    monitor-exit v17
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v16

    .end local v11    # "out":Ljava/io/DataOutputStream;
    .local v3, "e":Ljava/io/IOException;
    .restart local v10    # "out":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v16

    :try_start_e
    monitor-exit v17
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v16

    .end local v3    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v16

    :try_start_f
    monitor-exit v17
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v16

    .line 940
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .restart local v11    # "out":Ljava/io/DataOutputStream;
    :catch_2
    move-exception v16

    goto :goto_d

    .end local v11    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "e":Ljava/io/IOException;
    .restart local v10    # "out":Ljava/io/DataOutputStream;
    :catch_3
    move-exception v16

    goto/16 :goto_5

    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v17

    goto/16 :goto_9

    .line 937
    :catchall_4
    move-exception v16

    goto/16 :goto_8

    .line 934
    :catch_5
    move-exception v3

    goto/16 :goto_4

    .line 845
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 890
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method static write(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 815
    .local p0, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-class v1, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;

    monitor-enter v1

    .line 816
    :try_start_0
    sget v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sWriteSequence:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 817
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "WifiConfigThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 818
    sget-object v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 819
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    .line 821
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    sget-object v0, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite;->sDiskWriteHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiConfigStore$DelayedDiskWrite$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 829
    return-void

    .line 821
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
