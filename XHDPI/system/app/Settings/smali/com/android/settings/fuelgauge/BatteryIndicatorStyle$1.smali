.class Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$1;
.super Ljava/lang/Object;
.source "BatteryIndicatorStyle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->createBatteryIndicatorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$1;->this$0:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "clickedIndex"

    .prologue
    .line 41
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$1;->this$0:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;

    #getter for: Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->access$000(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge p2, v1, :cond_0

    if-ltz p2, :cond_0

    .line 42
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$1;->this$0:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;

    #getter for: Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->access$000(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 43
    .local v0, value:I
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$1;->this$0:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;

    #getter for: Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->access$100(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "battery_indicator_style"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 46
    .end local v0           #value:I
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 47
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$1;->this$0:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->finish()V

    .line 48
    return-void
.end method
