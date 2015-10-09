.class public abstract Landroid/os/BatteryStats$Timer;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Timer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCountLocked(I)I
.end method

.method public abstract getTotalTimeLocked(JI)J
.end method

.method public abstract logState(Landroid/util/Printer;Ljava/lang/String;)V
.end method
