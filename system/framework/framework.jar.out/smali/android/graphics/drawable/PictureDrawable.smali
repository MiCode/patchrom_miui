.class public Landroid/graphics/drawable/PictureDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PictureDrawable.java"


# instance fields
.field private mPicture:Landroid/graphics/Picture;


# direct methods
.method public constructor <init>(Landroid/graphics/Picture;)V
    .locals 0
    .param p1, "picture"    # Landroid/graphics/Picture;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    .line 46
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 68
    iget-object v1, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/graphics/drawable/PictureDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 70
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 71
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 72
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 73
    iget-object v1, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 76
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, -0x3

    return v0
.end method

.method public getPicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 104
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 101
    return-void
.end method

.method public setDither(Z)V
    .locals 0
    .param p1, "dither"    # Z

    .prologue
    .line 98
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 0
    .param p1, "filter"    # Z

    .prologue
    .line 95
    return-void
.end method

.method public setPicture(Landroid/graphics/Picture;)V
    .locals 0
    .param p1, "picture"    # Landroid/graphics/Picture;

    .prologue
    .line 63
    iput-object p1, p0, Landroid/graphics/drawable/PictureDrawable;->mPicture:Landroid/graphics/Picture;

    .line 64
    return-void
.end method
