.class final Landroid/graphics/Matrix$1;
.super Landroid/graphics/Matrix;
.source "Matrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Matrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method


# virtual methods
.method oops()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Matrix can not be modified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postConcat(Landroid/graphics/Matrix;)Z
    .locals 1
    .param p1, "other"    # Landroid/graphics/Matrix;

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public postRotate(F)Z
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public postRotate(FFF)Z
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public postScale(FF)Z
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public postScale(FFFF)Z
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public postSkew(FF)Z
    .locals 1
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public postSkew(FFFF)Z
    .locals 1
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public postTranslate(FF)Z
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public preConcat(Landroid/graphics/Matrix;)Z
    .locals 1
    .param p1, "other"    # Landroid/graphics/Matrix;

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public preRotate(F)Z
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public preRotate(FFF)Z
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public preScale(FF)Z
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public preScale(FFFF)Z
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public preSkew(FF)Z
    .locals 1
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public preSkew(FFFF)Z
    .locals 1
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public preTranslate(FF)Z
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 51
    return-void
.end method

.method public set(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "src"    # Landroid/graphics/Matrix;

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 46
    return-void
.end method

.method public setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .locals 1
    .param p1, "a"    # Landroid/graphics/Matrix;
    .param p2, "b"    # Landroid/graphics/Matrix;

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public setPolyToPoly([FI[FII)Z
    .locals 1
    .param p1, "src"    # [F
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [F
    .param p4, "dstIndex"    # I
    .param p5, "pointCount"    # I

    .prologue
    .line 209
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .locals 1
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "stf"    # Landroid/graphics/Matrix$ScaleToFit;

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public setRotate(F)V
    .locals 0
    .param p1, "degrees"    # F

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 76
    return-void
.end method

.method public setRotate(FFF)V
    .locals 0
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 71
    return-void
.end method

.method public setScale(FF)V
    .locals 0
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 66
    return-void
.end method

.method public setScale(FFFF)V
    .locals 0
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 61
    return-void
.end method

.method public setSinCos(FF)V
    .locals 0
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 86
    return-void
.end method

.method public setSinCos(FFFF)V
    .locals 0
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 81
    return-void
.end method

.method public setSkew(FF)V
    .locals 0
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 96
    return-void
.end method

.method public setSkew(FFFF)V
    .locals 0
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 91
    return-void
.end method

.method public setTranslate(FF)V
    .locals 0
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 56
    return-void
.end method

.method public setValues([F)V
    .locals 0
    .param p1, "values"    # [F

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/graphics/Matrix$1;->oops()V

    .line 216
    return-void
.end method
