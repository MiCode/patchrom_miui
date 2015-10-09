.class public Landroid/graphics/PaintFlagsDrawFilter;
.super Landroid/graphics/DrawFilter;
.source "PaintFlagsDrawFilter.java"


# instance fields
.field public final clearBits:I

.field public final setBits:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "clearBits"    # I
    .param p2, "setBits"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/graphics/DrawFilter;-><init>()V

    .line 34
    iput p1, p0, Landroid/graphics/PaintFlagsDrawFilter;->clearBits:I

    .line 35
    iput p2, p0, Landroid/graphics/PaintFlagsDrawFilter;->setBits:I

    .line 38
    invoke-static {p1, p2}, Landroid/graphics/PaintFlagsDrawFilter;->nativeConstructor(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/PaintFlagsDrawFilter;->mNativeInt:I

    .line 39
    return-void
.end method

.method private static native nativeConstructor(II)I
.end method
