.class public Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats$Uid$Proc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExcessivePower"
.end annotation


# static fields
.field public static final TYPE_CPU:I = 0x2

.field public static final TYPE_WAKE:I = 0x1


# instance fields
.field public overTime:J

.field public type:I

.field public usedTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
