.class public final Landroid/os/BatteryStats$HistoryItem;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryItem"
.end annotation


# static fields
.field public static final CMD_NULL:B = 0x0t

.field public static final CMD_OVERFLOW:B = 0x3t

.field public static final CMD_START:B = 0x2t

.field public static final CMD_UPDATE:B = 0x1t

.field static final DEBUG:Z = false

.field static final DELTA_BATTERY_LEVEL_FLAG:I = 0x100000

.field static final DELTA_CMD_MASK:I = 0x3

.field static final DELTA_CMD_SHIFT:I = 0x12

.field static final DELTA_STATE_FLAG:I = 0x200000

.field static final DELTA_STATE_MASK:I = -0x400000

.field static final DELTA_TIME_ABS:I = 0x3fffd

.field static final DELTA_TIME_INT:I = 0x3fffe

.field static final DELTA_TIME_LONG:I = 0x3ffff

.field static final DELTA_TIME_MASK:I = 0x3ffff

.field public static final MOST_INTERESTING_STATES:I = 0x101c0000

.field public static final STATE_AUDIO_ON_FLAG:I = 0x400000

.field public static final STATE_BATTERY_PLUGGED_FLAG:I = 0x80000

.field public static final STATE_BLUETOOTH_ON_FLAG:I = 0x10000

.field public static final STATE_BRIGHTNESS_MASK:I = 0xf

.field public static final STATE_BRIGHTNESS_SHIFT:I = 0x0

.field public static final STATE_DATA_CONNECTION_MASK:I = 0xf000

.field public static final STATE_DATA_CONNECTION_SHIFT:I = 0xc

.field public static final STATE_GPS_ON_FLAG:I = 0x10000000

.field public static final STATE_PHONE_IN_CALL_FLAG:I = 0x40000

.field public static final STATE_PHONE_SCANNING_FLAG:I = 0x8000000

.field public static final STATE_PHONE_STATE_MASK:I = 0xf00

.field public static final STATE_PHONE_STATE_SHIFT:I = 0x8

.field public static final STATE_SCREEN_ON_FLAG:I = 0x100000

.field public static final STATE_SENSOR_ON_FLAG:I = 0x20000000

.field public static final STATE_SIGNAL_STRENGTH_MASK:I = 0xf0

.field public static final STATE_SIGNAL_STRENGTH_SHIFT:I = 0x4

.field public static final STATE_VIDEO_ON_FLAG:I = 0x200000

.field public static final STATE_WAKE_LOCK_FLAG:I = 0x40000000

.field public static final STATE_WIFI_FULL_LOCK_FLAG:I = 0x2000000

.field public static final STATE_WIFI_MULTICAST_ON_FLAG:I = 0x800000

.field public static final STATE_WIFI_ON_FLAG:I = 0x20000

.field public static final STATE_WIFI_RUNNING_FLAG:I = 0x4000000

.field public static final STATE_WIFI_SCAN_FLAG:I = 0x1000000

.field static final TAG:Ljava/lang/String; = "HistoryItem"


# instance fields
.field public batteryHealth:B

.field public batteryLevel:B

.field public batteryPlugType:B

.field public batteryStatus:B

.field public batteryTemperature:C

.field public batteryVoltage:C

.field public cmd:B

.field public next:Landroid/os/BatteryStats$HistoryItem;

.field public states:I

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 507
    return-void
.end method

.method public constructor <init>(JLandroid/os/Parcel;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "src"    # Landroid/os/Parcel;

    .prologue
    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 510
    iput-wide p1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 511
    invoke-direct {p0, p3}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 512
    return-void
.end method

.method private buildBatteryLevelInt()I
    .locals 3

    .prologue
    .line 624
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    iget-char v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    shl-int/lit8 v1, v1, 0xe

    const v2, 0xffc000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-char v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    and-int/lit16 v1, v1, 0x3fff

    or-int/2addr v0, v1

    return v0
.end method

.method private buildStateInt()I
    .locals 3

    .prologue
    .line 630
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    shl-int/lit8 v0, v0, 0x1c

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, 0xf000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    shl-int/lit8 v1, v1, 0x16

    const/high16 v2, 0xc00000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v2, 0x3fffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const v2, 0xffff

    .line 533
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 534
    .local v0, "bat":I
    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 535
    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 536
    shr-int/lit8 v1, v0, 0x10

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 537
    shr-int/lit8 v1, v0, 0x14

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 538
    shr-int/lit8 v1, v0, 0x18

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 540
    and-int v1, v0, v2

    int-to-char v1, v1

    iput-char v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    .line 541
    shr-int/lit8 v1, v0, 0x10

    and-int/2addr v1, v2

    int-to-char v1, v1

    iput-char v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 542
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 543
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 689
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 690
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 691
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 692
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 693
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 694
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 695
    iput-char v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    .line 696
    iput-char v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 697
    iput v2, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 698
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    return v0
.end method

.method public readDelta(Landroid/os/Parcel;)V
    .locals 12
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const v11, 0x3fffff

    const v7, 0x3fffd

    const/high16 v10, -0x400000

    .line 637
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 638
    .local v4, "firstToken":I
    const v6, 0x3ffff

    and-int v3, v4, v6

    .line 639
    .local v3, "deltaTimeToken":I
    shr-int/lit8 v6, v4, 0x12

    and-int/lit8 v6, v6, 0x3

    int-to-byte v6, v6

    iput-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 643
    if-ge v3, v7, :cond_1

    .line 644
    iget-wide v6, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 659
    :goto_0
    const/high16 v6, 0x100000

    and-int/2addr v6, v4

    if-eqz v6, :cond_0

    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 661
    .local v0, "batteryLevelInt":I
    shr-int/lit8 v6, v0, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    iput-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 662
    shr-int/lit8 v6, v0, 0xe

    and-int/lit16 v6, v6, 0x3ff

    int-to-char v6, v6

    iput-char v6, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    .line 663
    and-int/lit16 v6, v0, 0x3fff

    int-to-char v6, v6

    iput-char v6, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 671
    .end local v0    # "batteryLevelInt":I
    :cond_0
    const/high16 v6, 0x200000

    and-int/2addr v6, v4

    if-eqz v6, :cond_4

    .line 672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 673
    .local v5, "stateInt":I
    and-int v6, v4, v10

    and-int v7, v5, v11

    or-int/2addr v6, v7

    iput v6, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 674
    shr-int/lit8 v6, v5, 0x1c

    and-int/lit8 v6, v6, 0xf

    int-to-byte v6, v6

    iput-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 675
    shr-int/lit8 v6, v5, 0x18

    and-int/lit8 v6, v6, 0xf

    int-to-byte v6, v6

    iput-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 676
    shr-int/lit8 v6, v5, 0x16

    and-int/lit8 v6, v6, 0x3

    int-to-byte v6, v6

    iput-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 686
    .end local v5    # "stateInt":I
    :goto_1
    return-void

    .line 645
    :cond_1
    if-ne v3, v7, :cond_2

    .line 646
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 647
    invoke-direct {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_1

    .line 649
    :cond_2
    const v6, 0x3fffe

    if-ne v3, v6, :cond_3

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 651
    .local v1, "delta":I
    iget-wide v6, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v8, v1

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto :goto_0

    .line 654
    .end local v1    # "delta":I
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 656
    .local v1, "delta":J
    iget-wide v6, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    add-long/2addr v6, v1

    iput-wide v6, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto :goto_0

    .line 684
    .end local v1    # "delta":J
    :cond_4
    and-int v6, v4, v10

    iget v7, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/2addr v7, v11

    or-int/2addr v6, v7

    iput v6, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto :goto_1
.end method

.method public same(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 2
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 725
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-ne v0, v1, :cond_0

    iget-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    iget-char v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    if-ne v0, v1, :cond_0

    iget-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iget-char v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTo(JBLandroid/os/BatteryStats$HistoryItem;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "cmd"    # B
    .param p4, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 713
    iput-wide p1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 714
    iput-byte p3, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 715
    iget-byte v0, p4, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 716
    iget-byte v0, p4, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 717
    iget-byte v0, p4, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 718
    iget-byte v0, p4, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 719
    iget-char v0, p4, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    .line 720
    iget-char v0, p4, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 721
    iget v0, p4, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 722
    return-void
.end method

.method public setTo(Landroid/os/BatteryStats$HistoryItem;)V
    .locals 2
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 701
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 702
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 703
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 704
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 705
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 706
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 707
    iget-char v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    .line 708
    iget-char v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 709
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 710
    return-void
.end method

.method public writeDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 15
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "last"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 560
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-byte v11, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    .line 561
    :cond_0
    const v11, 0x3fffd

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v11}, Landroid/os/BatteryStats$HistoryItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 621
    :cond_1
    :goto_0
    return-void

    .line 566
    :cond_2
    iget-wide v11, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p2

    iget-wide v13, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v3, v11, v13

    .line 567
    .local v3, "deltaTime":J
    invoke-direct/range {p2 .. p2}, Landroid/os/BatteryStats$HistoryItem;->buildBatteryLevelInt()I

    move-result v7

    .line 568
    .local v7, "lastBatteryLevelInt":I
    invoke-direct/range {p2 .. p2}, Landroid/os/BatteryStats$HistoryItem;->buildStateInt()I

    move-result v8

    .line 571
    .local v8, "lastStateInt":I
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-ltz v11, :cond_3

    const-wide/32 v11, 0x7fffffff

    cmp-long v11, v3, v11

    if-lez v11, :cond_8

    .line 572
    :cond_3
    const v5, 0x3ffff

    .line 578
    .local v5, "deltaTimeToken":I
    :goto_1
    iget-byte v11, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    shl-int/lit8 v11, v11, 0x12

    or-int/2addr v11, v5

    iget v12, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v13, -0x400000

    and-int/2addr v12, v13

    or-int v6, v11, v12

    .line 581
    .local v6, "firstToken":I
    invoke-direct {p0}, Landroid/os/BatteryStats$HistoryItem;->buildBatteryLevelInt()I

    move-result v1

    .line 582
    .local v1, "batteryLevelInt":I
    if-eq v1, v7, :cond_a

    const/4 v2, 0x1

    .line 583
    .local v2, "batteryLevelIntChanged":Z
    :goto_2
    if-eqz v2, :cond_4

    .line 584
    const/high16 v11, 0x100000

    or-int/2addr v6, v11

    .line 586
    :cond_4
    invoke-direct {p0}, Landroid/os/BatteryStats$HistoryItem;->buildStateInt()I

    move-result v9

    .line 587
    .local v9, "stateInt":I
    if-eq v9, v8, :cond_b

    const/4 v10, 0x1

    .line 588
    .local v10, "stateIntChanged":Z
    :goto_3
    if-eqz v10, :cond_5

    .line 589
    const/high16 v11, 0x200000

    or-int/2addr v6, v11

    .line 591
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    const v11, 0x3fffe

    if-lt v5, v11, :cond_6

    .line 596
    const v11, 0x3fffe

    if-ne v5, v11, :cond_c

    .line 598
    long-to-int v11, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    :cond_6
    :goto_4
    if-eqz v2, :cond_7

    .line 605
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    :cond_7
    if-eqz v10, :cond_1

    .line 613
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 573
    .end local v1    # "batteryLevelInt":I
    .end local v2    # "batteryLevelIntChanged":Z
    .end local v5    # "deltaTimeToken":I
    .end local v6    # "firstToken":I
    .end local v9    # "stateInt":I
    .end local v10    # "stateIntChanged":Z
    :cond_8
    const-wide/32 v11, 0x3fffd

    cmp-long v11, v3, v11

    if-ltz v11, :cond_9

    .line 574
    const v5, 0x3fffe

    .restart local v5    # "deltaTimeToken":I
    goto :goto_1

    .line 576
    .end local v5    # "deltaTimeToken":I
    :cond_9
    long-to-int v5, v3

    .restart local v5    # "deltaTimeToken":I
    goto :goto_1

    .line 582
    .restart local v1    # "batteryLevelInt":I
    .restart local v6    # "firstToken":I
    :cond_a
    const/4 v2, 0x0

    goto :goto_2

    .line 587
    .restart local v2    # "batteryLevelIntChanged":Z
    .restart local v9    # "stateInt":I
    :cond_b
    const/4 v10, 0x0

    goto :goto_3

    .line 601
    .restart local v10    # "stateIntChanged":Z
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 519
    iget-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 520
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit16 v1, v1, 0xff

    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xf0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    shl-int/lit8 v2, v2, 0x14

    const/high16 v3, 0xf00000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, 0xf000000

    and-int/2addr v2, v3

    or-int v0, v1, v2

    .line 525
    .local v0, "bat":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    iget-char v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    const v2, 0xffff

    and-int/2addr v1, v2

    iget-char v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, -0x10000

    and-int/2addr v2, v3

    or-int v0, v1, v2

    .line 528
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    return-void
.end method
