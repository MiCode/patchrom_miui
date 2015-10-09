.class Landroid/view/GLES20Canvas;
.super Landroid/view/HardwareCanvas;
.source "GLES20Canvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GLES20Canvas$CanvasFinalizer;
    }
.end annotation


# static fields
.field static final FLUSH_CACHES_FULL:I = 0x2

.field static final FLUSH_CACHES_LAYERS:I = 0x0

.field static final FLUSH_CACHES_MODERATE:I = 0x1

.field private static final MODIFIER_COLOR_FILTER:I = 0x4

.field private static final MODIFIER_NONE:I = 0x0

.field private static final MODIFIER_SHADER:I = 0x2

.field private static final MODIFIER_SHADOW:I = 0x1

.field private static sIsAvailable:Z


# instance fields
.field private mClipBounds:Landroid/graphics/Rect;

.field private mFilter:Landroid/graphics/DrawFilter;

.field private mFinalizer:Landroid/view/GLES20Canvas$CanvasFinalizer;

.field private mHeight:I

.field private mLine:[F

.field private final mOpaque:Z

.field private mPathBounds:Landroid/graphics/RectF;

.field private mPoint:[F

.field private mRenderer:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Landroid/view/GLES20Canvas;->nIsAvailable()Z

    move-result v0

    sput-boolean v0, Landroid/view/GLES20Canvas;->sIsAvailable:Z

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 1
    .param p1, "layer"    # I
    .param p2, "translucent"    # Z

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/view/HardwareCanvas;-><init>()V

    .line 96
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/GLES20Canvas;->mOpaque:Z

    .line 97
    invoke-static {p1}, Landroid/view/GLES20Canvas;->nCreateLayerRenderer(I)I

    move-result v0

    iput v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    .line 98
    invoke-direct {p0}, Landroid/view/GLES20Canvas;->setupFinalizer()V

    .line 99
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Z)V
    .locals 1
    .param p1, "translucent"    # Z

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/view/GLES20Canvas;-><init>(ZZ)V

    .line 90
    return-void
.end method

.method protected constructor <init>(ZZ)V
    .locals 1
    .param p1, "record"    # Z
    .param p2, "translucent"    # Z

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/view/HardwareCanvas;-><init>()V

    .line 102
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/GLES20Canvas;->mOpaque:Z

    .line 104
    if-eqz p1, :cond_1

    .line 105
    invoke-static {}, Landroid/view/GLES20Canvas;->nCreateDisplayListRenderer()I

    move-result v0

    iput v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    .line 110
    :goto_1
    invoke-direct {p0}, Landroid/view/GLES20Canvas;->setupFinalizer()V

    .line 111
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {}, Landroid/view/GLES20Canvas;->nCreateRenderer()I

    move-result v0

    iput v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    goto :goto_1
.end method

.method static synthetic access$000(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 44
    invoke-static {p0}, Landroid/view/GLES20Canvas;->nDestroyRenderer(I)V

    return-void
.end method

.method static flushCaches(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 368
    invoke-static {p0}, Landroid/view/GLES20Canvas;->nFlushCaches(I)V

    .line 369
    return-void
.end method

.method private getInternalClipBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mClipBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mClipBounds:Landroid/graphics/Rect;

    .line 457
    :cond_0
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mClipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getLineStorage()[F
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mLine:[F

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mLine:[F

    .line 473
    :cond_0
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mLine:[F

    return-object v0
.end method

.method private getPathBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mPathBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mPathBounds:Landroid/graphics/RectF;

    .line 463
    :cond_0
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mPathBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method private getPointStorage()[F
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mPoint:[F

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mPoint:[F

    .line 468
    :cond_0
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mPoint:[F

    return-object v0
.end method

.method public static getStencilSize()I
    .locals 1

    .prologue
    .line 284
    invoke-static {}, Landroid/view/GLES20Canvas;->nGetStencilSize()I

    move-result v0

    return v0
.end method

.method static initAtlas(Landroid/view/GraphicBuffer;[I)V
    .locals 1
    .param p0, "buffer"    # Landroid/view/GraphicBuffer;
    .param p1, "map"    # [I

    .prologue
    .line 396
    array-length v0, p1

    invoke-static {p0, p1, v0}, Landroid/view/GLES20Canvas;->nInitAtlas(Landroid/view/GraphicBuffer;[II)V

    .line 397
    return-void
.end method

.method static initCaches()Z
    .locals 1

    .prologue
    .line 386
    invoke-static {}, Landroid/view/GLES20Canvas;->nInitCaches()Z

    move-result v0

    return v0
.end method

.method static isAvailable()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Landroid/view/GLES20Canvas;->sIsAvailable:Z

    return v0
.end method

.method private static native nAttachFunctor(II)V
.end method

.method private static native nCallDrawGLFunction(II)I
.end method

.method private static native nCancelLayerUpdate(II)V
.end method

.method static native nClearLayerTexture(I)V
.end method

.method private static native nClearLayerUpdates(I)V
.end method

.method private static native nClipPath(III)Z
.end method

.method private static native nClipRect(IFFFFI)Z
.end method

.method private static native nClipRect(IIIIII)Z
.end method

.method private static native nClipRegion(III)Z
.end method

.method private static native nConcatMatrix(II)V
.end method

.method static native nCopyLayer(II)Z
.end method

.method private static native nCreateDisplayListRenderer()I
.end method

.method static native nCreateLayer(IIZ[I)I
.end method

.method private static native nCreateLayerRenderer(I)I
.end method

.method private static native nCreateRenderer()I
.end method

.method static native nCreateTextureLayer(Z[I)I
.end method

.method static native nDestroyLayer(I)V
.end method

.method static native nDestroyLayerDeferred(I)V
.end method

.method private static native nDestroyRenderer(I)V
.end method

.method private static native nDetachFunctor(II)V
.end method

.method private static native nDrawArc(IFFFFFFZI)V
.end method

.method private static native nDrawBitmap(II[BFFFFFFFFI)V
.end method

.method private static native nDrawBitmap(II[BFFI)V
.end method

.method private static native nDrawBitmap(II[BII)V
.end method

.method private static native nDrawBitmap(I[IIIFFIIZI)V
.end method

.method private static native nDrawBitmapMesh(II[BII[FI[III)V
.end method

.method private static native nDrawCircle(IFFFI)V
.end method

.method private static native nDrawColor(III)V
.end method

.method private static native nDrawDisplayList(IILandroid/graphics/Rect;I)I
.end method

.method private static native nDrawLayer(IIFF)V
.end method

.method private static native nDrawLines(I[FIII)V
.end method

.method private static native nDrawOval(IFFFFI)V
.end method

.method private static native nDrawPatch(II[BIFFFFI)V
.end method

.method private static native nDrawPath(III)V
.end method

.method private static native nDrawPoints(I[FIII)V
.end method

.method private static native nDrawPosText(ILjava/lang/String;II[FI)V
.end method

.method private static native nDrawPosText(I[CII[FI)V
.end method

.method private static native nDrawRect(IFFFFI)V
.end method

.method private static native nDrawRects(III)V
.end method

.method private static native nDrawRects(I[FII)V
.end method

.method private static native nDrawRoundRect(IFFFFFFI)V
.end method

.method private static native nDrawText(ILjava/lang/String;IIFFII)V
.end method

.method private static native nDrawText(I[CIIFFII)V
.end method

.method private static native nDrawTextOnPath(ILjava/lang/String;IIIFFII)V
.end method

.method private static native nDrawTextOnPath(I[CIIIFFII)V
.end method

.method private static native nDrawTextRun(ILjava/lang/String;IIIIFFII)V
.end method

.method private static native nDrawTextRun(I[CIIIIFFII)V
.end method

.method private static native nFinish(I)V
.end method

.method private static native nFlushCaches(I)V
.end method

.method private static native nFlushLayerUpdates(I)V
.end method

.method private static native nGetClipBounds(ILandroid/graphics/Rect;)Z
.end method

.method private static native nGetDisplayList(II)I
.end method

.method private static native nGetMatrix(II)V
.end method

.method private static native nGetMaximumTextureHeight()I
.end method

.method private static native nGetMaximumTextureWidth()I
.end method

.method static native nGetOverdraw(I)F
.end method

.method private static native nGetSaveCount(I)I
.end method

.method private static native nGetStencilSize()I
.end method

.method private static native nInitAtlas(Landroid/view/GraphicBuffer;[II)V
.end method

.method private static native nInitCaches()Z
.end method

.method private static native nInterrupt(I)V
.end method

.method private static native nInvokeFunctors(ILandroid/graphics/Rect;)I
.end method

.method private static native nIsAvailable()Z
.end method

.method private static native nOutputDisplayList(II)V
.end method

.method private static native nPrepare(IZ)I
.end method

.method private static native nPrepareDirty(IIIIIZ)I
.end method

.method private static native nPushLayerUpdate(II)V
.end method

.method private static native nQuickReject(IFFFF)Z
.end method

.method private static native nResetDisplayListRenderer(I)V
.end method

.method private static native nResetModifiers(II)V
.end method

.method private static native nResetPaintFilter(I)V
.end method

.method static native nResizeLayer(III[I)Z
.end method

.method private static native nRestore(I)V
.end method

.method private static native nRestoreToCount(II)V
.end method

.method private static native nResume(I)V
.end method

.method private static native nRotate(IF)V
.end method

.method private static native nSave(II)I
.end method

.method private static native nSaveLayer(IFFFFII)I
.end method

.method private static native nSaveLayer(III)I
.end method

.method private static native nSaveLayerAlpha(IFFFFII)I
.end method

.method private static native nSaveLayerAlpha(III)I
.end method

.method private static native nScale(IFF)V
.end method

.method static native nSetCountOverdrawEnabled(IZ)V
.end method

.method static native nSetLayerColorFilter(II)V
.end method

.method static native nSetLayerPaint(II)V
.end method

.method private static native nSetMatrix(II)V
.end method

.method private static native nSetName(ILjava/lang/String;)V
.end method

.method static native nSetOpaqueLayer(IZ)V
.end method

.method static native nSetTextureLayerTransform(II)V
.end method

.method private static native nSetViewport(III)V
.end method

.method private static native nSetupColorFilter(II)V
.end method

.method private static native nSetupPaintFilter(III)V
.end method

.method private static native nSetupShader(II)V
.end method

.method private static native nSetupShadow(IFFFI)V
.end method

.method private static native nSkew(IFF)V
.end method

.method private static native nTerminateCaches()V
.end method

.method private static native nTranslate(IFF)V
.end method

.method static native nUpdateRenderLayer(IIIIIII)V
.end method

.method static native nUpdateTextureLayer(IIIZLandroid/graphics/SurfaceTexture;)V
.end method

.method private setupColorFilter(Landroid/graphics/Paint;)I
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1461
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 1462
    .local v0, "filter":Landroid/graphics/ColorFilter;
    if-eqz v0, :cond_0

    .line 1463
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, v0, Landroid/graphics/ColorFilter;->nativeColorFilter:I

    invoke-static {v1, v2}, Landroid/view/GLES20Canvas;->nSetupColorFilter(II)V

    .line 1464
    const/4 v1, 0x4

    .line 1466
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupFinalizer()V
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not create GLES20Canvas renderer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    new-instance v0, Landroid/view/GLES20Canvas$CanvasFinalizer;

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-direct {v0, v1}, Landroid/view/GLES20Canvas$CanvasFinalizer;-><init>(I)V

    iput-object v0, p0, Landroid/view/GLES20Canvas;->mFinalizer:Landroid/view/GLES20Canvas$CanvasFinalizer;

    .line 119
    return-void
.end method

.method private setupModifiers(Landroid/graphics/Bitmap;Landroid/graphics/Paint;)I
    .locals 3
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1399
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_1

    .line 1400
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 1401
    .local v0, "filter":Landroid/graphics/ColorFilter;
    if-eqz v0, :cond_0

    .line 1402
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, v0, Landroid/graphics/ColorFilter;->nativeColorFilter:I

    invoke-static {v1, v2}, Landroid/view/GLES20Canvas;->nSetupColorFilter(II)V

    .line 1403
    const/4 v1, 0x4

    .line 1408
    .end local v0    # "filter":Landroid/graphics/ColorFilter;
    :goto_0
    return v1

    .line 1406
    .restart local v0    # "filter":Landroid/graphics/ColorFilter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1408
    .end local v0    # "filter":Landroid/graphics/ColorFilter;
    :cond_1
    invoke-direct {p0, p2}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v1

    goto :goto_0
.end method

.method private setupModifiers(Landroid/graphics/Paint;)I
    .locals 8
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1413
    const/4 v1, 0x0

    .line 1415
    .local v1, "modifiers":I
    iget-boolean v3, p1, Landroid/graphics/Paint;->hasShadow:Z

    if-eqz v3, :cond_0

    .line 1416
    iget v3, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v4, p1, Landroid/graphics/Paint;->shadowRadius:F

    iget v5, p1, Landroid/graphics/Paint;->shadowDx:F

    iget v6, p1, Landroid/graphics/Paint;->shadowDy:F

    iget v7, p1, Landroid/graphics/Paint;->shadowColor:I

    invoke-static {v3, v4, v5, v6, v7}, Landroid/view/GLES20Canvas;->nSetupShadow(IFFFI)V

    .line 1418
    or-int/lit8 v1, v1, 0x1

    .line 1421
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    .line 1422
    .local v2, "shader":Landroid/graphics/Shader;
    if-eqz v2, :cond_1

    .line 1423
    iget v3, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v4, v2, Landroid/graphics/Shader;->native_shader:I

    invoke-static {v3, v4}, Landroid/view/GLES20Canvas;->nSetupShader(II)V

    .line 1424
    or-int/lit8 v1, v1, 0x2

    .line 1427
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 1428
    .local v0, "filter":Landroid/graphics/ColorFilter;
    if-eqz v0, :cond_2

    .line 1429
    iget v3, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v4, v0, Landroid/graphics/ColorFilter;->nativeColorFilter:I

    invoke-static {v3, v4}, Landroid/view/GLES20Canvas;->nSetupColorFilter(II)V

    .line 1430
    or-int/lit8 v1, v1, 0x4

    .line 1433
    :cond_2
    return v1
.end method

.method private setupModifiers(Landroid/graphics/Paint;I)I
    .locals 8
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "flags"    # I

    .prologue
    .line 1437
    const/4 v1, 0x0

    .line 1439
    .local v1, "modifiers":I
    iget-boolean v3, p1, Landroid/graphics/Paint;->hasShadow:Z

    if-eqz v3, :cond_0

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_0

    .line 1440
    iget v3, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v4, p1, Landroid/graphics/Paint;->shadowRadius:F

    iget v5, p1, Landroid/graphics/Paint;->shadowDx:F

    iget v6, p1, Landroid/graphics/Paint;->shadowDy:F

    iget v7, p1, Landroid/graphics/Paint;->shadowColor:I

    invoke-static {v3, v4, v5, v6, v7}, Landroid/view/GLES20Canvas;->nSetupShadow(IFFFI)V

    .line 1442
    or-int/lit8 v1, v1, 0x1

    .line 1445
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    .line 1446
    .local v2, "shader":Landroid/graphics/Shader;
    if-eqz v2, :cond_1

    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_1

    .line 1447
    iget v3, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v4, v2, Landroid/graphics/Shader;->native_shader:I

    invoke-static {v3, v4}, Landroid/view/GLES20Canvas;->nSetupShader(II)V

    .line 1448
    or-int/lit8 v1, v1, 0x2

    .line 1451
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 1452
    .local v0, "filter":Landroid/graphics/ColorFilter;
    if-eqz v0, :cond_2

    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_2

    .line 1453
    iget v3, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v4, v0, Landroid/graphics/ColorFilter;->nativeColorFilter:I

    invoke-static {v3, v4}, Landroid/view/GLES20Canvas;->nSetupColorFilter(II)V

    .line 1454
    or-int/lit8 v1, v1, 0x4

    .line 1457
    :cond_2
    return v1
.end method

.method static terminateCaches()V
    .locals 0

    .prologue
    .line 380
    invoke-static {}, Landroid/view/GLES20Canvas;->nTerminateCaches()V

    .line 381
    return-void
.end method


# virtual methods
.method public attachFunctor(I)V
    .locals 1
    .param p1, "functor"    # I

    .prologue
    .line 328
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nAttachFunctor(II)V

    .line 329
    return-void
.end method

.method public callDrawGLFunction(I)I
    .locals 1
    .param p1, "drawGLFunction"    # I

    .prologue
    .line 307
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nCallDrawGLFunction(II)I

    move-result v0

    return v0
.end method

.method cancelLayerUpdate(Landroid/view/HardwareLayer;)V
    .locals 2
    .param p1, "layer"    # Landroid/view/HardwareLayer;

    .prologue
    .line 167
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    check-cast p1, Landroid/view/GLES20RenderLayer;

    .end local p1    # "layer":Landroid/view/HardwareLayer;
    iget v1, p1, Landroid/view/GLES20RenderLayer;->mLayer:I

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nCancelLayerUpdate(II)V

    .line 168
    return-void
.end method

.method clearLayerUpdates()V
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nClearLayerUpdates(I)V

    .line 178
    return-void
.end method

.method public clipPath(Landroid/graphics/Path;)Z
    .locals 3
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 482
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Path;->mNativePath:I

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v2, v2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/view/GLES20Canvas;->nClipPath(III)Z

    move-result v0

    return v0
.end method

.method public clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    .locals 3
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .prologue
    .line 487
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Path;->mNativePath:I

    iget v2, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/view/GLES20Canvas;->nClipPath(III)Z

    move-result v0

    return v0
.end method

.method public clipRect(FFFF)Z
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 494
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v5, v1, Landroid/graphics/Region$Op;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nClipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(FFFFLandroid/graphics/Region$Op;)Z
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "op"    # Landroid/graphics/Region$Op;

    .prologue
    .line 502
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v5, p5, Landroid/graphics/Region$Op;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nClipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(IIII)Z
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 507
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v5, v1, Landroid/graphics/Region$Op;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nClipRect(IIIIII)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 515
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v5, v5, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nClipRect(IIIIII)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .prologue
    .line 521
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nClipRect(IIIIII)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/RectF;)Z
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 526
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v5, v5, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nClipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .prologue
    .line 532
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nClipRect(IFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;)Z
    .locals 3
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 537
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Region;->mNativeRegion:I

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v2, v2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/view/GLES20Canvas;->nClipRegion(III)Z

    move-result v0

    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 3
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .prologue
    .line 542
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Region;->mNativeRegion:I

    iget v2, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/view/GLES20Canvas;->nClipRegion(III)Z

    move-result v0

    return v0
.end method

.method public concat(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 624
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nConcatMatrix(II)V

    .line 625
    :cond_0
    return-void
.end method

.method public detachFunctor(I)V
    .locals 1
    .param p1, "functor"    # I

    .prologue
    .line 321
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nDetachFunctor(II)V

    .line 322
    return-void
.end method

.method public drawARGB(IIII)V
    .locals 2
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .prologue
    .line 773
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0xff

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/GLES20Canvas;->drawColor(I)V

    .line 774
    return-void
.end method

.method public drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 10
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "useCenter"    # Z
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 758
    const/4 v0, 0x6

    invoke-direct {p0, p5, v0}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;I)I

    move-result v9

    .line 760
    .local v9, "modifiers":I
    :try_start_0
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v8, p5, Landroid/graphics/Paint;->mNativePaint:I

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v8}, Landroid/view/GLES20Canvas;->nDrawArc(IFFFFFFZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    if-eqz v9, :cond_0

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v9}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 765
    :cond_0
    return-void

    .line 763
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_1

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v9}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_1
    throw v0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v0, 0x0

    .line 811
    invoke-static {p1}, Landroid/view/GLES20Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 813
    if-eqz p4, :cond_1

    invoke-direct {p0, p1, p4}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Bitmap;Landroid/graphics/Paint;)I

    move-result v6

    .line 815
    .local v6, "modifiers":I
    :goto_0
    if-nez p4, :cond_2

    move v5, v0

    .line 816
    .local v5, "nativePaint":I
    :goto_1
    :try_start_0
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-object v2, p1, Landroid/graphics/Bitmap;->mBuffer:[B

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nDrawBitmap(II[BFFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    if-eqz v6, :cond_0

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v6}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 820
    :cond_0
    return-void

    .end local v5    # "nativePaint":I
    .end local v6    # "modifiers":I
    :cond_1
    move v6, v0

    .line 813
    goto :goto_0

    .line 815
    .restart local v6    # "modifiers":I
    :cond_2
    :try_start_1
    iget v5, p4, Landroid/graphics/Paint;->mNativePaint:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 818
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v6}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_3
    throw v0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v2, 0x0

    .line 827
    invoke-static {p1}, Landroid/view/GLES20Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 829
    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p3}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Bitmap;Landroid/graphics/Paint;)I

    move-result v0

    .line 831
    .local v0, "modifiers":I
    :goto_0
    if-nez p3, :cond_2

    move v1, v2

    .line 832
    .local v1, "nativePaint":I
    :goto_1
    :try_start_0
    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v3, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-object v4, p1, Landroid/graphics/Bitmap;->mBuffer:[B

    iget v5, p2, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v2, v3, v4, v5, v1}, Landroid/view/GLES20Canvas;->nDrawBitmap(II[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    if-eqz v0, :cond_0

    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v2, v0}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 837
    :cond_0
    return-void

    .end local v0    # "modifiers":I
    .end local v1    # "nativePaint":I
    :cond_1
    move v0, v2

    .line 829
    goto :goto_0

    .line 831
    .restart local v0    # "modifiers":I
    :cond_2
    :try_start_1
    iget v1, p3, Landroid/graphics/Paint;->mNativePaint:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 835
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    iget v3, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v3, v0}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_3
    throw v2
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 20
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 844
    invoke-static/range {p1 .. p1}, Landroid/view/GLES20Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 846
    if-eqz p4, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Bitmap;Landroid/graphics/Paint;)I

    move-result v17

    .line 848
    .local v17, "modifiers":I
    :goto_0
    if-nez p4, :cond_2

    const/4 v14, 0x0

    .line 851
    .local v14, "nativePaint":I
    :goto_1
    if-nez p2, :cond_3

    .line 852
    const/16 v19, 0x0

    .local v19, "top":I
    move/from16 v16, v19

    .line 853
    .local v16, "left":I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 854
    .local v18, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 862
    .local v15, "bottom":I
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/GLES20Canvas;->mRenderer:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/graphics/Bitmap;->mBuffer:[B

    move/from16 v0, v16

    int-to-float v6, v0

    move/from16 v0, v19

    int-to-float v7, v0

    move/from16 v0, v18

    int-to-float v8, v0

    int-to-float v9, v15

    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    invoke-static/range {v3 .. v14}, Landroid/view/GLES20Canvas;->nDrawBitmap(II[BFFFFFFFFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/GLES20Canvas;->mRenderer:I

    move/from16 v0, v17

    invoke-static {v3, v0}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 867
    :cond_0
    return-void

    .line 846
    .end local v14    # "nativePaint":I
    .end local v15    # "bottom":I
    .end local v16    # "left":I
    .end local v17    # "modifiers":I
    .end local v18    # "right":I
    .end local v19    # "top":I
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 848
    .restart local v17    # "modifiers":I
    :cond_2
    :try_start_1
    move-object/from16 v0, p4

    iget v14, v0, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_1

    .line 856
    .restart local v14    # "nativePaint":I
    :cond_3
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    .line 857
    .restart local v16    # "left":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    .line 858
    .restart local v18    # "right":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    .line 859
    .restart local v19    # "top":I
    move-object/from16 v0, p2

    iget v15, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v15    # "bottom":I
    goto :goto_2

    .line 865
    .end local v14    # "nativePaint":I
    .end local v15    # "bottom":I
    .end local v16    # "left":I
    .end local v18    # "right":I
    .end local v19    # "top":I
    :catchall_0
    move-exception v3

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/GLES20Canvas;->mRenderer:I

    move/from16 v0, v17

    invoke-static {v4, v0}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_4
    throw v3
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 14
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 871
    invoke-static {p1}, Landroid/view/GLES20Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 873
    if-eqz p4, :cond_1

    move-object/from16 v0, p4

    invoke-direct {p0, p1, v0}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Bitmap;Landroid/graphics/Paint;)I

    move-result v13

    .line 875
    .local v13, "modifiers":I
    :goto_0
    if-nez p4, :cond_2

    const/4 v12, 0x0

    .line 878
    .local v12, "nativePaint":I
    :goto_1
    if-nez p2, :cond_3

    .line 879
    const/4 v5, 0x0

    .local v5, "top":F
    move v4, v5

    .line 880
    .local v4, "left":F
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v6, v1

    .line 881
    .local v6, "right":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v7, v1

    .line 889
    .local v7, "bottom":F
    :goto_2
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-object v3, p1, Landroid/graphics/Bitmap;->mBuffer:[B

    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v1 .. v12}, Landroid/view/GLES20Canvas;->nDrawBitmap(II[BFFFFFFFFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    if-eqz v13, :cond_0

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v13}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 894
    :cond_0
    return-void

    .line 873
    .end local v4    # "left":F
    .end local v5    # "top":F
    .end local v6    # "right":F
    .end local v7    # "bottom":F
    .end local v12    # "nativePaint":I
    .end local v13    # "modifiers":I
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 875
    .restart local v13    # "modifiers":I
    :cond_2
    :try_start_1
    move-object/from16 v0, p4

    iget v12, v0, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_1

    .line 883
    .restart local v12    # "nativePaint":I
    :cond_3
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v1

    .line 884
    .restart local v4    # "left":F
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v1

    .line 885
    .restart local v6    # "right":F
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v1

    .line 886
    .restart local v5    # "top":F
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-float v7, v1

    .restart local v7    # "bottom":F
    goto :goto_2

    .line 892
    .end local v4    # "left":F
    .end local v5    # "top":F
    .end local v6    # "right":F
    .end local v7    # "bottom":F
    .end local v12    # "nativePaint":I
    :catchall_0
    move-exception v1

    if-eqz v13, :cond_4

    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v2, v13}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_4
    throw v1
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 903
    if-gez p6, :cond_0

    .line 904
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "width must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 907
    :cond_0
    if-gez p7, :cond_1

    .line 908
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "height must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 911
    :cond_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move/from16 v0, p6

    if-ge v1, v0, :cond_2

    .line 912
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "abs(stride) must be >= width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 915
    :cond_2
    add-int/lit8 v1, p7, -0x1

    mul-int v1, v1, p3

    add-int v11, p2, v1

    .line 916
    .local v11, "lastScanline":I
    array-length v12, p1

    .line 918
    .local v12, "length":I
    if-ltz p2, :cond_3

    add-int v1, p2, p6

    if-gt v1, v12, :cond_3

    if-ltz v11, :cond_3

    add-int v1, v11, p6

    if-le v1, v12, :cond_4

    .line 920
    :cond_3
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 924
    :cond_4
    if-eqz p9, :cond_6

    move-object/from16 v0, p9

    invoke-direct {p0, v0}, Landroid/view/GLES20Canvas;->setupColorFilter(Landroid/graphics/Paint;)I

    move-result v13

    .line 926
    .local v13, "modifier":I
    :goto_0
    if-nez p9, :cond_7

    const/4 v10, 0x0

    .line 927
    .local v10, "nativePaint":I
    :goto_1
    :try_start_0
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v10}, Landroid/view/GLES20Canvas;->nDrawBitmap(I[IIIFFIIZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    if-eqz v13, :cond_5

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v13}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 932
    :cond_5
    return-void

    .line 924
    .end local v10    # "nativePaint":I
    .end local v13    # "modifier":I
    :cond_6
    const/4 v13, 0x0

    goto :goto_0

    .line 926
    .restart local v13    # "modifier":I
    :cond_7
    :try_start_1
    move-object/from16 v0, p9

    iget v10, v0, Landroid/graphics/Paint;->mNativePaint:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 930
    :catchall_0
    move-exception v1

    if-eqz v13, :cond_8

    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v2, v13}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_8
    throw v1
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 10
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 941
    int-to-float v4, p4

    int-to-float v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/view/GLES20Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 942
    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 13
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "meshWidth"    # I
    .param p3, "meshHeight"    # I
    .param p4, "verts"    # [F
    .param p5, "vertOffset"    # I
    .param p6, "colors"    # [I
    .param p7, "colorOffset"    # I
    .param p8, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 947
    invoke-static {p1}, Landroid/view/GLES20Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 948
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-ltz p5, :cond_0

    if-gez p7, :cond_1

    .line 949
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 952
    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_3

    .line 971
    :cond_2
    :goto_0
    return-void

    .line 956
    :cond_3
    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, p3, 0x1

    mul-int v11, v1, v2

    .line 957
    .local v11, "count":I
    move-object/from16 v0, p4

    array-length v1, v0

    mul-int/lit8 v2, v11, 0x2

    move/from16 v0, p5

    invoke-static {v1, v0, v2}, Landroid/view/GLES20Canvas;->checkRange(III)V

    .line 959
    if-eqz p6, :cond_4

    .line 960
    move-object/from16 v0, p6

    array-length v1, v0

    move/from16 v0, p7

    invoke-static {v1, v0, v11}, Landroid/view/GLES20Canvas;->checkRange(III)V

    .line 963
    :cond_4
    if-eqz p8, :cond_5

    move-object/from16 v0, p8

    invoke-direct {p0, p1, v0}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Bitmap;Landroid/graphics/Paint;)I

    move-result v12

    .line 965
    .local v12, "modifiers":I
    :goto_1
    if-nez p8, :cond_6

    const/4 v10, 0x0

    .line 966
    .local v10, "nativePaint":I
    :goto_2
    :try_start_0
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-object v3, p1, Landroid/graphics/Bitmap;->mBuffer:[B

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v10}, Landroid/view/GLES20Canvas;->nDrawBitmapMesh(II[BII[FI[III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    if-eqz v12, :cond_2

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v12}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    goto :goto_0

    .line 963
    .end local v10    # "nativePaint":I
    .end local v12    # "modifiers":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    .line 965
    .restart local v12    # "modifiers":I
    :cond_6
    :try_start_1
    move-object/from16 v0, p8

    iget v10, v0, Landroid/graphics/Paint;->mNativePaint:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 969
    :catchall_0
    move-exception v1

    if-eqz v12, :cond_7

    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v2, v12}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_7
    throw v1
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 3
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "radius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 979
    const/4 v1, 0x6

    invoke-direct {p0, p4, v1}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;I)I

    move-result v0

    .line 981
    .local v0, "modifiers":I
    :try_start_0
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, p4, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, p1, p2, p3, v2}, Landroid/view/GLES20Canvas;->nDrawCircle(IFFFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    if-eqz v0, :cond_0

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v0}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 985
    :cond_0
    return-void

    .line 983
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v2, v0}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_1
    throw v1
.end method

.method public drawColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 992
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/view/GLES20Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 993
    return-void
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 997
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, p1, v1}, Landroid/view/GLES20Canvas;->nDrawColor(III)V

    .line 998
    return-void
.end method

.method public drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I
    .locals 2
    .param p1, "displayList"    # Landroid/view/DisplayList;
    .param p2, "dirty"    # Landroid/graphics/Rect;
    .param p3, "flags"    # I

    .prologue
    .line 420
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    check-cast p1, Landroid/view/GLES20DisplayList;

    .end local p1    # "displayList":Landroid/view/DisplayList;
    invoke-virtual {p1}, Landroid/view/GLES20DisplayList;->getNativeDisplayList()I

    move-result v1

    invoke-static {v0, v1, p2, p3}, Landroid/view/GLES20Canvas;->nDrawDisplayList(IILandroid/graphics/Rect;I)I

    move-result v0

    return v0
.end method

.method drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V
    .locals 3
    .param p1, "layer"    # Landroid/view/HardwareLayer;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 432
    invoke-virtual {p1, p4}, Landroid/view/HardwareLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    move-object v0, p1

    .line 434
    check-cast v0, Landroid/view/GLES20Layer;

    .line 435
    .local v0, "glLayer":Landroid/view/GLES20Layer;
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-virtual {v0}, Landroid/view/GLES20Layer;->getLayer()I

    move-result v2

    invoke-static {v1, v2, p2, p3}, Landroid/view/GLES20Canvas;->nDrawLayer(IIFF)V

    .line 436
    return-void
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 3
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "stopX"    # F
    .param p4, "stopY"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v2, 0x0

    .line 1004
    invoke-direct {p0}, Landroid/view/GLES20Canvas;->getLineStorage()[F

    move-result-object v0

    .line 1005
    .local v0, "line":[F
    aput p1, v0, v2

    .line 1006
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1007
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 1008
    const/4 v1, 0x3

    aput p4, v0, v1

    .line 1009
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1, p5}, Landroid/view/GLES20Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 1010
    return-void
.end method

.method public drawLines([FIILandroid/graphics/Paint;)V
    .locals 3
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1014
    const/4 v1, 0x4

    if-ge p3, v1, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 1016
    :cond_1
    or-int v1, p2, p3

    if-ltz v1, :cond_2

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_3

    .line 1017
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The lines array must contain 4 elements per line."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1019
    :cond_3
    const/4 v1, 0x6

    invoke-direct {p0, p4, v1}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;I)I

    move-result v0

    .line 1021
    .local v0, "modifiers":I
    :try_start_0
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, p4, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, p1, p2, p3, v2}, Landroid/view/GLES20Canvas;->nDrawLines(I[FIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    if-eqz v0, :cond_0

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v0}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v2, v0}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_4
    throw v1
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .locals 2
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1032
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/view/GLES20Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 1033
    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1037
    const/4 v0, 0x6

    invoke-direct {p0, p2, v0}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;I)I

    move-result v6

    .line 1039
    .local v6, "modifiers":I
    :try_start_0
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nDrawOval(IFFFFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    if-eqz v6, :cond_0

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v6}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 1043
    :cond_0
    return-void

    .line 1041
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v6}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_1
    throw v0
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1050
    invoke-direct {p0}, Landroid/view/GLES20Canvas;->getInternalClipBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 1051
    .local v6, "r":Landroid/graphics/Rect;
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v6}, Landroid/view/GLES20Canvas;->nGetClipBounds(ILandroid/graphics/Rect;)Z

    .line 1052
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/GLES20Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1053
    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 11
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v0, 0x0

    .line 778
    invoke-virtual {p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 779
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v9}, Landroid/view/GLES20Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 781
    if-eqz p3, :cond_1

    invoke-direct {p0, p3}, Landroid/view/GLES20Canvas;->setupColorFilter(Landroid/graphics/Paint;)I

    move-result v10

    .line 783
    .local v10, "modifier":I
    :goto_0
    if-nez p3, :cond_2

    move v8, v0

    .line 784
    .local v8, "nativePaint":I
    :goto_1
    :try_start_0
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, v9, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-object v2, v9, Landroid/graphics/Bitmap;->mBuffer:[B

    iget v3, p1, Landroid/graphics/NinePatch;->mNativeChunk:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-static/range {v0 .. v8}, Landroid/view/GLES20Canvas;->nDrawPatch(II[BIFFFFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    if-eqz v10, :cond_0

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v10}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 789
    :cond_0
    return-void

    .end local v8    # "nativePaint":I
    .end local v10    # "modifier":I
    :cond_1
    move v10, v0

    .line 781
    goto :goto_0

    .line 783
    .restart local v10    # "modifier":I
    :cond_2
    :try_start_1
    iget v8, p3, Landroid/graphics/Paint;->mNativePaint:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 787
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_3

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v10}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_3
    throw v0
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 11
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v0, 0x0

    .line 793
    invoke-virtual {p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 794
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v9}, Landroid/view/GLES20Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 796
    if-eqz p3, :cond_1

    invoke-direct {p0, p3}, Landroid/view/GLES20Canvas;->setupColorFilter(Landroid/graphics/Paint;)I

    move-result v10

    .line 798
    .local v10, "modifier":I
    :goto_0
    if-nez p3, :cond_2

    move v8, v0

    .line 799
    .local v8, "nativePaint":I
    :goto_1
    :try_start_0
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, v9, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-object v2, v9, Landroid/graphics/Bitmap;->mBuffer:[B

    iget v3, p1, Landroid/graphics/NinePatch;->mNativeChunk:I

    iget v4, p2, Landroid/graphics/RectF;->left:F

    iget v5, p2, Landroid/graphics/RectF;->top:F

    iget v6, p2, Landroid/graphics/RectF;->right:F

    iget v7, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v0 .. v8}, Landroid/view/GLES20Canvas;->nDrawPatch(II[BIFFFFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    if-eqz v10, :cond_0

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v10}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 804
    :cond_0
    return-void

    .end local v8    # "nativePaint":I
    .end local v10    # "modifier":I
    :cond_1
    move v10, v0

    .line 796
    goto :goto_0

    .line 798
    .restart local v10    # "modifier":I
    :cond_2
    :try_start_1
    iget v8, p3, Landroid/graphics/Paint;->mNativePaint:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 802
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_3

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v10}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_3
    throw v0
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1057
    const/4 v1, 0x6

    invoke-direct {p0, p2, v1}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;I)I

    move-result v0

    .line 1059
    .local v0, "modifiers":I
    :try_start_0
    iget-boolean v1, p1, Landroid/graphics/Path;->isSimplePath:Z

    if-eqz v1, :cond_2

    .line 1060
    iget-object v1, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v1, :cond_0

    .line 1061
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget-object v2, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    iget v2, v2, Landroid/graphics/Region;->mNativeRegion:I

    iget v3, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v2, v3}, Landroid/view/GLES20Canvas;->nDrawRects(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1067
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v0}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 1069
    :cond_1
    return-void

    .line 1064
    :cond_2
    :try_start_1
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, p1, Landroid/graphics/Path;->mNativePath:I

    iget v3, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v2, v3}, Landroid/view/GLES20Canvas;->nDrawPath(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1067
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v2, v0}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_3
    throw v1
.end method

.method public drawPicture(Landroid/graphics/Picture;)V
    .locals 1
    .param p1, "picture"    # Landroid/graphics/Picture;

    .prologue
    .line 1087
    iget-boolean v0, p1, Landroid/graphics/Picture;->createdFromStream:Z

    if-eqz v0, :cond_0

    .line 1093
    :goto_0
    return-void

    .line 1091
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    goto :goto_0
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "dst"    # Landroid/graphics/Rect;

    .prologue
    .line 1097
    iget-boolean v0, p1, Landroid/graphics/Picture;->createdFromStream:Z

    if-eqz v0, :cond_0

    .line 1108
    :goto_0
    return-void

    .line 1101
    :cond_0
    invoke-virtual {p0}, Landroid/view/GLES20Canvas;->save()I

    .line 1102
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/view/GLES20Canvas;->translate(FF)V

    .line 1103
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 1104
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/view/GLES20Canvas;->scale(FF)V

    .line 1106
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/GLES20Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 1107
    invoke-virtual {p0}, Landroid/view/GLES20Canvas;->restore()V

    goto :goto_0
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "dst"    # Landroid/graphics/RectF;

    .prologue
    .line 1112
    iget-boolean v0, p1, Landroid/graphics/Picture;->createdFromStream:Z

    if-eqz v0, :cond_0

    .line 1123
    :goto_0
    return-void

    .line 1116
    :cond_0
    invoke-virtual {p0}, Landroid/view/GLES20Canvas;->save()I

    .line 1117
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroid/view/GLES20Canvas;->translate(FF)V

    .line 1118
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 1119
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/GLES20Canvas;->scale(FF)V

    .line 1121
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/GLES20Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 1122
    invoke-virtual {p0}, Landroid/view/GLES20Canvas;->restore()V

    goto :goto_0
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v2, 0x0

    .line 1127
    invoke-direct {p0}, Landroid/view/GLES20Canvas;->getPointStorage()[F

    move-result-object v0

    .line 1128
    .local v0, "point":[F
    aput p1, v0, v2

    .line 1129
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1130
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1, p3}, Landroid/view/GLES20Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 1131
    return-void
.end method

.method public drawPoints([FIILandroid/graphics/Paint;)V
    .locals 3
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1140
    const/4 v1, 0x2

    if-ge p3, v1, :cond_1

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    const/4 v1, 0x6

    invoke-direct {p0, p4, v1}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;I)I

    move-result v0

    .line 1144
    .local v0, "modifiers":I
    :try_start_0
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, p4, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, p1, p2, p3, v2}, Landroid/view/GLES20Canvas;->nDrawPoints(I[FIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    if-eqz v0, :cond_0

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v0}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v2, v0}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_2
    throw v1
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .locals 2
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1135
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/view/GLES20Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 1136
    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # [F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1174
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    array-length v1, p2

    if-le v0, v1, :cond_0

    .line 1175
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1178
    :cond_0
    invoke-direct {p0, p3}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v6

    .line 1180
    .local v6, "modifiers":I
    :try_start_0
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v5, p3, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nDrawPosText(ILjava/lang/String;II[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    if-eqz v6, :cond_1

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v6}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 1184
    :cond_1
    return-void

    .line 1182
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v6}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_2
    throw v0
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "pos"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1156
    if-ltz p2, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    mul-int/lit8 v0, p3, 0x2

    array-length v1, p4

    if-le v0, v1, :cond_1

    .line 1157
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1160
    :cond_1
    invoke-direct {p0, p5}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v6

    .line 1162
    .local v6, "modifiers":I
    :try_start_0
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nDrawPosText(I[CII[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1164
    if-eqz v6, :cond_2

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v6}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 1166
    :cond_2
    return-void

    .line 1164
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v6}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_3
    throw v0
.end method

.method public drawRGB(III)V
    .locals 2
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 1215
    const/high16 v0, -0x1000000

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/GLES20Canvas;->drawColor(I)V

    .line 1216
    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1191
    cmpl-float v0, p1, p3

    if-eqz v0, :cond_0

    cmpl-float v0, p2, p4

    if-nez v0, :cond_1

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1192
    :cond_1
    const/4 v0, 0x6

    invoke-direct {p0, p5, v0}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;I)I

    move-result v6

    .line 1194
    .local v6, "modifiers":I
    :try_start_0
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nDrawRect(IFFFFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1196
    if-eqz v6, :cond_0

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v6}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v6}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_2
    throw v0
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1205
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/GLES20Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1206
    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "r"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1210
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/GLES20Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1211
    return-void
.end method

.method drawRects([FILandroid/graphics/Paint;)V
    .locals 3
    .param p1, "rects"    # [F
    .param p2, "count"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1075
    const/4 v1, 0x6

    invoke-direct {p0, p3, v1}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;I)I

    move-result v0

    .line 1077
    .local v0, "modifiers":I
    :try_start_0
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, p3, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, p1, p2, v2}, Landroid/view/GLES20Canvas;->nDrawRects(I[FII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    if-eqz v0, :cond_0

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v0}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 1081
    :cond_0
    return-void

    .line 1079
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v2, v0}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_1
    throw v1
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 9
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1220
    const/4 v0, 0x6

    invoke-direct {p0, p4, v0}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;I)I

    move-result v8

    .line 1222
    .local v8, "modifiers":I
    :try_start_0
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v7, p4, Landroid/graphics/Paint;->mNativePaint:I

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v7}, Landroid/view/GLES20Canvas;->nDrawRoundRect(IFFFFFFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    if-eqz v8, :cond_0

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v8}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 1227
    :cond_0
    return-void

    .line 1225
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_1

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v8}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_1
    throw v0
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1251
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v9

    .line 1253
    .local v9, "modifiers":I
    :try_start_0
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_0

    instance-of v1, p1, Landroid/text/SpannedString;

    if-nez v1, :cond_0

    instance-of v1, p1, Landroid/text/SpannableString;

    if-eqz v1, :cond_2

    .line 1255
    :cond_0
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    iget v7, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v8}, Landroid/view/GLES20Canvas;->nDrawText(ILjava/lang/String;IIFFII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    :goto_0
    if-eqz v9, :cond_1

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v9}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 1270
    :cond_1
    return-void

    .line 1257
    :cond_2
    :try_start_1
    instance-of v1, p1, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_4

    .line 1258
    move-object v0, p1

    check-cast v0, Landroid/text/GraphicsOperations;

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1268
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    iget v3, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v3, v9}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_3
    throw v1

    .line 1261
    :cond_4
    sub-int v1, p3, p2

    :try_start_2
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    .line 1262
    .local v2, "buf":[C
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v2, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1263
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    const/4 v3, 0x0

    sub-int v4, p3, p2

    move-object/from16 v0, p6

    iget v7, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object/from16 v0, p6

    iget v8, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v8}, Landroid/view/GLES20Canvas;->nDrawText(I[CIIFFII)V

    .line 1265
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1291
    invoke-direct {p0, p4}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v8

    .line 1293
    .local v8, "modifiers":I
    :try_start_0
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v6, p4, Landroid/graphics/Paint;->mBidiFlags:I

    iget v7, p4, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v7}, Landroid/view/GLES20Canvas;->nDrawText(ILjava/lang/String;IIFFII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1296
    if-eqz v8, :cond_0

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v8}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 1298
    :cond_0
    return-void

    .line 1296
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_1

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v8}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_1
    throw v0
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1274
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 1275
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1278
    :cond_0
    invoke-direct {p0, p6}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v8

    .line 1280
    .local v8, "modifiers":I
    :try_start_0
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v6, p6, Landroid/graphics/Paint;->mBidiFlags:I

    iget v7, p6, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Landroid/view/GLES20Canvas;->nDrawText(ILjava/lang/String;IIFFII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1282
    if-eqz v8, :cond_1

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v8}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 1284
    :cond_1
    return-void

    .line 1282
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v8}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_2
    throw v0
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 9
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1234
    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 1235
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1238
    :cond_0
    invoke-direct {p0, p6}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v8

    .line 1240
    .local v8, "modifiers":I
    :try_start_0
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v6, p6, Landroid/graphics/Paint;->mBidiFlags:I

    iget v7, p6, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Landroid/view/GLES20Canvas;->nDrawText(I[CIIFFII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1242
    if-eqz v8, :cond_1

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v8}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 1244
    :cond_1
    return-void

    .line 1242
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v8}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_2
    throw v0
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1321
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1330
    :cond_0
    :goto_0
    return-void

    .line 1323
    :cond_1
    invoke-direct {p0, p5}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v9

    .line 1325
    .local v9, "modifiers":I
    :try_start_0
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p2, Landroid/graphics/Path;->mNativePath:I

    iget v7, p5, Landroid/graphics/Paint;->mBidiFlags:I

    iget v8, p5, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v8}, Landroid/view/GLES20Canvas;->nDrawTextOnPath(ILjava/lang/String;IIIFFII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1328
    if-eqz v9, :cond_0

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v9}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v9}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_2
    throw v0
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 11
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "path"    # Landroid/graphics/Path;
    .param p5, "hOffset"    # F
    .param p6, "vOffset"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1303
    if-ltz p2, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 1304
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1307
    :cond_1
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v10

    .line 1309
    .local v10, "modifiers":I
    :try_start_0
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v5, p4, Landroid/graphics/Path;->mNativePath:I

    move-object/from16 v0, p7

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v9}, Landroid/view/GLES20Canvas;->nDrawTextOnPath(I[CIIIFFII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1312
    if-eqz v10, :cond_2

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v10}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 1314
    :cond_2
    return-void

    .line 1312
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_3

    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v2, v10}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_3
    throw v1
.end method

.method public drawTextRun(Ljava/lang/CharSequence;IIIIFFILandroid/graphics/Paint;)V
    .locals 13
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "dir"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1360
    or-int v2, p2, p3

    sub-int v4, p3, p2

    or-int/2addr v2, v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v4, v4, p3

    or-int/2addr v2, v4

    if-gez v2, :cond_0

    .line 1361
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1364
    :cond_0
    move-object/from16 v0, p9

    invoke-direct {p0, v0}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v12

    .line 1366
    .local v12, "modifiers":I
    if-nez p8, :cond_3

    const/4 v10, 0x0

    .line 1367
    .local v10, "flags":I
    :goto_0
    :try_start_0
    instance-of v2, p1, Ljava/lang/String;

    if-nez v2, :cond_1

    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_1

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_4

    .line 1369
    :cond_1
    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p9

    iget v11, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v2 .. v11}, Landroid/view/GLES20Canvas;->nDrawTextRun(ILjava/lang/String;IIIIFFII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1384
    :goto_1
    if-eqz v12, :cond_2

    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v2, v12}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 1386
    :cond_2
    return-void

    .line 1366
    .end local v10    # "flags":I
    :cond_3
    const/4 v10, 0x1

    goto :goto_0

    .line 1371
    .restart local v10    # "flags":I
    :cond_4
    :try_start_1
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_6

    .line 1372
    move-object v0, p1

    check-cast v0, Landroid/text/GraphicsOperations;

    move-object v2, v0

    move-object v3, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Landroid/text/GraphicsOperations;->drawTextRun(Landroid/graphics/Canvas;IIIIFFILandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1384
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_5

    iget v4, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v4, v12}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_5
    throw v2

    .line 1375
    :cond_6
    sub-int v7, p5, p4

    .line 1376
    .local v7, "contextLen":I
    sub-int v5, p3, p2

    .line 1377
    .local v5, "len":I
    :try_start_2
    invoke-static {v7}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v3

    .line 1378
    .local v3, "buf":[C
    const/4 v2, 0x0

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {p1, v0, v1, v3, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1379
    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    sub-int v4, p2, p4

    const/4 v6, 0x0

    move-object/from16 v0, p9

    iget v11, v0, Landroid/graphics/Paint;->mNativePaint:I

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v2 .. v11}, Landroid/view/GLES20Canvas;->nDrawTextRun(I[CIIIIFFII)V

    .line 1381
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->recycle([C)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public drawTextRun([CIIIIFFILandroid/graphics/Paint;)V
    .locals 12
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I
    .param p5, "contextCount"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "dir"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1338
    or-int v1, p2, p3

    array-length v2, p1

    sub-int/2addr v2, p2

    sub-int/2addr v2, p3

    or-int/2addr v1, v2

    if-gez v1, :cond_0

    .line 1339
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1341
    :cond_0
    if-eqz p8, :cond_1

    const/4 v1, 0x1

    move/from16 v0, p8

    if-eq v0, v1, :cond_1

    .line 1342
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown direction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1345
    :cond_1
    move-object/from16 v0, p9

    invoke-direct {p0, v0}, Landroid/view/GLES20Canvas;->setupModifiers(Landroid/graphics/Paint;)I

    move-result v11

    .line 1347
    .local v11, "modifiers":I
    :try_start_0
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    move-object/from16 v0, p9

    iget v10, v0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v10}, Landroid/view/GLES20Canvas;->nDrawTextRun(I[CIIIIFFII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    if-eqz v11, :cond_2

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v11}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 1352
    :cond_2
    return-void

    .line 1350
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_3

    iget v2, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v2, v11}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_3
    throw v1
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "mode"    # Landroid/graphics/Canvas$VertexMode;
    .param p2, "vertexCount"    # I
    .param p3, "verts"    # [F
    .param p4, "vertOffset"    # I
    .param p5, "texs"    # [F
    .param p6, "texOffset"    # I
    .param p7, "colors"    # [I
    .param p8, "colorOffset"    # I
    .param p9, "indices"    # [S
    .param p10, "indexOffset"    # I
    .param p11, "indexCount"    # I
    .param p12, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1396
    return-void
.end method

.method flushLayerUpdates()V
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nFlushLayerUpdates(I)V

    .line 173
    return-void
.end method

.method public getClipBounds(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 549
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nGetClipBounds(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method getDisplayList(I)I
    .locals 1
    .param p1, "displayList"    # I

    .prologue
    .line 406
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nGetDisplayList(II)I

    move-result v0

    return v0
.end method

.method public getDrawFilter()Landroid/graphics/DrawFilter;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Landroid/view/GLES20Canvas;->mFilter:Landroid/graphics/DrawFilter;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Landroid/view/GLES20Canvas;->mHeight:I

    return v0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 617
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nGetMatrix(II)V

    .line 618
    return-void
.end method

.method public getMaximumBitmapHeight()I
    .locals 1

    .prologue
    .line 227
    invoke-static {}, Landroid/view/GLES20Canvas;->nGetMaximumTextureHeight()I

    move-result v0

    return v0
.end method

.method public getMaximumBitmapWidth()I
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Landroid/view/GLES20Canvas;->nGetMaximumTextureWidth()I

    move-result v0

    return v0
.end method

.method getOverdraw()F
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nGetOverdraw(I)F

    move-result v0

    return v0
.end method

.method getRenderer()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    return v0
.end method

.method public getSaveCount()I
    .locals 1

    .prologue
    .line 723
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nGetSaveCount(I)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Landroid/view/GLES20Canvas;->mWidth:I

    return v0
.end method

.method interrupt()V
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nInterrupt(I)V

    .line 442
    return-void
.end method

.method public invokeFunctors(Landroid/graphics/Rect;)I
    .locals 1
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 314
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nInvokeFunctors(ILandroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Landroid/view/GLES20Canvas;->mOpaque:Z

    return v0
.end method

.method public onPostDraw()V
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nFinish(I)V

    .line 271
    return-void
.end method

.method public onPreDraw(Landroid/graphics/Rect;)I
    .locals 6
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 256
    if-eqz p1, :cond_0

    .line 257
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-boolean v5, p0, Landroid/view/GLES20Canvas;->mOpaque:Z

    invoke-static/range {v0 .. v5}, Landroid/view/GLES20Canvas;->nPrepareDirty(IIIIIZ)I

    move-result v0

    .line 260
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget-boolean v1, p0, Landroid/view/GLES20Canvas;->mOpaque:Z

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nPrepare(IZ)I

    move-result v0

    goto :goto_0
.end method

.method outputDisplayList(Landroid/view/DisplayList;)V
    .locals 2
    .param p1, "displayList"    # Landroid/view/DisplayList;

    .prologue
    .line 413
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    check-cast p1, Landroid/view/GLES20DisplayList;

    .end local p1    # "displayList":Landroid/view/DisplayList;
    invoke-virtual {p1}, Landroid/view/GLES20DisplayList;->getNativeDisplayList()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nOutputDisplayList(II)V

    .line 414
    return-void
.end method

.method pushLayerUpdate(Landroid/view/HardwareLayer;)V
    .locals 2
    .param p1, "layer"    # Landroid/view/HardwareLayer;

    .prologue
    .line 162
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    check-cast p1, Landroid/view/GLES20RenderLayer;

    .end local p1    # "layer":Landroid/view/HardwareLayer;
    iget v1, p1, Landroid/view/GLES20RenderLayer;->mLayer:I

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nPushLayerUpdate(II)V

    .line 163
    return-void
.end method

.method public quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "type"    # Landroid/graphics/Canvas$EdgeType;

    .prologue
    .line 556
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/view/GLES20Canvas;->nQuickReject(IFFFF)Z

    move-result v0

    return v0
.end method

.method public quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 6
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "type"    # Landroid/graphics/Canvas$EdgeType;

    .prologue
    .line 564
    invoke-direct {p0}, Landroid/view/GLES20Canvas;->getPathBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 565
    .local v0, "pathBounds":Landroid/graphics/RectF;
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 566
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/GLES20Canvas;->nQuickReject(IFFFF)Z

    move-result v1

    return v1
.end method

.method public quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 5
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "type"    # Landroid/graphics/Canvas$EdgeType;

    .prologue
    .line 572
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/GLES20Canvas;->nQuickReject(IFFFF)Z

    move-result v0

    return v0
.end method

.method protected resetDisplayListRenderer()V
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nResetDisplayListRenderer(I)V

    .line 123
    return-void
.end method

.method public restore()V
    .locals 1

    .prologue
    .line 709
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nRestore(I)V

    .line 710
    return-void
.end method

.method public restoreToCount(I)V
    .locals 1
    .param p1, "saveCount"    # I

    .prologue
    .line 716
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nRestoreToCount(II)V

    .line 717
    return-void
.end method

.method resume()V
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nResume(I)V

    .line 446
    return-void
.end method

.method public rotate(F)V
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 595
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nRotate(IF)V

    .line 596
    return-void
.end method

.method public save()I
    .locals 2

    .prologue
    .line 635
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nSave(II)I

    move-result v0

    return v0
.end method

.method public save(I)I
    .locals 1
    .param p1, "saveFlags"    # I

    .prologue
    .line 640
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nSave(II)I

    move-result v0

    return v0
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;I)I
    .locals 9
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "saveFlags"    # I

    .prologue
    const/4 v0, 0x0

    .line 667
    cmpg-float v1, p1, p3

    if-gez v1, :cond_4

    cmpg-float v1, p2, p4

    if-gez v1, :cond_4

    .line 669
    if-eqz p5, :cond_1

    invoke-direct {p0, p5}, Landroid/view/GLES20Canvas;->setupColorFilter(Landroid/graphics/Paint;)I

    move-result v8

    .line 671
    .local v8, "modifier":I
    :goto_0
    if-nez p5, :cond_2

    move v5, v0

    .line 672
    .local v5, "nativePaint":I
    :goto_1
    :try_start_0
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/view/GLES20Canvas;->nSaveLayer(IFFFFII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 674
    .local v7, "count":I
    if-eqz v8, :cond_0

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v8}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    .line 678
    .end local v5    # "nativePaint":I
    .end local v7    # "count":I
    .end local v8    # "modifier":I
    :cond_0
    :goto_2
    return v7

    :cond_1
    move v8, v0

    .line 669
    goto :goto_0

    .line 671
    .restart local v8    # "modifier":I
    :cond_2
    :try_start_1
    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 674
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v8}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_3
    throw v0

    .line 678
    .end local v8    # "modifier":I
    :cond_4
    invoke-virtual {p0, p6}, Landroid/view/GLES20Canvas;->save(I)I

    move-result v7

    goto :goto_2
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
    .locals 10
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "saveFlags"    # I

    .prologue
    const/4 v0, 0x0

    .line 647
    if-eqz p1, :cond_1

    .line 648
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/view/GLES20Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 659
    :cond_0
    :goto_0
    return v7

    .line 652
    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Landroid/view/GLES20Canvas;->setupColorFilter(Landroid/graphics/Paint;)I

    move-result v8

    .line 654
    .local v8, "modifier":I
    :goto_1
    if-nez p2, :cond_3

    move v9, v0

    .line 655
    .local v9, "nativePaint":I
    :goto_2
    :try_start_0
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v9, p3}, Landroid/view/GLES20Canvas;->nSaveLayer(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 657
    .local v7, "count":I
    if-eqz v8, :cond_0

    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, v8}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    goto :goto_0

    .end local v7    # "count":I
    .end local v8    # "modifier":I
    .end local v9    # "nativePaint":I
    :cond_2
    move v8, v0

    .line 652
    goto :goto_1

    .line 654
    .restart local v8    # "modifier":I
    :cond_3
    :try_start_1
    iget v9, p2, Landroid/graphics/Paint;->mNativePaint:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 657
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1, v8}, Landroid/view/GLES20Canvas;->nResetModifiers(II)V

    :cond_4
    throw v0
.end method

.method public saveLayerAlpha(FFFFII)I
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "alpha"    # I
    .param p6, "saveFlags"    # I

    .prologue
    .line 698
    cmpg-float v0, p1, p3

    if-gez v0, :cond_0

    cmpg-float v0, p2, p4

    if-gez v0, :cond_0

    .line 699
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/view/GLES20Canvas;->nSaveLayerAlpha(IFFFFII)I

    move-result v0

    .line 701
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p6}, Landroid/view/GLES20Canvas;->save(I)I

    move-result v0

    goto :goto_0
.end method

.method public saveLayerAlpha(Landroid/graphics/RectF;II)I
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "alpha"    # I
    .param p3, "saveFlags"    # I

    .prologue
    .line 686
    if-eqz p1, :cond_0

    .line 687
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/view/GLES20Canvas;->saveLayerAlpha(FFFFII)I

    move-result v0

    .line 690
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p2, p3}, Landroid/view/GLES20Canvas;->nSaveLayerAlpha(III)I

    move-result v0

    goto :goto_0
.end method

.method public scale(FF)V
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 602
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1, p2}, Landroid/view/GLES20Canvas;->nScale(IFF)V

    .line 603
    return-void
.end method

.method setCountOverdrawEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 290
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nSetCountOverdrawEnabled(IZ)V

    .line 291
    return-void
.end method

.method public setDrawFilter(Landroid/graphics/DrawFilter;)V
    .locals 4
    .param p1, "filter"    # Landroid/graphics/DrawFilter;

    .prologue
    .line 734
    iput-object p1, p0, Landroid/view/GLES20Canvas;->mFilter:Landroid/graphics/DrawFilter;

    .line 735
    if-nez p1, :cond_1

    .line 736
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v1}, Landroid/view/GLES20Canvas;->nResetPaintFilter(I)V

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    instance-of v1, p1, Landroid/graphics/PaintFlagsDrawFilter;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 738
    check-cast v0, Landroid/graphics/PaintFlagsDrawFilter;

    .line 739
    .local v0, "flagsFilter":Landroid/graphics/PaintFlagsDrawFilter;
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    iget v2, v0, Landroid/graphics/PaintFlagsDrawFilter;->clearBits:I

    iget v3, v0, Landroid/graphics/PaintFlagsDrawFilter;->setBits:I

    invoke-static {v1, v2, v3}, Landroid/view/GLES20Canvas;->nSetupPaintFilter(III)V

    goto :goto_0
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 609
    iget v1, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Landroid/view/GLES20Canvas;->nSetMatrix(II)V

    .line 610
    return-void

    .line 609
    :cond_0
    iget v0, p1, Landroid/graphics/Matrix;->native_instance:I

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/view/HardwareCanvas;->setName(Ljava/lang/String;)V

    .line 151
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1}, Landroid/view/GLES20Canvas;->nSetName(ILjava/lang/String;)V

    .line 152
    return-void
.end method

.method public setViewport(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 246
    iput p1, p0, Landroid/view/GLES20Canvas;->mWidth:I

    .line 247
    iput p2, p0, Landroid/view/GLES20Canvas;->mHeight:I

    .line 249
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1, p2}, Landroid/view/GLES20Canvas;->nSetViewport(III)V

    .line 250
    return-void
.end method

.method public skew(FF)V
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 588
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1, p2}, Landroid/view/GLES20Canvas;->nSkew(IFF)V

    .line 589
    return-void
.end method

.method public translate(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v1, 0x0

    .line 581
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Landroid/view/GLES20Canvas;->mRenderer:I

    invoke-static {v0, p1, p2}, Landroid/view/GLES20Canvas;->nTranslate(IFF)V

    .line 582
    :cond_1
    return-void
.end method
