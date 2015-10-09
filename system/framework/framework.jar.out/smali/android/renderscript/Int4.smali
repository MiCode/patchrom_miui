.class public Landroid/renderscript/Int4;
.super Ljava/lang/Object;
.source "Int4.java"


# instance fields
.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "initX"    # I
    .param p2, "initY"    # I
    .param p3, "initZ"    # I
    .param p4, "initW"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/renderscript/Int4;->x:I

    .line 33
    iput p2, p0, Landroid/renderscript/Int4;->y:I

    .line 34
    iput p3, p0, Landroid/renderscript/Int4;->z:I

    .line 35
    iput p4, p0, Landroid/renderscript/Int4;->w:I

    .line 36
    return-void
.end method
