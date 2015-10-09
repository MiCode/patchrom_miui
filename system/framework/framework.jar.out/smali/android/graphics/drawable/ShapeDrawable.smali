.class public Landroid/graphics/drawable/ShapeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ShapeDrawable$1;,
        Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;,
        Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    }
.end annotation


# instance fields
.field private mMutated:Z

.field private mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;)V

    .line 65
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 79
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ShapeDrawable$ShapeState;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;)V

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/graphics/drawable/ShapeDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/ShapeDrawable$ShapeState;
    .param p2, "x1"    # Landroid/graphics/drawable/ShapeDrawable$1;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/shapes/Shape;)V
    .locals 1
    .param p1, "s"    # Landroid/graphics/drawable/shapes/Shape;

    .prologue
    .line 73
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;)V

    .line 75
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput-object p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    .line 76
    return-void
.end method

.method private static modulateAlpha(II)I
    .locals 2
    .param p0, "paintAlpha"    # I
    .param p1, "alpha"    # I

    .prologue
    .line 199
    ushr-int/lit8 v1, p1, 0x7

    add-int v0, p1, v1

    .line 200
    .local v0, "scale":I
    mul-int v1, p0, v0

    ushr-int/lit8 v1, v1, 0x8

    return v1
.end method

.method private updateShape()V
    .locals 6

    .prologue
    .line 362
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    if-eqz v3, :cond_0

    .line 363
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 364
    .local v1, "r":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 365
    .local v2, "w":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 367
    .local v0, "h":I
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    int-to-float v4, v2

    int-to-float v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 368
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    if-eqz v3, :cond_0

    .line 369
    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v4, v4, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    invoke-virtual {v4, v2, v0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;->resize(II)Landroid/graphics/Shader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 372
    .end local v0    # "h":I
    .end local v1    # "r":Landroid/graphics/Rect;
    .end local v2    # "w":I
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 373
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 215
    .local v3, "r":Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v1, v4, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    .line 217
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 218
    .local v2, "prevAlpha":I
    iget-object v4, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget v4, v4, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    invoke-static {v2, v4}, Landroid/graphics/drawable/ShapeDrawable;->modulateAlpha(II)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 221
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v4

    if-nez v4, :cond_0

    iget-boolean v4, v1, Landroid/graphics/Paint;->hasShadow:Z

    if-eqz v4, :cond_1

    .line 222
    :cond_0
    iget-object v4, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v4, v4, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    if-eqz v4, :cond_2

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 225
    .local v0, "count":I
    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 226
    iget-object v4, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v4, v4, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {p0, v4, p1, v1}, Landroid/graphics/drawable/ShapeDrawable;->onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 227
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 234
    .end local v0    # "count":I
    :cond_1
    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 235
    return-void

    .line 229
    :cond_2
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 239
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget v1, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    .line 378
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 3

    .prologue
    .line 269
    iget-object v2, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v2, v2, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    if-nez v2, :cond_1

    .line 270
    iget-object v2, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v1, v2, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    .line 271
    .local v1, "p":Landroid/graphics/Paint;
    invoke-virtual {v1}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v2

    if-nez v2, :cond_1

    .line 272
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 273
    .local v0, "alpha":I
    if-nez v0, :cond_0

    .line 274
    const/4 v2, -0x2

    .line 282
    .end local v0    # "alpha":I
    .end local v1    # "p":Landroid/graphics/Paint;
    :goto_0
    return v2

    .line 276
    .restart local v0    # "alpha":I
    .restart local v1    # "p":Landroid/graphics/Paint;
    :cond_0
    const/16 v2, 0xff

    if-ne v0, v2, :cond_1

    .line 277
    const/4 v2, -0x1

    goto :goto_0

    .line 282
    .end local v0    # "alpha":I
    .end local v1    # "p":Landroid/graphics/Paint;
    :cond_1
    const/4 v2, -0x3

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 190
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 192
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getShaderFactory()Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    return-object v0
.end method

.method public getShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 326
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 328
    sget-object v6, Lcom/android/internal/R$styleable;->ShapeDrawable:[I

    invoke-virtual {p1, p3, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 330
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v6, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v6, v6, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    .line 331
    .local v1, "color":I
    invoke-virtual {v0, v11, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 332
    iget-object v6, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v6, v6, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 334
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 335
    .local v2, "dither":Z
    iget-object v6, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v6, v6, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 337
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 339
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 342
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 345
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 347
    .local v4, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    if-eq v5, v9, :cond_2

    if-ne v5, v11, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v4, :cond_2

    .line 348
    :cond_1
    if-ne v5, v10, :cond_0

    .line 352
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0, v3, p1, p2, p3}, Landroid/graphics/drawable/ShapeDrawable;->inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 355
    const-string v6, "drawable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for ShapeDrawable "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 359
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "r"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 304
    const-string/jumbo v3, "padding"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    sget-object v3, Lcom/android/internal/R$styleable;->ShapeDrawablePadding:[I

    invoke-virtual {p2, p4, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 307
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    invoke-virtual {p0, v3, v4, v5, v2}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    .line 316
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 320
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 383
    iget-boolean v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mMutated:Z

    if-nez v1, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 384
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v1, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    .line 385
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    .line 389
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v1, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    .line 390
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v3, v3, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    .line 395
    :goto_1
    :try_start_0
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v2, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v2, v2, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {v2}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    iput-boolean v4, p0, Landroid/graphics/drawable/ShapeDrawable;->mMutated:Z

    .line 401
    .end local p0    # "this":Landroid/graphics/drawable/ShapeDrawable;
    :cond_0
    :goto_2
    return-object p0

    .line 387
    .restart local p0    # "this":Landroid/graphics/drawable/ShapeDrawable;
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 392
    :cond_2
    iget-object v1, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    goto :goto_1

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 p0, 0x0

    goto :goto_2
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 294
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;->updateShape()V

    .line 295
    return-void
.end method

.method protected onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "shape"    # Landroid/graphics/drawable/shapes/Shape;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 209
    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 210
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 252
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    .line 253
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 254
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 263
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 264
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 265
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 287
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 288
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 289
    return-void
.end method

.method public setIntrinsicHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 174
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    .line 175
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 176
    return-void
.end method

.method public setIntrinsicWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 164
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    .line 165
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 166
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 131
    or-int v0, p1, p2

    or-int/2addr v0, p3

    or-int/2addr v0, p4

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    .line 139
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 140
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    .line 137
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public setPadding(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    .line 155
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 156
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    .line 153
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iget-object v0, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V
    .locals 1
    .param p1, "fact"    # Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    .prologue
    .line 104
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput-object p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    .line 105
    return-void
.end method

.method public setShape(Landroid/graphics/drawable/shapes/Shape;)V
    .locals 1
    .param p1, "s"    # Landroid/graphics/drawable/shapes/Shape;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable;->mShapeState:Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    iput-object p1, v0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    .line 94
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;->updateShape()V

    .line 95
    return-void
.end method
