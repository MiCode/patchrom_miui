.class Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BssidStatistics"
.end annotation


# instance fields
.field private final mBssid:Ljava/lang/String;

.field private mBssidAvoidTimeMax:J

.field private mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

.field private mEntriesSize:I

.field private mGoodLinkTargetCount:I

.field private mGoodLinkTargetIndex:I

.field private mGoodLinkTargetRssi:I

.field private mLastTimeGood:J

.field private mLastTimePoor:J

.field private mLastTimeSample:J

.field private mRssiBase:I

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 5
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1054
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1055
    iput-object p2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;

    .line 1056
    const/16 v1, -0x69

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    .line 1057
    const/16 v1, 0x3d

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    .line 1058
    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    new-array v1, v1, [Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .line 1059
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v0, v1, :cond_0

    .line 1060
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    new-instance v2, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    const-wide v3, 0x3fb999999999999aL    # 0.1

    invoke-direct {v2, p1, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;D)V

    aput-object v2, v1, v0

    .line 1059
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1061
    :cond_0
    return-void
.end method

.method static synthetic access$2800(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)J
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    .line 1024
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    return-wide v0
.end method

.method static synthetic access$2802(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    .line 1024
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    return-wide p1
.end method

.method static synthetic access$2900(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    .line 1024
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    return v0
.end method

.method static synthetic access$3000(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    .line 1024
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    return v0
.end method

.method static synthetic access$4100(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)J
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    .line 1024
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J

    return-wide v0
.end method

.method static synthetic access$4102(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    .line 1024
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J

    return-wide p1
.end method

.method static synthetic access$4500(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    .line 1024
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4602(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    .line 1024
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J

    return-wide p1
.end method

.method static synthetic access$4702(Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    .line 1024
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J

    return-wide p1
.end method


# virtual methods
.method public findRssiTarget(IID)I
    .locals 10
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "threshold"    # D

    .prologue
    .line 1174
    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int/2addr p1, v6

    .line 1175
    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int/2addr p2, v6

    .line 1176
    const/4 v1, 0x0

    .line 1177
    .local v1, "emptyCount":I
    if-ge p1, p2, :cond_1

    const/4 v0, 0x1

    .line 1178
    .local v0, "d":I
    :goto_0
    move v2, p1

    .local v2, "i":I
    :goto_1
    if-eq v2, p2, :cond_4

    .line 1180
    if-ltz v2, :cond_2

    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v2, v6, :cond_2

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v6, v6, v2

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$4300(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    .line 1181
    const/4 v1, 0x0

    .line 1182
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v6, v6, v2

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$4200(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v6

    cmpg-double v6, v6, p3

    if-gez v6, :cond_3

    .line 1184
    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v5, v6, v2

    .line 1209
    :cond_0
    :goto_2
    return v5

    .line 1177
    .end local v0    # "d":I
    .end local v2    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 1194
    .restart local v0    # "d":I
    .restart local v2    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x3

    if-lt v1, v6, :cond_3

    .line 1196
    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v5, v6, v2

    .line 1197
    .local v5, "rssi":I
    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->presetLoss(I)D

    move-result-wide v3

    .line 1198
    .local v3, "lossPreset":D
    cmpg-double v6, v3, p3

    if-ltz v6, :cond_0

    .line 1178
    .end local v3    # "lossPreset":D
    .end local v5    # "rssi":I
    :cond_3
    add-int/2addr v2, v0

    goto :goto_1

    .line 1209
    :cond_4
    iget v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v5, v6, p2

    goto :goto_2
.end method

.method public newLinkDetected()V
    .locals 6

    .prologue
    .line 1149
    iget-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1163
    :goto_0
    return-void

    .line 1156
    :cond_0
    const/16 v0, -0x69

    .line 1157
    .local v0, "from":I
    const/16 v1, -0x2d

    .line 1158
    .local v1, "to":I
    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->findRssiTarget(IID)I

    move-result v2

    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 1159
    const/4 v2, 0x1

    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    .line 1160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    goto :goto_0
.end method

.method public poorLinkDetected(I)Z
    .locals 16
    .param p1, "rssi"    # I

    .prologue
    .line 1110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1111
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J

    sub-long v4, v8, v13

    .line 1112
    .local v4, "lastGood":J
    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J

    sub-long v6, v8, v13

    .line 1116
    .local v6, "lastPoor":J
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    if-lez v13, :cond_0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900()[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    add-int/lit8 v14, v14, -0x1

    aget-object v13, v13, v14

    iget v13, v13, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->REDUCE_TIME_MS:I

    int-to-long v13, v13

    cmp-long v13, v6, v13

    if-ltz v13, :cond_0

    .line 1117
    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    goto :goto_0

    .line 1118
    :cond_0
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900()[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    aget-object v13, v13, v14

    iget v13, v13, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->SAMPLE_COUNT:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    .line 1121
    add-int/lit8 v3, p1, 0x3

    .line 1122
    .local v3, "from":I
    add-int/lit8 v12, p1, 0x14

    .line 1123
    .local v12, "to":I
    const-wide v13, 0x3fb999999999999aL    # 0.1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->findRssiTarget(IID)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 1124
    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900()[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    aget-object v14, v14, v15

    iget v14, v14, Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->RSSI_ADJ_DBM:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 1125
    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4900()[Landroid/net/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v14

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    if-ge v13, v14, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    .line 1128
    :cond_1
    const/4 v10, 0x0

    .local v10, "p":I
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v13

    array-length v13, v13

    add-int/lit8 v11, v13, -0x1

    .line 1129
    .local v11, "pmax":I
    :goto_1
    if-ge v10, v11, :cond_2

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v13

    add-int/lit8 v14, v10, 0x1

    aget-object v13, v13, v14

    iget v13, v13, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->MIN_RSSI_DBM:I

    move/from16 v0, p1

    if-lt v0, v13, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1130
    :cond_2
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000()[Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v13

    aget-object v13, v13, v10

    iget v13, v13, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    int-to-long v1, v13

    .line 1133
    .local v1, "avoidMax":J
    const-wide/16 v13, 0x0

    cmp-long v13, v1, v13

    if-gtz v13, :cond_3

    const/4 v13, 0x0

    .line 1141
    :goto_2
    return v13

    .line 1136
    :cond_3
    add-long v13, v8, v1

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    .line 1141
    const/4 v13, 0x1

    goto :goto_2
.end method

.method public presetLoss(I)D
    .locals 10
    .param p1, "rssi"    # I

    .prologue
    const/16 v9, 0x5a

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1089
    const/16 v4, -0x5a

    if-gt p1, v4, :cond_0

    .line 1098
    :goto_0
    return-wide v2

    .line 1090
    :cond_0
    if-lez p1, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    .line 1092
    :cond_1
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800()[D

    move-result-object v4

    if-nez v4, :cond_2

    .line 1094
    const/16 v1, 0x5a

    .line 1095
    .local v1, "size":I
    new-array v4, v9, [D

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4802([D)[D

    .line 1096
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v9, :cond_2

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800()[D

    move-result-object v4

    rsub-int/lit8 v5, v0, 0x5a

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double v5, v2, v5

    aput-wide v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1098
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800()[D

    move-result-object v2

    neg-int v3, p1

    aget-wide v2, v2, v3

    goto :goto_0
.end method

.method public updateLoss(IDI)V
    .locals 2
    .param p1, "rssi"    # I
    .param p2, "value"    # D
    .param p4, "volume"    # I

    .prologue
    .line 1071
    if-gtz p4, :cond_1

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 1072
    :cond_1
    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int v0, p1, v1

    .line 1073
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v0, v1, :cond_0

    .line 1074
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3, p4}, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    goto :goto_0
.end method
