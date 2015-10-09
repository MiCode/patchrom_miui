.class Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeWeightedEMA"
.end annotation


# instance fields
.field private final mAlpha:D

.field private mProduct:D

.field private mValue:D

.field private mVolume:D

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;D)V
    .locals 2
    .param p2, "coefficient"    # D

    .prologue
    const-wide/16 v0, 0x0

    .line 1004
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1005
    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D

    .line 1006
    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D

    .line 1007
    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mProduct:D

    .line 1008
    iput-wide p2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mAlpha:D

    .line 1009
    return-void
.end method

.method static synthetic access$4200(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .prologue
    .line 998
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D

    return-wide v0
.end method

.method static synthetic access$4300(Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .prologue
    .line 998
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D

    return-wide v0
.end method


# virtual methods
.method public update(DI)V
    .locals 10
    .param p1, "newValue"    # D
    .param p3, "newVolume"    # I

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 1012
    if-gtz p3, :cond_0

    .line 1018
    :goto_0
    return-void

    .line 1014
    :cond_0
    int-to-double v2, p3

    mul-double v0, p1, v2

    .line 1015
    .local v0, "newProduct":D
    iget-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mAlpha:D

    mul-double/2addr v2, v0

    iget-wide v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mAlpha:D

    sub-double v4, v8, v4

    iget-wide v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mProduct:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mProduct:D

    .line 1016
    iget-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mAlpha:D

    int-to-double v4, p3

    mul-double/2addr v2, v4

    iget-wide v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mAlpha:D

    sub-double v4, v8, v4

    iget-wide v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D

    .line 1017
    iget-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mProduct:D

    iget-wide v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D

    goto :goto_0
.end method
