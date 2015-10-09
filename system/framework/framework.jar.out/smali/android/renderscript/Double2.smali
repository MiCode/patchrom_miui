.class public Landroid/renderscript/Double2;
.super Ljava/lang/Object;
.source "Double2.java"


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .param p1, "initX"    # D
    .param p3, "initY"    # D

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Landroid/renderscript/Double2;->x:D

    .line 34
    iput-wide p3, p0, Landroid/renderscript/Double2;->y:D

    .line 35
    return-void
.end method
