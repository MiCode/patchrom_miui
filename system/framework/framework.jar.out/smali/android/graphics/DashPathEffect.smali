.class public Landroid/graphics/DashPathEffect;
.super Landroid/graphics/PathEffect;
.source "DashPathEffect.java"


# direct methods
.method public constructor <init>([FF)V
    .locals 2
    .param p1, "intervals"    # [F
    .param p2, "phase"    # F

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    .line 35
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 38
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/DashPathEffect;->nativeCreate([FF)I

    move-result v0

    iput v0, p0, Landroid/graphics/DashPathEffect;->native_instance:I

    .line 39
    return-void
.end method

.method private static native nativeCreate([FF)I
.end method
