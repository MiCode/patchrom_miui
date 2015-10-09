.class public final Landroid/util/Spline;
.super Ljava/lang/Object;
.source "Spline.java"


# instance fields
.field private final mM:[F

.field private final mX:[F

.field private final mY:[F


# direct methods
.method private constructor <init>([F[F[F)V
    .locals 0
    .param p1, "x"    # [F
    .param p2, "y"    # [F
    .param p3, "m"    # [F

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Landroid/util/Spline;->mX:[F

    .line 30
    iput-object p2, p0, Landroid/util/Spline;->mY:[F

    .line 31
    iput-object p3, p0, Landroid/util/Spline;->mM:[F

    .line 32
    return-void
.end method

.method public static createMonotoneCubicSpline([F[F)Landroid/util/Spline;
    .locals 12
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 53
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v8, p0

    array-length v9, p1

    if-ne v8, v9, :cond_0

    array-length v8, p0

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1

    .line 54
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "There must be at least two control points and the arrays must be of equal length."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 58
    :cond_1
    array-length v6, p0

    .line 59
    .local v6, "n":I
    add-int/lit8 v8, v6, -0x1

    new-array v2, v8, [F

    .line 60
    .local v2, "d":[F
    new-array v5, v6, [F

    .line 63
    .local v5, "m":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v8, v6, -0x1

    if-ge v4, v8, :cond_3

    .line 64
    add-int/lit8 v8, v4, 0x1

    aget v8, p0, v8

    aget v9, p0, v4

    sub-float v3, v8, v9

    .line 65
    .local v3, "h":F
    cmpg-float v8, v3, v11

    if-gtz v8, :cond_2

    .line 66
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "The control points must all have strictly increasing X values."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 69
    :cond_2
    add-int/lit8 v8, v4, 0x1

    aget v8, p1, v8

    aget v9, p1, v4

    sub-float/2addr v8, v9

    div-float/2addr v8, v3

    aput v8, v2, v4

    .line 63
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    .end local v3    # "h":F
    :cond_3
    aget v8, v2, v10

    aput v8, v5, v10

    .line 74
    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v8, v6, -0x1

    if-ge v4, v8, :cond_4

    .line 75
    add-int/lit8 v8, v4, -0x1

    aget v8, v2, v8

    aget v9, v2, v4

    add-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    aput v8, v5, v4

    .line 74
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 77
    :cond_4
    add-int/lit8 v8, v6, -0x1

    add-int/lit8 v9, v6, -0x2

    aget v9, v2, v9

    aput v9, v5, v8

    .line 80
    const/4 v4, 0x0

    :goto_2
    add-int/lit8 v8, v6, -0x1

    if-ge v4, v8, :cond_9

    .line 81
    aget v8, v2, v4

    cmpl-float v8, v8, v11

    if-nez v8, :cond_6

    .line 82
    aput v11, v5, v4

    .line 83
    add-int/lit8 v8, v4, 0x1

    aput v11, v5, v8

    .line 80
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 85
    :cond_6
    aget v8, v5, v4

    aget v9, v2, v4

    div-float v0, v8, v9

    .line 86
    .local v0, "a":F
    add-int/lit8 v8, v4, 0x1

    aget v8, v5, v8

    aget v9, v2, v4

    div-float v1, v8, v9

    .line 87
    .local v1, "b":F
    cmpg-float v8, v0, v11

    if-ltz v8, :cond_7

    cmpg-float v8, v1, v11

    if-gez v8, :cond_8

    .line 88
    :cond_7
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "The control points must have monotonic Y values."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 91
    :cond_8
    invoke-static {v0, v1}, Landroid/util/FloatMath;->hypot(FF)F

    move-result v3

    .line 92
    .restart local v3    # "h":F
    const/high16 v8, 0x41100000    # 9.0f

    cmpl-float v8, v3, v8

    if-lez v8, :cond_5

    .line 93
    const/high16 v8, 0x40400000    # 3.0f

    div-float v7, v8, v3

    .line 94
    .local v7, "t":F
    mul-float v8, v7, v0

    aget v9, v2, v4

    mul-float/2addr v8, v9

    aput v8, v5, v4

    .line 95
    add-int/lit8 v8, v4, 0x1

    mul-float v9, v7, v1

    aget v10, v2, v4

    mul-float/2addr v9, v10

    aput v9, v5, v8

    goto :goto_3

    .line 99
    .end local v0    # "a":F
    .end local v1    # "b":F
    .end local v3    # "h":F
    .end local v7    # "t":F
    :cond_9
    new-instance v8, Landroid/util/Spline;

    invoke-direct {v8, p0, p1, v5}, Landroid/util/Spline;-><init>([F[F[F)V

    return-object v8
.end method


# virtual methods
.method public interpolate(F)F
    .locals 9
    .param p1, "x"    # F

    .prologue
    const/4 v5, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 111
    iget-object v4, p0, Landroid/util/Spline;->mX:[F

    array-length v2, v4

    .line 112
    .local v2, "n":I
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    .end local p1    # "x":F
    :goto_0
    return p1

    .line 115
    .restart local p1    # "x":F
    :cond_0
    iget-object v4, p0, Landroid/util/Spline;->mX:[F

    aget v4, v4, v5

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_1

    .line 116
    iget-object v4, p0, Landroid/util/Spline;->mY:[F

    aget p1, v4, v5

    goto :goto_0

    .line 118
    :cond_1
    iget-object v4, p0, Landroid/util/Spline;->mX:[F

    add-int/lit8 v5, v2, -0x1

    aget v4, v4, v5

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_2

    .line 119
    iget-object v4, p0, Landroid/util/Spline;->mY:[F

    add-int/lit8 v5, v2, -0x1

    aget p1, v4, v5

    goto :goto_0

    .line 124
    :cond_2
    const/4 v1, 0x0

    .line 125
    .local v1, "i":I
    :cond_3
    iget-object v4, p0, Landroid/util/Spline;->mX:[F

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_4

    .line 126
    add-int/lit8 v1, v1, 0x1

    .line 127
    iget-object v4, p0, Landroid/util/Spline;->mX:[F

    aget v4, v4, v1

    cmpl-float v4, p1, v4

    if-nez v4, :cond_3

    .line 128
    iget-object v4, p0, Landroid/util/Spline;->mY:[F

    aget p1, v4, v1

    goto :goto_0

    .line 133
    :cond_4
    iget-object v4, p0, Landroid/util/Spline;->mX:[F

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Landroid/util/Spline;->mX:[F

    aget v5, v5, v1

    sub-float v0, v4, v5

    .line 134
    .local v0, "h":F
    iget-object v4, p0, Landroid/util/Spline;->mX:[F

    aget v4, v4, v1

    sub-float v4, p1, v4

    div-float v3, v4, v0

    .line 135
    .local v3, "t":F
    iget-object v4, p0, Landroid/util/Spline;->mY:[F

    aget v4, v4, v1

    mul-float v5, v7, v3

    add-float/2addr v5, v8

    mul-float/2addr v4, v5

    iget-object v5, p0, Landroid/util/Spline;->mM:[F

    aget v5, v5, v1

    mul-float/2addr v5, v0

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    sub-float v5, v8, v3

    mul-float/2addr v4, v5

    sub-float v5, v8, v3

    mul-float/2addr v4, v5

    iget-object v5, p0, Landroid/util/Spline;->mY:[F

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v7, v3

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Landroid/util/Spline;->mM:[F

    add-int/lit8 v7, v1, 0x1

    aget v6, v6, v7

    mul-float/2addr v6, v0

    sub-float v7, v3, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    mul-float/2addr v5, v3

    mul-float/2addr v5, v3

    add-float p1, v4, v5

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v2, "str":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/util/Spline;->mX:[F

    array-length v1, v3

    .line 144
    .local v1, "n":I
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 146
    if-eqz v0, :cond_0

    .line 147
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_0
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline;->mX:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 150
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline;->mY:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 151
    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline;->mM:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
