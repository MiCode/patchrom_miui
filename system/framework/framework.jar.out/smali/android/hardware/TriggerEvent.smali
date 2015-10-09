.class public final Landroid/hardware/TriggerEvent;
.super Ljava/lang/Object;
.source "TriggerEvent.java"


# instance fields
.field public sensor:Landroid/hardware/Sensor;

.field public timestamp:J

.field public final values:[F


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-array v0, p1, [F

    iput-object v0, p0, Landroid/hardware/TriggerEvent;->values:[F

    .line 61
    return-void
.end method
