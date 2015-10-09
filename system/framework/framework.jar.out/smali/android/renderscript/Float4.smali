.class public Landroid/renderscript/Float4;
.super Ljava/lang/Object;
.source "Float4.java"


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "initX"    # F
    .param p2, "initY"    # F
    .param p3, "initZ"    # F
    .param p4, "initW"    # F

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/renderscript/Float4;->x:F

    .line 33
    iput p2, p0, Landroid/renderscript/Float4;->y:F

    .line 34
    iput p3, p0, Landroid/renderscript/Float4;->z:F

    .line 35
    iput p4, p0, Landroid/renderscript/Float4;->w:F

    .line 36
    return-void
.end method
