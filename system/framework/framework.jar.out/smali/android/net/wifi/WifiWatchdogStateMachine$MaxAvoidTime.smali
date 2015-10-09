.class Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaxAvoidTime"
.end annotation


# instance fields
.field public final MIN_RSSI_DBM:I

.field public final TIME_MS:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "time"    # I
    .param p2, "rssi"    # I

    .prologue
    .line 986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 987
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    .line 988
    iput p2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->MIN_RSSI_DBM:I

    .line 989
    return-void
.end method
