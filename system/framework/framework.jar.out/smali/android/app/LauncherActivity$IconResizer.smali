.class public Landroid/app/LauncherActivity$IconResizer;
.super Ljava/lang/Object;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconResizer"
.end annotation


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mIconHeight:I

.field private mIconWidth:I

.field private final mOldBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/app/LauncherActivity;


# direct methods
.method public constructor <init>(Landroid/app/LauncherActivity;)V
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 256
    iput-object p1, p0, Landroid/app/LauncherActivity$IconResizer;->this$0:Landroid/app/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput v1, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    .line 251
    iput v1, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    .line 253
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    .line 254
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Landroid/app/LauncherActivity$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 257
    iget-object v1, p0, Landroid/app/LauncherActivity$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 260
    invoke-virtual {p1}, Landroid/app/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 261
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Landroid/R$dimen;->app_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    iput v1, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    .line 263
    return-void
.end method


# virtual methods
.method public createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 14
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v13, 0x0

    .line 278
    iget v8, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    .line 279
    .local v8, "width":I
    iget v2, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    .line 281
    .local v2, "height":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 282
    .local v4, "iconWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 284
    .local v3, "iconHeight":I
    instance-of v11, p1, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v11, :cond_0

    move-object v5, p1

    .line 285
    check-cast v5, Landroid/graphics/drawable/PaintDrawable;

    .line 286
    .local v5, "painter":Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 287
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 290
    .end local v5    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_0
    if-lez v8, :cond_3

    if-lez v2, :cond_3

    .line 291
    if-lt v8, v4, :cond_1

    if-ge v2, v3, :cond_6

    .line 292
    :cond_1
    int-to-float v11, v4

    int-to-float v12, v3

    div-float v6, v11, v12

    .line 294
    .local v6, "ratio":F
    if-le v4, v3, :cond_4

    .line 295
    int-to-float v11, v8

    div-float/2addr v11, v6

    float-to-int v2, v11

    .line 300
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 302
    .local v0, "c":Landroid/graphics/Bitmap$Config;
    :goto_1
    iget v11, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    iget v12, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    invoke-static {v11, v12, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 303
    .local v7, "thumb":Landroid/graphics/Bitmap;
    iget-object v1, p0, Landroid/app/LauncherActivity$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 304
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 310
    iget-object v11, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 311
    iget v11, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    sub-int/2addr v11, v8

    div-int/lit8 v9, v11, 0x2

    .line 312
    .local v9, "x":I
    iget v11, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    sub-int/2addr v11, v2

    div-int/lit8 v10, v11, 0x2

    .line 313
    .local v10, "y":I
    add-int v11, v9, v8

    add-int v12, v10, v2

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 314
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 315
    iget-object v11, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 316
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    iget-object v11, p0, Landroid/app/LauncherActivity$IconResizer;->this$0:Landroid/app/LauncherActivity;

    invoke-virtual {v11}, Landroid/app/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {p1, v11, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 317
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 334
    .end local v0    # "c":Landroid/graphics/Bitmap$Config;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "ratio":F
    .end local v7    # "thumb":Landroid/graphics/Bitmap;
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_3
    :goto_2
    return-object p1

    .line 296
    .restart local v6    # "ratio":F
    :cond_4
    if-le v3, v4, :cond_2

    .line 297
    int-to-float v11, v2

    mul-float/2addr v11, v6

    float-to-int v8, v11

    goto :goto_0

    .line 300
    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    .line 318
    .end local v6    # "ratio":F
    :cond_6
    if-ge v4, v8, :cond_3

    if-ge v3, v2, :cond_3

    .line 319
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 320
    .restart local v0    # "c":Landroid/graphics/Bitmap$Config;
    iget v11, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    iget v12, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    invoke-static {v11, v12, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 321
    .restart local v7    # "thumb":Landroid/graphics/Bitmap;
    iget-object v1, p0, Landroid/app/LauncherActivity$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 322
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 323
    iget-object v11, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 324
    sub-int v11, v8, v4

    div-int/lit8 v9, v11, 0x2

    .line 325
    .restart local v9    # "x":I
    sub-int v11, v2, v3

    div-int/lit8 v10, v11, 0x2

    .line 326
    .restart local v10    # "y":I
    add-int v11, v9, v4

    add-int v12, v10, v3

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 327
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 328
    iget-object v11, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 329
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    iget-object v11, p0, Landroid/app/LauncherActivity$IconResizer;->this$0:Landroid/app/LauncherActivity;

    invoke-virtual {v11}, Landroid/app/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {p1, v11, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 330
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method
