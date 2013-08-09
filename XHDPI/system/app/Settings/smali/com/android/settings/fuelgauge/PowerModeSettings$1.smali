.class Lcom/android/settings/fuelgauge/PowerModeSettings$1;
.super Ljava/lang/Object;
.source "PowerModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/PowerModeSettings;->createPowerModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerModeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$1;->this$0:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "clickedIndex"

    .prologue
    .line 36
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$1;->this$0:Lcom/android/settings/fuelgauge/PowerModeSettings;

    #getter for: Lcom/android/settings/fuelgauge/PowerModeSettings;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/settings/fuelgauge/PowerModeSettings;->access$000(Lcom/android/settings/fuelgauge/PowerModeSettings;)[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge p2, v1, :cond_0

    if-ltz p2, :cond_0

    .line 37
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$1;->this$0:Lcom/android/settings/fuelgauge/PowerModeSettings;

    #getter for: Lcom/android/settings/fuelgauge/PowerModeSettings;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/settings/fuelgauge/PowerModeSettings;->access$000(Lcom/android/settings/fuelgauge/PowerModeSettings;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, powerMode:Ljava/lang/String;
    const-string v1, "persist.sys.aries.power_profile"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$1;->this$0:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/PowerModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    .end local v0           #powerMode:Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 42
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$1;->this$0:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/PowerModeSettings;->finish()V

    .line 43
    return-void
.end method
