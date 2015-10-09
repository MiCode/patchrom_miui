.class Landroid/app/WallpaperManager$FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FastBitmapDrawable"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mDrawLeft:I

.field private mDrawTop:I

.field private final mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mWidth:I


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 148
    iput-object p1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    .line 152
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    iget v1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/app/WallpaperManager$FastBitmapDrawable;->setBounds(IIII)V

    .line 154
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 155
    iget-object v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 156
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/Bitmap;
    .param p2, "x1"    # Landroid/app/WallpaperManager$1;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 160
    iget-object v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mDrawLeft:I

    int-to-float v1, v1

    iget v2, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mDrawTop:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 161
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 176
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported with this drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBounds(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 170
    sub-int v0, p3, p1

    iget v1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mDrawLeft:I

    .line 171
    sub-int v0, p4, p2

    iget v1, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iput v0, p0, Landroid/app/WallpaperManager$FastBitmapDrawable;->mDrawTop:I

    .line 172
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 181
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported with this drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDither(Z)V
    .locals 2
    .param p1, "dither"    # Z

    .prologue
    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported with this drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFilterBitmap(Z)V
    .locals 2
    .param p1, "filter"    # Z

    .prologue
    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported with this drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
