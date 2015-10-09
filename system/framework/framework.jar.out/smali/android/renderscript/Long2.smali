.class public Landroid/renderscript/Long2;
.super Ljava/lang/Object;
.source "Long2.java"


# instance fields
.field public x:J

.field public y:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "initX"    # J
    .param p3, "initY"    # J

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Landroid/renderscript/Long2;->x:J

    .line 32
    iput-wide p3, p0, Landroid/renderscript/Long2;->y:J

    .line 33
    return-void
.end method
