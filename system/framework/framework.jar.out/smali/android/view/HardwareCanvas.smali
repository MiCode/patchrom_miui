.class public abstract Landroid/view/HardwareCanvas;
.super Landroid/graphics/Canvas;
.source "HardwareCanvas.java"


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    return-void
.end method


# virtual methods
.method abstract attachFunctor(I)V
.end method

.method public callDrawGLFunction(I)I
    .locals 1
    .param p1, "drawGLFunction"    # I

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method abstract cancelLayerUpdate(Landroid/view/HardwareLayer;)V
.end method

.method abstract clearLayerUpdates()V
.end method

.method abstract detachFunctor(I)V
.end method

.method public abstract drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I
.end method

.method public drawDisplayList(Landroid/view/DisplayList;)V
    .locals 2
    .param p1, "displayList"    # Landroid/view/DisplayList;

    .prologue
    .line 94
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I

    .line 95
    return-void
.end method

.method abstract drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V
.end method

.method abstract flushLayerUpdates()V
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Landroid/view/HardwareCanvas;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public invokeFunctors(Landroid/graphics/Rect;)I
    .locals 1
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPostDraw()V
.end method

.method public abstract onPreDraw(Landroid/graphics/Rect;)I
.end method

.method abstract outputDisplayList(Landroid/view/DisplayList;)V
.end method

.method abstract pushLayerUpdate(Landroid/view/HardwareLayer;)V
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Landroid/view/HardwareCanvas;->mName:Ljava/lang/String;

    .line 54
    return-void
.end method
