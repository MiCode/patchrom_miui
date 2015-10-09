.class public abstract Landroid/os/BatteryStats$Uid$Proc;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Proc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    return-void
.end method


# virtual methods
.method public abstract countExcessivePowers()I
.end method

.method public abstract getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
.end method

.method public abstract getForegroundTime(I)J
.end method

.method public abstract getStarts(I)I
.end method

.method public abstract getSystemTime(I)J
.end method

.method public abstract getTimeAtCpuSpeedStep(II)J
.end method

.method public abstract getUserTime(I)J
.end method
