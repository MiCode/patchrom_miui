.class public final Landroid/media/videoeditor/VideoEditor$OverlayData;
.super Ljava/lang/Object;
.source "VideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/videoeditor/VideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OverlayData"
.end annotation


# static fields
.field private static final sResizePaint:Landroid/graphics/Paint;


# instance fields
.field private mClear:Z

.field private mOverlayBitmap:Landroid/graphics/Bitmap;

.field private mRenderingMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 173
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Landroid/media/videoeditor/VideoEditor$OverlayData;->sResizePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 180
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mRenderingMode:I

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mClear:Z

    .line 182
    return-void
.end method


# virtual methods
.method public needsRendering()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mClear:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 192
    :cond_0
    return-void
.end method

.method public renderOverlay(Landroid/graphics/Bitmap;)V
    .locals 14
    .param p1, "destBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v13, 0x0

    .line 230
    iget-boolean v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mClear:Z

    if-eqz v11, :cond_1

    .line 231
    invoke-virtual {p1, v13}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_0

    .line 233
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 236
    .local v7, "overlayCanvas":Landroid/graphics/Canvas;
    iget v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mRenderingMode:I

    packed-switch v11, :pswitch_data_0

    .line 306
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Rendering mode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mRenderingMode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 238
    :pswitch_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    invoke-direct {v3, v13, v13, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 240
    .local v3, "destRect":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-direct {v9, v13, v13, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 310
    .local v9, "srcRect":Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {p1, v13}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 311
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    sget-object v12, Landroid/media/videoeditor/VideoEditor$OverlayData;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v11, v9, v3, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 313
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 248
    .end local v3    # "destRect":Landroid/graphics/Rect;
    .end local v9    # "srcRect":Landroid/graphics/Rect;
    :pswitch_1
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v1, v11, v12

    .line 251
    .local v1, "aROverlayImage":F
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v0, v11, v12

    .line 254
    .local v0, "aRCanvas":F
    cmpl-float v11, v1, v0

    if-lez v11, :cond_2

    .line 255
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    mul-int/2addr v11, v12

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    div-int v5, v11, v12

    .line 257
    .local v5, "newHeight":I
    const/4 v4, 0x0

    .line 258
    .local v4, "left":I
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    sub-int/2addr v11, v5

    div-int/lit8 v10, v11, 0x2

    .line 259
    .local v10, "top":I
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    .line 260
    .local v8, "right":I
    add-int v2, v10, v5

    .line 270
    .end local v5    # "newHeight":I
    .local v2, "bottom":I
    :goto_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v10, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 271
    .restart local v3    # "destRect":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-direct {v9, v13, v13, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 272
    .restart local v9    # "srcRect":Landroid/graphics/Rect;
    goto :goto_1

    .line 262
    .end local v2    # "bottom":I
    .end local v3    # "destRect":Landroid/graphics/Rect;
    .end local v4    # "left":I
    .end local v8    # "right":I
    .end local v9    # "srcRect":Landroid/graphics/Rect;
    .end local v10    # "top":I
    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    mul-int/2addr v11, v12

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int v6, v11, v12

    .line 264
    .local v6, "newWidth":I
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    sub-int/2addr v11, v6

    div-int/lit8 v4, v11, 0x2

    .line 265
    .restart local v4    # "left":I
    const/4 v10, 0x0

    .line 266
    .restart local v10    # "top":I
    add-int v8, v4, v6

    .line 267
    .restart local v8    # "right":I
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .restart local v2    # "bottom":I
    goto :goto_2

    .line 279
    .end local v0    # "aRCanvas":F
    .end local v1    # "aROverlayImage":F
    .end local v2    # "bottom":I
    .end local v4    # "left":I
    .end local v6    # "newWidth":I
    .end local v8    # "right":I
    .end local v10    # "top":I
    :pswitch_2
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v1, v11, v12

    .line 281
    .restart local v1    # "aROverlayImage":F
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v0, v11, v12

    .line 283
    .restart local v0    # "aRCanvas":F
    cmpg-float v11, v1, v0

    if-gez v11, :cond_3

    .line 284
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    mul-int/2addr v11, v12

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    div-int v5, v11, v12

    .line 287
    .restart local v5    # "newHeight":I
    const/4 v4, 0x0

    .line 288
    .restart local v4    # "left":I
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v11, v5

    div-int/lit8 v10, v11, 0x2

    .line 289
    .restart local v10    # "top":I
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 290
    .restart local v8    # "right":I
    add-int v2, v10, v5

    .line 300
    .end local v5    # "newHeight":I
    .restart local v2    # "bottom":I
    :goto_3
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v4, v10, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 301
    .restart local v9    # "srcRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    invoke-direct {v3, v13, v13, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 302
    .restart local v3    # "destRect":Landroid/graphics/Rect;
    goto/16 :goto_1

    .line 292
    .end local v2    # "bottom":I
    .end local v3    # "destRect":Landroid/graphics/Rect;
    .end local v4    # "left":I
    .end local v8    # "right":I
    .end local v9    # "srcRect":Landroid/graphics/Rect;
    .end local v10    # "top":I
    :cond_3
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    mul-int/2addr v11, v12

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    div-int v6, v11, v12

    .line 294
    .restart local v6    # "newWidth":I
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sub-int/2addr v11, v6

    div-int/lit8 v4, v11, 0x2

    .line 295
    .restart local v4    # "left":I
    const/4 v10, 0x0

    .line 296
    .restart local v10    # "top":I
    add-int v8, v4, v6

    .line 297
    .restart local v8    # "right":I
    iget-object v11, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .restart local v2    # "bottom":I
    goto :goto_3

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method set(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "overlayBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "renderingMode"    # I

    .prologue
    .line 210
    iput-object p1, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 211
    iput p2, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mRenderingMode:I

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mClear:Z

    .line 213
    return-void
.end method

.method setClear()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/videoeditor/VideoEditor$OverlayData;->mClear:Z

    .line 220
    return-void
.end method
