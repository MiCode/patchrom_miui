.class public Landroid/renderscript/Float2;
.super Ljava/lang/Object;
.source "Float2.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "initX"    # F
    .param p2, "initY"    # F

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/renderscript/Float2;->x:F

    .line 33
    iput p2, p0, Landroid/renderscript/Float2;->y:F

    .line 34
    return-void
.end method
