.class public Lcom/android/settings/LineView;
.super Landroid/view/View;
.source "LineView.java"


# instance fields
.field private mIsVertical:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mStrokeWidth:I

.field private mXWidth:I

.field private mYHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/LineView;->mIsVertical:Z

    .line 15
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/LineView;->mStrokeWidth:I

    .line 19
    invoke-virtual {p0}, Lcom/android/settings/LineView;->init()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/LineView;->mIsVertical:Z

    .line 15
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/LineView;->mStrokeWidth:I

    .line 24
    invoke-virtual {p0}, Lcom/android/settings/LineView;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/LineView;->mIsVertical:Z

    .line 15
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/LineView;->mStrokeWidth:I

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/LineView;->init()V

    .line 30
    return-void
.end method


# virtual methods
.method init()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/LineView;->mPaint:Landroid/graphics/Paint;

    .line 34
    iget-object v0, p0, Lcom/android/settings/LineView;->mPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object v0, p0, Lcom/android/settings/LineView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    iget-object v0, p0, Lcom/android/settings/LineView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 37
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 47
    iget-boolean v0, p0, Lcom/android/settings/LineView;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 48
    iget v0, p0, Lcom/android/settings/LineView;->mXWidth:I

    iget v1, p0, Lcom/android/settings/LineView;->mStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lcom/android/settings/LineView;->mXWidth:I

    iget v3, p0, Lcom/android/settings/LineView;->mStrokeWidth:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/android/settings/LineView;->mYHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/settings/LineView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget v0, p0, Lcom/android/settings/LineView;->mYHeight:I

    iget v1, p0, Lcom/android/settings/LineView;->mStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p0, Lcom/android/settings/LineView;->mXWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/settings/LineView;->mYHeight:I

    iget v1, p0, Lcom/android/settings/LineView;->mStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/settings/LineView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/settings/LineView;->mXWidth:I

    .line 42
    iput p2, p0, Lcom/android/settings/LineView;->mYHeight:I

    .line 43
    return-void
.end method

.method public setOrientation(Z)V
    .locals 0
    .parameter "isVertical"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/settings/LineView;->mIsVertical:Z

    .line 56
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/settings/LineView;->mStrokeWidth:I

    .line 64
    iget-object v0, p0, Lcom/android/settings/LineView;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    return-void
.end method
