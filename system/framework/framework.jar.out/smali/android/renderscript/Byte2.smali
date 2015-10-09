.class public Landroid/renderscript/Byte2;
.super Ljava/lang/Object;
.source "Byte2.java"


# instance fields
.field public x:B

.field public y:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(BB)V
    .locals 0
    .param p1, "initX"    # B
    .param p2, "initY"    # B

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-byte p1, p0, Landroid/renderscript/Byte2;->x:B

    .line 33
    iput-byte p2, p0, Landroid/renderscript/Byte2;->y:B

    .line 34
    return-void
.end method
