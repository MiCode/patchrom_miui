.class public Landroid/graphics/PathDashPathEffect;
.super Landroid/graphics/PathEffect;
.source "PathDashPathEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/PathDashPathEffect$Style;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/graphics/Path;FFLandroid/graphics/PathDashPathEffect$Style;)V
    .locals 2
    .param p1, "shape"    # Landroid/graphics/Path;
    .param p2, "advance"    # F
    .param p3, "phase"    # F
    .param p4, "style"    # Landroid/graphics/PathDashPathEffect$Style;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result v0

    iget v1, p4, Landroid/graphics/PathDashPathEffect$Style;->native_style:I

    invoke-static {v0, p2, p3, v1}, Landroid/graphics/PathDashPathEffect;->nativeCreate(IFFI)I

    move-result v0

    iput v0, p0, Landroid/graphics/PathDashPathEffect;->native_instance:I

    .line 46
    return-void
.end method

.method private static native nativeCreate(IFFI)I
.end method
