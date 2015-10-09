.class public Landroid/renderscript/Long3;
.super Ljava/lang/Object;
.source "Long3.java"


# instance fields
.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0
    .param p1, "initX"    # J
    .param p3, "initY"    # J
    .param p5, "initZ"    # J

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Landroid/renderscript/Long3;->x:J

    .line 32
    iput-wide p3, p0, Landroid/renderscript/Long3;->y:J

    .line 33
    iput-wide p5, p0, Landroid/renderscript/Long3;->z:J

    .line 34
    return-void
.end method
