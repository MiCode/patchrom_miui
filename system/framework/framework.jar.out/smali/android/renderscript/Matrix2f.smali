.class public Landroid/renderscript/Matrix2f;
.super Ljava/lang/Object;
.source "Matrix2f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    .line 34
    invoke-virtual {p0}, Landroid/renderscript/Matrix2f;->loadIdentity()V

    .line 35
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .param p1, "dataArray"    # [F

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    .line 46
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    return-void
.end method


# virtual methods
.method public get(II)F
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 68
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public getArray()[F
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    return-object v0
.end method

.method public load(Landroid/renderscript/Matrix2f;)V
    .locals 4
    .param p1, "src"    # Landroid/renderscript/Matrix2f;

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-virtual {p1}, Landroid/renderscript/Matrix2f;->getArray()[F

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    return-void
.end method

.method public loadIdentity()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 86
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 88
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 89
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 90
    return-void
.end method

.method public loadMultiply(Landroid/renderscript/Matrix2f;Landroid/renderscript/Matrix2f;)V
    .locals 9
    .param p1, "lhs"    # Landroid/renderscript/Matrix2f;
    .param p2, "rhs"    # Landroid/renderscript/Matrix2f;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_1

    .line 138
    const/4 v3, 0x0

    .line 139
    .local v3, "ri0":F
    const/4 v4, 0x0

    .line 140
    .local v4, "ri1":F
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v8, :cond_0

    .line 141
    invoke-virtual {p2, v0, v1}, Landroid/renderscript/Matrix2f;->get(II)F

    move-result v2

    .line 142
    .local v2, "rhs_ij":F
    invoke-virtual {p1, v1, v6}, Landroid/renderscript/Matrix2f;->get(II)F

    move-result v5

    mul-float/2addr v5, v2

    add-float/2addr v3, v5

    .line 143
    invoke-virtual {p1, v1, v7}, Landroid/renderscript/Matrix2f;->get(II)F

    move-result v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 145
    .end local v2    # "rhs_ij":F
    :cond_0
    invoke-virtual {p0, v0, v6, v3}, Landroid/renderscript/Matrix2f;->set(IIF)V

    .line 146
    invoke-virtual {p0, v0, v7, v4}, Landroid/renderscript/Matrix2f;->set(IIF)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "j":I
    .end local v3    # "ri0":F
    .end local v4    # "ri1":F
    :cond_1
    return-void
.end method

.method public loadRotate(F)V
    .locals 5
    .param p1, "rot"    # F

    .prologue
    .line 108
    const v2, 0x3c8efa35

    mul-float/2addr p1, v2

    .line 109
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 110
    .local v0, "c":F
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 111
    .local v1, "s":F
    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 112
    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v3, 0x1

    neg-float v4, v1

    aput v4, v2, v3

    .line 113
    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v3, 0x2

    aput v1, v2, v3

    .line 114
    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v3, 0x3

    aput v0, v2, v3

    .line 115
    return-void
.end method

.method public loadScale(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/renderscript/Matrix2f;->loadIdentity()V

    .line 125
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 126
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x3

    aput p2, v0, v1

    .line 127
    return-void
.end method

.method public multiply(Landroid/renderscript/Matrix2f;)V
    .locals 1
    .param p1, "rhs"    # Landroid/renderscript/Matrix2f;

    .prologue
    .line 156
    new-instance v0, Landroid/renderscript/Matrix2f;

    invoke-direct {v0}, Landroid/renderscript/Matrix2f;-><init>()V

    .line 157
    .local v0, "tmp":Landroid/renderscript/Matrix2f;
    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix2f;->loadMultiply(Landroid/renderscript/Matrix2f;Landroid/renderscript/Matrix2f;)V

    .line 158
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix2f;->load(Landroid/renderscript/Matrix2f;)V

    .line 159
    return-void
.end method

.method public rotate(F)V
    .locals 1
    .param p1, "rot"    # F

    .prologue
    .line 167
    new-instance v0, Landroid/renderscript/Matrix2f;

    invoke-direct {v0}, Landroid/renderscript/Matrix2f;-><init>()V

    .line 168
    .local v0, "tmp":Landroid/renderscript/Matrix2f;
    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix2f;->loadRotate(F)V

    .line 169
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix2f;->multiply(Landroid/renderscript/Matrix2f;)V

    .line 170
    return-void
.end method

.method public scale(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 179
    new-instance v0, Landroid/renderscript/Matrix2f;

    invoke-direct {v0}, Landroid/renderscript/Matrix2f;-><init>()V

    .line 180
    .local v0, "tmp":Landroid/renderscript/Matrix2f;
    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix2f;->loadScale(FF)V

    .line 181
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix2f;->multiply(Landroid/renderscript/Matrix2f;)V

    .line 182
    return-void
.end method

.method public set(IIF)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "v"    # F

    .prologue
    .line 78
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p2

    aput p3, v0, v1

    .line 79
    return-void
.end method

.method public transpose()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 187
    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    aget v0, v1, v3

    .line 188
    .local v0, "temp":F
    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    aget v2, v2, v4

    aput v2, v1, v3

    .line 189
    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    aput v0, v1, v4

    .line 190
    return-void
.end method
