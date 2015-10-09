.class public Landroid/gesture/OrientedBoundingBox;
.super Ljava/lang/Object;
.source "OrientedBoundingBox.java"


# instance fields
.field public final centerX:F

.field public final centerY:F

.field public final height:F

.field public final orientation:F

.field public final squareness:F

.field public final width:F


# direct methods
.method constructor <init>(FFFFF)V
    .locals 3
    .param p1, "angle"    # F
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "w"    # F
    .param p5, "h"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroid/gesture/OrientedBoundingBox;->orientation:F

    .line 38
    iput p4, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    .line 39
    iput p5, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    .line 40
    iput p2, p0, Landroid/gesture/OrientedBoundingBox;->centerX:F

    .line 41
    iput p3, p0, Landroid/gesture/OrientedBoundingBox;->centerY:F

    .line 42
    div-float v0, p4, p5

    .line 43
    .local v0, "ratio":F
    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    .line 44
    div-float v1, v2, v0

    iput v1, p0, Landroid/gesture/OrientedBoundingBox;->squareness:F

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iput v0, p0, Landroid/gesture/OrientedBoundingBox;->squareness:F

    goto :goto_0
.end method


# virtual methods
.method public toPath()Landroid/graphics/Path;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 56
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 57
    .local v1, "path":Landroid/graphics/Path;
    const/4 v3, 0x2

    new-array v2, v3, [F

    .line 58
    .local v2, "point":[F
    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    neg-float v3, v3

    div-float/2addr v3, v5

    aput v3, v2, v6

    .line 59
    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    div-float/2addr v3, v5

    aput v3, v2, v7

    .line 60
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 61
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->orientation:F

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 62
    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->centerX:F

    iget v4, p0, Landroid/gesture/OrientedBoundingBox;->centerY:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 63
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 64
    aget v3, v2, v6

    aget v4, v2, v7

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 66
    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    neg-float v3, v3

    div-float/2addr v3, v5

    aput v3, v2, v6

    .line 67
    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    neg-float v3, v3

    div-float/2addr v3, v5

    aput v3, v2, v7

    .line 68
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 69
    aget v3, v2, v6

    aget v4, v2, v7

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 71
    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    div-float/2addr v3, v5

    aput v3, v2, v6

    .line 72
    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    neg-float v3, v3

    div-float/2addr v3, v5

    aput v3, v2, v7

    .line 73
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 74
    aget v3, v2, v6

    aget v4, v2, v7

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    div-float/2addr v3, v5

    aput v3, v2, v6

    .line 77
    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    div-float/2addr v3, v5

    aput v3, v2, v7

    .line 78
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 79
    aget v3, v2, v6

    aget v4, v2, v7

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 81
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 83
    return-object v1
.end method
