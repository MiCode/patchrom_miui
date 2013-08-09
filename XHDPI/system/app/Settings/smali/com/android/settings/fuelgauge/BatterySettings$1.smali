.class Lcom/android/settings/fuelgauge/BatterySettings$1;
.super Landroid/database/ContentObserver;
.source "BatterySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatterySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/BatterySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/BatterySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySettings$1;->this$0:Lcom/android/settings/fuelgauge/BatterySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettings$1;->this$0:Lcom/android/settings/fuelgauge/BatterySettings;

    #calls: Lcom/android/settings/fuelgauge/BatterySettings;->onPowerModeChanged()V
    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatterySettings;->access$000(Lcom/android/settings/fuelgauge/BatterySettings;)V

    .line 34
    return-void
.end method
