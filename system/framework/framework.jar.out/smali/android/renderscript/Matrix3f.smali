.class public Landroid/renderscript/Matrix3f;
.super Ljava/lang/Object;
.source "Matrix3f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    .line 34
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

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
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    .line 46
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    iget-object v1, p0, Landroid/renderscript/Matrix3f;->mMat:[F

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
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public getArray()[F
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    return-object v0
.end method

.method public load(Landroid/renderscript/Matrix3f;)V
    .locals 4
    .param p1, "src"    # Landroid/renderscript/Matrix3f;

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-virtual {p1}, Landroid/renderscript/Matrix3f;->getArray()[F

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    return-void
.end method

.method public loadIdentity()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 86
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 87
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 89
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 90
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 91
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 93
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 94
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 95
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 96
    return-void
.end method

.method public loadMultiply(Landroid/renderscript/Matrix3f;Landroid/renderscript/Matrix3f;)V
    .locals 11
    .param p1, "lhs"    # Landroid/renderscript/Matrix3f;
    .param p2, "rhs"    # Landroid/renderscript/Matrix3f;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_1

    .line 212
    const/4 v3, 0x0

    .line 213
    .local v3, "ri0":F
    const/4 v4, 0x0

    .line 214
    .local v4, "ri1":F
    const/4 v5, 0x0

    .line 215
    .local v5, "ri2":F
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v10, :cond_0

    .line 216
    invoke-virtual {p2, v0, v1}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v2

    .line 217
    .local v2, "rhs_ij":F
    invoke-virtual {p1, v1, v7}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v6

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    .line 218
    invoke-virtual {p1, v1, v8}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v6

    mul-float/2addr v6, v2

    add-float/2addr v4, v6

    .line 219
    invoke-virtual {p1, v1, v9}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v6

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 221
    .end local v2    # "rhs_ij":F
    :cond_0
    invoke-virtual {p0, v0, v7, v3}, Landroid/renderscript/Matrix3f;->set(IIF)V

    .line 222
    invoke-virtual {p0, v0, v8, v4}, Landroid/renderscript/Matrix3f;->set(IIF)V

    .line 223
    invoke-virtual {p0, v0, v9, v5}, Landroid/renderscript/Matrix3f;->set(IIF)V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    .end local v1    # "j":I
    .end local v3    # "ri0":F
    .end local v4    # "ri1":F
    .end local v5    # "ri2":F
    :cond_1
    return-void
.end method

.method public loadRotate(F)V
    .locals 5
    .param p1, "rot"    # F

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    .line 155
    const v2, 0x3c8efa35

    mul-float/2addr p1, v2

    .line 156
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 157
    .local v0, "c":F
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 158
    .local v1, "s":F
    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 159
    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x1

    neg-float v4, v1

    aput v4, v2, v3

    .line 160
    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x3

    aput v1, v2, v3

    .line 161
    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x4

    aput v0, v2, v3

    .line 162
    return-void
.end method

.method public loadRotate(FFFF)V
    .locals 14
    .param p1, "rot"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 118
    const v11, 0x3c8efa35

    mul-float/2addr p1, v11

    .line 119
    float-to-double v11, p1

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v0, v11

    .line 120
    .local v0, "c":F
    float-to-double v11, p1

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v4, v11

    .line 122
    .local v4, "s":F
    mul-float v11, p2, p2

    mul-float v12, p3, p3

    add-float/2addr v11, v12

    mul-float v12, p4, p4

    add-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v1, v11

    .line 123
    .local v1, "len":F
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v1, v11

    if-nez v11, :cond_0

    .line 124
    const/high16 v11, 0x3f800000    # 1.0f

    div-float v3, v11, v1

    .line 125
    .local v3, "recipLen":F
    mul-float p2, p2, v3

    .line 126
    mul-float p3, p3, v3

    .line 127
    mul-float p4, p4, v3

    .line 129
    .end local v3    # "recipLen":F
    :cond_0
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v2, v11, v0

    .line 130
    .local v2, "nc":F
    mul-float v6, p2, p3

    .line 131
    .local v6, "xy":F
    mul-float v8, p3, p4

    .line 132
    .local v8, "yz":F
    mul-float v10, p4, p2

    .line 133
    .local v10, "zx":F
    mul-float v5, p2, v4

    .line 134
    .local v5, "xs":F
    mul-float v7, p3, v4

    .line 135
    .local v7, "ys":F
    mul-float v9, p4, v4

    .line 136
    .local v9, "zs":F
    iget-object v11, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v12, 0x0

    mul-float v13, p2, p2

    mul-float/2addr v13, v2

    add-float/2addr v13, v0

    aput v13, v11, v12

    .line 137
    iget-object v11, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v12, 0x3

    mul-float v13, v6, v2

    sub-float/2addr v13, v9

    aput v13, v11, v12

    .line 138
    iget-object v11, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v12, 0x6

    mul-float v13, v10, v2

    add-float/2addr v13, v7

    aput v13, v11, v12

    .line 139
    iget-object v11, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v12, 0x1

    mul-float v13, v6, v2

    add-float/2addr v13, v9

    aput v13, v11, v12

    .line 140
    iget-object v11, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v12, 0x4

    mul-float v13, p3, p3

    mul-float/2addr v13, v2

    add-float/2addr v13, v0

    aput v13, v11, v12

    .line 141
    iget-object v11, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v12, 0x7

    mul-float v13, v8, v2

    sub-float/2addr v13, v5

    aput v13, v11, v12

    .line 142
    iget-object v11, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v12, 0x2

    mul-float v13, v10, v2

    sub-float/2addr v13, v7

    aput v13, v11, v12

    .line 143
    iget-object v11, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v12, 0x5

    mul-float v13, v8, v2

    add-float/2addr v13, v5

    aput v13, v11, v12

    .line 144
    iget-object v11, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v12, 0x8

    mul-float v13, p4, p4

    mul-float/2addr v13, v2

    add-float/2addr v13, v0

    aput v13, v11, v12

    .line 145
    return-void
.end method

.method public loadScale(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    .line 172
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 173
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 174
    return-void
.end method

.method public loadScale(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    .line 185
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 186
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 187
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v1, 0x8

    aput p3, v0, v1

    .line 188
    return-void
.end method

.method public loadTranslate(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    .line 199
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    .line 200
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x7

    aput p2, v0, v1

    .line 201
    return-void
.end method

.method public multiply(Landroid/renderscript/Matrix3f;)V
    .locals 1
    .param p1, "rhs"    # Landroid/renderscript/Matrix3f;

    .prologue
    .line 233
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 234
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix3f;->loadMultiply(Landroid/renderscript/Matrix3f;Landroid/renderscript/Matrix3f;)V

    .line 235
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->load(Landroid/renderscript/Matrix3f;)V

    .line 236
    return-void
.end method

.method public rotate(F)V
    .locals 1
    .param p1, "rot"    # F

    .prologue
    .line 260
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 261
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix3f;->loadRotate(F)V

    .line 262
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    .line 263
    return-void
.end method

.method public rotate(FFFF)V
    .locals 1
    .param p1, "rot"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 248
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 249
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/renderscript/Matrix3f;->loadRotate(FFFF)V

    .line 250
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    .line 251
    return-void
.end method

.method public scale(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 273
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 274
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix3f;->loadScale(FF)V

    .line 275
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    .line 276
    return-void
.end method

.method public scale(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 287
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 288
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix3f;->loadScale(FFF)V

    .line 289
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    .line 290
    return-void
.end method

.method public set(IIF)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "v"    # F

    .prologue
    .line 78
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aput p3, v0, v1

    .line 79
    return-void
.end method

.method public translate(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 300
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 301
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix3f;->loadTranslate(FF)V

    .line 302
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    .line 303
    return-void
.end method

.method public transpose()V
    .locals 7

    .prologue
    .line 309
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_1

    .line 310
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    .line 311
    iget-object v3, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v1

    aget v2, v3, v4

    .line 312
    .local v2, "temp":F
    iget-object v3, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v1

    iget-object v5, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v6, v1, 0x3

    add-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 313
    iget-object v3, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v4, v1, 0x3

    add-int/2addr v4, v0

    aput v2, v3, v4

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 309
    .end local v2    # "temp":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    .end local v1    # "j":I
    :cond_1
    return-void
.end method
