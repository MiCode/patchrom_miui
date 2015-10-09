.class public Landroid/graphics/NinePatch;
.super Ljava/lang/Object;
.source "NinePatch.java"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field public final mNativeChunk:I

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;[B)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "chunk"    # [B

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "chunk"    # [B
    .param p3, "srcName"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    .line 68
    iput-object p3, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->ni()I

    move-result v0

    invoke-static {v0, p2}, Landroid/graphics/NinePatch;->validateNinePatchChunk(I[B)I

    move-result v0

    iput v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:I

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/graphics/NinePatch;)V
    .locals 2
    .param p1, "patch"    # Landroid/graphics/NinePatch;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iget-object v0, p1, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    .line 77
    iget-object v0, p1, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    .line 83
    :cond_0
    iget v0, p1, Landroid/graphics/NinePatch;->mNativeChunk:I

    iput v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:I

    .line 84
    return-void
.end method

.method public static native isNinePatchChunk([B)Z
.end method

.method private static native nativeDraw(ILandroid/graphics/Rect;IIIII)V
.end method

.method private static native nativeDraw(ILandroid/graphics/RectF;IIIII)V
.end method

.method private static native nativeFinalize(I)V
.end method

.method private static native nativeGetTransparentRegion(IILandroid/graphics/Rect;)I
.end method

.method private static native validateNinePatchChunk(I[B)I
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/Rect;

    .prologue
    .line 151
    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 152
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 163
    invoke-virtual {p1, p0, p2, p3}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 164
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/RectF;

    .prologue
    .line 141
    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 142
    return-void
.end method

.method drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 172
    iget v0, p1, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget-object v1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    iget v3, p0, Landroid/graphics/NinePatch;->mNativeChunk:I

    if-eqz p3, :cond_0

    iget v4, p3, Landroid/graphics/Paint;->mNativePaint:I

    :goto_0
    iget v5, p1, Landroid/graphics/Canvas;->mDensity:I

    iget-object v1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget v6, v1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/NinePatch;->nativeDraw(ILandroid/graphics/Rect;IIIII)V

    .line 174
    return-void

    .line 172
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "location"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 167
    iget v0, p1, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget-object v1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    iget v3, p0, Landroid/graphics/NinePatch;->mNativeChunk:I

    if-eqz p3, :cond_0

    iget v4, p3, Landroid/graphics/Paint;->mNativePaint:I

    :goto_0
    iget v5, p1, Landroid/graphics/Canvas;->mDensity:I

    iget-object v1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget v6, v1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/NinePatch;->nativeDraw(ILandroid/graphics/RectF;IIIII)V

    .line 169
    return-void

    .line 167
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 89
    :try_start_0
    iget v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:I

    invoke-static {v0}, Landroid/graphics/NinePatch;->nativeFinalize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDensity()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget v0, v0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getTransparentRegion(Landroid/graphics/Rect;)Landroid/graphics/Region;
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 220
    iget-object v1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->ni()I

    move-result v1

    iget v2, p0, Landroid/graphics/NinePatch;->mNativeChunk:I

    invoke-static {v1, v2, p1}, Landroid/graphics/NinePatch;->nativeGetTransparentRegion(IILandroid/graphics/Rect;)I

    move-result v0

    .line 221
    .local v0, "r":I
    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, v0}, Landroid/graphics/Region;-><init>(I)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public final hasAlpha()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    return v0
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 124
    iput-object p1, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    .line 125
    return-void
.end method
