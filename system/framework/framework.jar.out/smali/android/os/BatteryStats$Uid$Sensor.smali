.class public abstract Landroid/os/BatteryStats$Uid$Sensor;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Sensor"
.end annotation


# static fields
.field public static final GPS:I = -0x2710


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getHandle()I
.end method

.method public abstract getSensorTime()Landroid/os/BatteryStats$Timer;
.end method
