.class public Landroid/graphics/ComposePathEffect;
.super Landroid/graphics/PathEffect;
.source "ComposePathEffect.java"


# direct methods
.method public constructor <init>(Landroid/graphics/PathEffect;Landroid/graphics/PathEffect;)V
    .locals 2
    .param p1, "outerpe"    # Landroid/graphics/PathEffect;
    .param p2, "innerpe"    # Landroid/graphics/PathEffect;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    .line 26
    iget v0, p1, Landroid/graphics/PathEffect;->native_instance:I

    iget v1, p2, Landroid/graphics/PathEffect;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/ComposePathEffect;->nativeCreate(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/ComposePathEffect;->native_instance:I

    .line 28
    return-void
.end method

.method private static native nativeCreate(II)I
.end method
