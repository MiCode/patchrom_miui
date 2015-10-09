.class public Landroid/graphics/LayerRasterizer;
.super Landroid/graphics/Rasterizer;
.source "LayerRasterizer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/graphics/Rasterizer;-><init>()V

    .line 21
    invoke-static {}, Landroid/graphics/LayerRasterizer;->nativeConstructor()I

    move-result v0

    iput v0, p0, Landroid/graphics/LayerRasterizer;->native_instance:I

    .line 22
    return-void
.end method

.method private static native nativeAddLayer(IIFF)V
.end method

.method private static native nativeConstructor()I
.end method


# virtual methods
.method public addLayer(Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v2, 0x0

    .line 34
    iget v0, p0, Landroid/graphics/LayerRasterizer;->native_instance:I

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, v1, v2, v2}, Landroid/graphics/LayerRasterizer;->nativeAddLayer(IIFF)V

    .line 35
    return-void
.end method

.method public addLayer(Landroid/graphics/Paint;FF)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    .line 30
    iget v0, p0, Landroid/graphics/LayerRasterizer;->native_instance:I

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, v1, p2, p3}, Landroid/graphics/LayerRasterizer;->nativeAddLayer(IIFF)V

    .line 31
    return-void
.end method
