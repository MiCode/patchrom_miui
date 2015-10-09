.class final Landroid/graphics/drawable/ShapeDrawable$ShapeState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ShapeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShapeState"
.end annotation


# instance fields
.field mAlpha:I

.field mChangingConfigurations:I

.field mIntrinsicHeight:I

.field mIntrinsicWidth:I

.field mPadding:Landroid/graphics/Rect;

.field mPaint:Landroid/graphics/Paint;

.field mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

.field mShape:Landroid/graphics/drawable/shapes/Shape;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;)V
    .locals 2
    .param p1, "orig"    # Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    .prologue
    .line 417
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 414
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    .line 418
    if-eqz p1, :cond_0

    .line 419
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    .line 420
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    .line 421
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    .line 422
    iget v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    iput v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    .line 423
    iget v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    iput v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    .line 424
    iget v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    iput v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    .line 425
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    .line 429
    :goto_0
    return-void

    .line 427
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    goto :goto_0
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 433
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/graphics/drawable/ShapeDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 438
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/graphics/drawable/ShapeDrawable$1;)V

    return-object v0
.end method
