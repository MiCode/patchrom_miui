.class abstract Landroid/view/GLES20Layer;
.super Landroid/view/HardwareLayer;
.source "GLES20Layer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GLES20Layer$Finalizer;
    }
.end annotation


# instance fields
.field mFinalizer:Landroid/view/GLES20Layer$Finalizer;

.field mLayer:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/view/HardwareLayer;-><init>()V

    .line 31
    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "opaque"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/HardwareLayer;-><init>(IIZ)V

    .line 35
    return-void
.end method


# virtual methods
.method clearStorage()V
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nClearLayerTexture(I)V

    .line 75
    :cond_0
    return-void
.end method

.method public copyInto(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 57
    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    iget v1, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nCopyLayer(II)Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/view/GLES20Layer;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Landroid/view/GLES20Layer;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0}, Landroid/view/DisplayList;->reset()V

    .line 65
    :cond_0
    iget-object v0, p0, Landroid/view/GLES20Layer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Landroid/view/GLES20Layer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    invoke-virtual {v0}, Landroid/view/GLES20Layer$Finalizer;->destroy()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GLES20Layer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    .line 69
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    .line 70
    return-void
.end method

.method public getLayer()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    return v0
.end method

.method setLayerPaint(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nSetLayerPaint(II)V

    .line 50
    iget v1, p0, Landroid/view/GLES20Layer;->mLayer:I

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    iget v0, v0, Landroid/graphics/ColorFilter;->nativeColorFilter:I

    :goto_0
    invoke-static {v1, v0}, Landroid/view/GLES20Canvas;->nSetLayerColorFilter(II)V

    .line 53
    :cond_0
    return-void

    .line 50
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
