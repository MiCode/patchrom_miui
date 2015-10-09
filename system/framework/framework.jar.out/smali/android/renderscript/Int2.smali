.class public Landroid/renderscript/Int2;
.super Ljava/lang/Object;
.source "Int2.java"


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "initX"    # I
    .param p2, "initY"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/renderscript/Int2;->x:I

    .line 33
    iput p2, p0, Landroid/renderscript/Int2;->y:I

    .line 34
    return-void
.end method
