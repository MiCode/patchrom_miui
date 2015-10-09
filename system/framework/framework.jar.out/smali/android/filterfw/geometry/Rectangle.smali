.class public Landroid/filterfw/geometry/Rectangle;
.super Landroid/filterfw/geometry/Quad;
.source "Rectangle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/filterfw/geometry/Quad;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 32
    new-instance v0, Landroid/filterfw/geometry/Point;

    invoke-direct {v0, p1, p2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v1, Landroid/filterfw/geometry/Point;

    add-float v2, p1, p3

    invoke-direct {v1, v2, p2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v2, Landroid/filterfw/geometry/Point;

    add-float v3, p2, p4

    invoke-direct {v2, p1, v3}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v3, Landroid/filterfw/geometry/Point;

    add-float v4, p1, p3

    add-float v5, p2, p4

    invoke-direct {v3, v4, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V
    .locals 4
    .param p1, "origin"    # Landroid/filterfw/geometry/Point;
    .param p2, "size"    # Landroid/filterfw/geometry/Point;

    .prologue
    const/4 v2, 0x0

    .line 39
    iget v0, p2, Landroid/filterfw/geometry/Point;->x:F

    invoke-virtual {p1, v0, v2}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v0

    iget v1, p2, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {p1, v2, v1}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v1

    iget v2, p2, Landroid/filterfw/geometry/Point;->x:F

    iget v3, p2, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {p1, v2, v3}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V
    .locals 0
    .param p1, "p0"    # Landroid/filterfw/geometry/Point;
    .param p2, "p1"    # Landroid/filterfw/geometry/Point;
    .param p3, "p2"    # Landroid/filterfw/geometry/Point;
    .param p4, "p3"    # Landroid/filterfw/geometry/Point;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 58
    return-void
.end method

.method public static fromCenterVerticalAxis(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Rectangle;
    .locals 7
    .param p0, "center"    # Landroid/filterfw/geometry/Point;
    .param p1, "vAxis"    # Landroid/filterfw/geometry/Point;
    .param p2, "size"    # Landroid/filterfw/geometry/Point;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 61
    iget v2, p2, Landroid/filterfw/geometry/Point;->y:F

    div-float/2addr v2, v4

    invoke-virtual {p1, v2}, Landroid/filterfw/geometry/Point;->scaledTo(F)Landroid/filterfw/geometry/Point;

    move-result-object v1

    .line 62
    .local v1, "dy":Landroid/filterfw/geometry/Point;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/filterfw/geometry/Point;->rotated90(I)Landroid/filterfw/geometry/Point;

    move-result-object v2

    iget v3, p2, Landroid/filterfw/geometry/Point;->x:F

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/filterfw/geometry/Point;->scaledTo(F)Landroid/filterfw/geometry/Point;

    move-result-object v0

    .line 63
    .local v0, "dx":Landroid/filterfw/geometry/Point;
    new-instance v2, Landroid/filterfw/geometry/Rectangle;

    invoke-virtual {p0, v0}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v4

    invoke-virtual {p0, v0}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v5

    invoke-virtual {p0, v0}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/filterfw/geometry/Rectangle;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-object v2
.end method

.method public static fromRotatedRect(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Rectangle;
    .locals 9
    .param p0, "center"    # Landroid/filterfw/geometry/Point;
    .param p1, "size"    # Landroid/filterfw/geometry/Point;
    .param p2, "rotation"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 46
    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v4, p0, Landroid/filterfw/geometry/Point;->x:F

    iget v5, p1, Landroid/filterfw/geometry/Point;->x:F

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    iget v5, p0, Landroid/filterfw/geometry/Point;->y:F

    iget v6, p1, Landroid/filterfw/geometry/Point;->y:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-direct {v0, v4, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 47
    .local v0, "p0":Landroid/filterfw/geometry/Point;
    new-instance v1, Landroid/filterfw/geometry/Point;

    iget v4, p0, Landroid/filterfw/geometry/Point;->x:F

    iget v5, p1, Landroid/filterfw/geometry/Point;->x:F

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    iget v5, p0, Landroid/filterfw/geometry/Point;->y:F

    iget v6, p1, Landroid/filterfw/geometry/Point;->y:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-direct {v1, v4, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 48
    .local v1, "p1":Landroid/filterfw/geometry/Point;
    new-instance v2, Landroid/filterfw/geometry/Point;

    iget v4, p0, Landroid/filterfw/geometry/Point;->x:F

    iget v5, p1, Landroid/filterfw/geometry/Point;->x:F

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    iget v5, p0, Landroid/filterfw/geometry/Point;->y:F

    iget v6, p1, Landroid/filterfw/geometry/Point;->y:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-direct {v2, v4, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 49
    .local v2, "p2":Landroid/filterfw/geometry/Point;
    new-instance v3, Landroid/filterfw/geometry/Point;

    iget v4, p0, Landroid/filterfw/geometry/Point;->x:F

    iget v5, p1, Landroid/filterfw/geometry/Point;->x:F

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    iget v5, p0, Landroid/filterfw/geometry/Point;->y:F

    iget v6, p1, Landroid/filterfw/geometry/Point;->y:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 50
    .local v3, "p3":Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Rectangle;

    invoke-virtual {v0, p0, p2}, Landroid/filterfw/geometry/Point;->rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;

    move-result-object v5

    invoke-virtual {v1, p0, p2}, Landroid/filterfw/geometry/Point;->rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;

    move-result-object v6

    invoke-virtual {v2, p0, p2}, Landroid/filterfw/geometry/Point;->rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;

    move-result-object v7

    invoke-virtual {v3, p0, p2}, Landroid/filterfw/geometry/Point;->rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/filterfw/geometry/Rectangle;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-object v4
.end method


# virtual methods
.method public center()Landroid/filterfw/geometry/Point;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Landroid/filterfw/geometry/Rectangle;->p0:Landroid/filterfw/geometry/Point;

    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Landroid/filterfw/geometry/Rectangle;->p2:Landroid/filterfw/geometry/Point;

    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->length()F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Landroid/filterfw/geometry/Rectangle;->p1:Landroid/filterfw/geometry/Point;

    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->length()F

    move-result v0

    return v0
.end method

.method public bridge synthetic scaled(F)Landroid/filterfw/geometry/Quad;
    .locals 1
    .param p1, "x0"    # F

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Rectangle;->scaled(F)Landroid/filterfw/geometry/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic scaled(FF)Landroid/filterfw/geometry/Quad;
    .locals 1
    .param p1, "x0"    # F
    .param p2, "x1"    # F

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/filterfw/geometry/Rectangle;->scaled(FF)Landroid/filterfw/geometry/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public scaled(F)Landroid/filterfw/geometry/Rectangle;
    .locals 5
    .param p1, "s"    # F

    .prologue
    .line 83
    new-instance v0, Landroid/filterfw/geometry/Rectangle;

    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v1, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/geometry/Rectangle;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/geometry/Rectangle;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v3, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v3

    iget-object v4, p0, Landroid/filterfw/geometry/Rectangle;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v4, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Rectangle;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-object v0
.end method

.method public scaled(FF)Landroid/filterfw/geometry/Rectangle;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 88
    new-instance v0, Landroid/filterfw/geometry/Rectangle;

    iget-object v1, p0, Landroid/filterfw/geometry/Rectangle;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v1, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/geometry/Rectangle;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/geometry/Rectangle;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v3, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v3

    iget-object v4, p0, Landroid/filterfw/geometry/Rectangle;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v4, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Rectangle;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-object v0
.end method
