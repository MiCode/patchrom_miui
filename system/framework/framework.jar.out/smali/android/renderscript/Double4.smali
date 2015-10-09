.class public Landroid/renderscript/Double4;
.super Ljava/lang/Object;
.source "Double4.java"


# instance fields
.field public w:D

.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0
    .param p1, "initX"    # D
    .param p3, "initY"    # D
    .param p5, "initZ"    # D
    .param p7, "initW"    # D

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Landroid/renderscript/Double4;->x:D

    .line 34
    iput-wide p3, p0, Landroid/renderscript/Double4;->y:D

    .line 35
    iput-wide p5, p0, Landroid/renderscript/Double4;->z:D

    .line 36
    iput-wide p7, p0, Landroid/renderscript/Double4;->w:D

    .line 37
    return-void
.end method
