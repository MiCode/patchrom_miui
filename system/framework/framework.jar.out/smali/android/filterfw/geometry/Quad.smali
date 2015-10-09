.class public Landroid/filterfw/geometry/Quad;
.super Ljava/lang/Object;
.source "Quad.java"


# instance fields
.field public p0:Landroid/filterfw/geometry/Point;

.field public p1:Landroid/filterfw/geometry/Point;

.field public p2:Landroid/filterfw/geometry/Point;

.field public p3:Landroid/filterfw/geometry/Point;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V
    .locals 0
    .param p1, "p0"    # Landroid/filterfw/geometry/Point;
    .param p2, "p1"    # Landroid/filterfw/geometry/Point;
    .param p3, "p2"    # Landroid/filterfw/geometry/Point;
    .param p4, "p3"    # Landroid/filterfw/geometry/Point;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    .line 42
    iput-object p2, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    .line 43
    iput-object p3, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    .line 44
    iput-object p4, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    .line 45
    return-void
.end method


# virtual methods
.method public IsInUnitRange()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->IsInUnitRange()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->IsInUnitRange()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->IsInUnitRange()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->IsInUnitRange()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public boundingBox()Landroid/filterfw/geometry/Rectangle;
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 71
    new-array v6, v12, [Ljava/lang/Float;

    iget-object v7, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v7, v7, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v7, v7, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v7, v7, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    iget-object v7, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v7, v7, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 72
    .local v2, "xs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-array v6, v12, [Ljava/lang/Float;

    iget-object v7, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v7, v7, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v7, v7, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v7, v7, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    iget-object v7, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v7, v7, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 73
    .local v5, "ys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-static {v2}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 74
    .local v0, "x0":F
    invoke-static {v5}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 75
    .local v3, "y0":F
    invoke-static {v2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 76
    .local v1, "x1":F
    invoke-static {v5}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 77
    .local v4, "y1":F
    new-instance v6, Landroid/filterfw/geometry/Rectangle;

    sub-float v7, v1, v0

    sub-float v8, v4, v3

    invoke-direct {v6, v0, v3, v7, v8}, Landroid/filterfw/geometry/Rectangle;-><init>(FFFF)V

    return-object v6
.end method

.method public getBoundingHeight()F
    .locals 4

    .prologue
    .line 86
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v3, v3, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v3, v3, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v3, v3, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v3, v3, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 87
    .local v0, "ys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v1, v2, v1

    return v1
.end method

.method public getBoundingWidth()F
    .locals 4

    .prologue
    .line 81
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v3, v3, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v3, v3, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v3, v3, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v3, v3, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, "xs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v1, v2, v1

    return v1
.end method

.method public scaled(F)Landroid/filterfw/geometry/Quad;
    .locals 5
    .param p1, "s"    # F

    .prologue
    .line 63
    new-instance v0, Landroid/filterfw/geometry/Quad;

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v1, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v3, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v3

    iget-object v4, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v4, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-object v0
.end method

.method public scaled(FF)Landroid/filterfw/geometry/Quad;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 67
    new-instance v0, Landroid/filterfw/geometry/Quad;

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v1, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v3, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v3

    iget-object v4, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v4, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translated(FF)Landroid/filterfw/geometry/Quad;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 59
    new-instance v0, Landroid/filterfw/geometry/Quad;

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v1, p1, p2}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, p1, p2}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v3, p1, p2}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v3

    iget-object v4, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v4, p1, p2}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-object v0
.end method

.method public translated(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Quad;
    .locals 5
    .param p1, "t"    # Landroid/filterfw/geometry/Point;

    .prologue
    .line 55
    new-instance v0, Landroid/filterfw/geometry/Quad;

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v1, p1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, p1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v3, p1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v3

    iget-object v4, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v4, p1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-object v0
.end method
