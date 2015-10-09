.class public final Landroid/os/FactoryTest;
.super Ljava/lang/Object;
.source "FactoryTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLongPressOnPowerOffEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 33
    const-string v1, "factory.long_press_power_off"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
