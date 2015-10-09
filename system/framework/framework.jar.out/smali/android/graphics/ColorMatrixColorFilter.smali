.class public Landroid/graphics/ColorMatrixColorFilter;
.super Landroid/graphics/ColorFilter;
.source "ColorMatrixColorFilter.java"


# direct methods
.method public constructor <init>(Landroid/graphics/ColorMatrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/ColorMatrix;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    .line 29
    .local v0, "colorMatrix":[F
    invoke-static {v0}, Landroid/graphics/ColorMatrixColorFilter;->nativeColorMatrixFilter([F)I

    move-result v1

    iput v1, p0, Landroid/graphics/ColorMatrixColorFilter;->native_instance:I

    .line 30
    iget v1, p0, Landroid/graphics/ColorMatrixColorFilter;->native_instance:I

    invoke-static {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;->nColorMatrixFilter(I[F)I

    move-result v1

    iput v1, p0, Landroid/graphics/ColorMatrixColorFilter;->nativeColorFilter:I

    .line 31
    return-void
.end method

.method public constructor <init>([F)V
    .locals 2
    .param p1, "array"    # [F

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 41
    array-length v0, p1

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 44
    :cond_0
    invoke-static {p1}, Landroid/graphics/ColorMatrixColorFilter;->nativeColorMatrixFilter([F)I

    move-result v0

    iput v0, p0, Landroid/graphics/ColorMatrixColorFilter;->native_instance:I

    .line 45
    iget v0, p0, Landroid/graphics/ColorMatrixColorFilter;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;->nColorMatrixFilter(I[F)I

    move-result v0

    iput v0, p0, Landroid/graphics/ColorMatrixColorFilter;->nativeColorFilter:I

    .line 46
    return-void
.end method

.method private static native nColorMatrixFilter(I[F)I
.end method

.method private static native nativeColorMatrixFilter([F)I
.end method
