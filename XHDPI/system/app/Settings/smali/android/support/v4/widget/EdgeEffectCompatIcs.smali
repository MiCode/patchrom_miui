.class Landroid/support/v4/widget/EdgeEffectCompatIcs;
.super Ljava/lang/Object;
.source "EdgeEffectCompatIcs.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .locals 1
    .parameter "edgeEffect"
    .parameter "canvas"

    .prologue
    .line 62
    check-cast p0, Landroid/widget/EdgeEffect;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public static finish(Ljava/lang/Object;)V
    .locals 0
    .parameter "edgeEffect"

    .prologue
    .line 42
    check-cast p0, Landroid/widget/EdgeEffect;

    .end local p0
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    .line 43
    return-void
.end method

.method public static isFinished(Ljava/lang/Object;)Z
    .locals 1
    .parameter "edgeEffect"

    .prologue
    .line 38
    check-cast p0, Landroid/widget/EdgeEffect;

    .end local p0
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    return v0
.end method

.method public static newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static onPull(Ljava/lang/Object;F)Z
    .locals 1
    .parameter "edgeEffect"
    .parameter "deltaDistance"

    .prologue
    .line 46
    check-cast p0, Landroid/widget/EdgeEffect;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public static onRelease(Ljava/lang/Object;)Z
    .locals 2
    .parameter "edgeEffect"

    .prologue
    .line 51
    move-object v0, p0

    check-cast v0, Landroid/widget/EdgeEffect;

    .line 52
    .local v0, eff:Landroid/widget/EdgeEffect;
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 53
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    return v1
.end method

.method public static setSize(Ljava/lang/Object;II)V
    .locals 0
    .parameter "edgeEffect"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 34
    check-cast p0, Landroid/widget/EdgeEffect;

    .end local p0
    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 35
    return-void
.end method
