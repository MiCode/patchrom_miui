.class public Landroid/renderscript/Short2;
.super Ljava/lang/Object;
.source "Short2.java"


# instance fields
.field public x:S

.field public y:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(SS)V
    .locals 0
    .param p1, "initX"    # S
    .param p2, "initY"    # S

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-short p1, p0, Landroid/renderscript/Short2;->x:S

    .line 33
    iput-short p2, p0, Landroid/renderscript/Short2;->y:S

    .line 34
    return-void
.end method
