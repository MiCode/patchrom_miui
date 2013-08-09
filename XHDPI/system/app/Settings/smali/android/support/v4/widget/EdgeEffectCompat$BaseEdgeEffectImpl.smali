.class Landroid/support/v4/widget/EdgeEffectCompat$BaseEdgeEffectImpl;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"

# interfaces
.implements Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/EdgeEffectCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseEdgeEffectImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .locals 1
    .parameter "edgeEffect"
    .parameter "canvas"

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public finish(Ljava/lang/Object;)V
    .locals 0
    .parameter "edgeEffect"

    .prologue
    .line 71
    return-void
.end method

.method public isFinished(Ljava/lang/Object;)Z
    .locals 1
    .parameter "edgeEffect"

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPull(Ljava/lang/Object;F)Z
    .locals 1
    .parameter "edgeEffect"
    .parameter "deltaDistance"

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public onRelease(Ljava/lang/Object;)Z
    .locals 1
    .parameter "edgeEffect"

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public setSize(Ljava/lang/Object;II)V
    .locals 0
    .parameter "edgeEffect"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 64
    return-void
.end method
