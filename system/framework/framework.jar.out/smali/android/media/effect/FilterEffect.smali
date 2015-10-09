.class public abstract Landroid/media/effect/FilterEffect;
.super Landroid/media/effect/Effect;
.source "FilterEffect.java"


# instance fields
.field protected mEffectContext:Landroid/media/effect/EffectContext;

.field private mName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/media/effect/EffectContext;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/media/effect/Effect;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    .line 45
    iput-object p2, p0, Landroid/media/effect/FilterEffect;->mName:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method protected beginGLEffect()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    invoke-virtual {v0}, Landroid/media/effect/EffectContext;->assertValidGLState()V

    .line 68
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    invoke-virtual {v0}, Landroid/media/effect/EffectContext;->saveGLState()V

    .line 69
    return-void
.end method

.method protected endGLEffect()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    invoke-virtual {v0}, Landroid/media/effect/EffectContext;->restoreGLState()V

    .line 76
    return-void
.end method

.method protected frameFromTexture(III)Landroid/filterfw/core/Frame;
    .locals 6
    .param p1, "texId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x3

    .line 89
    invoke-virtual {p0}, Landroid/media/effect/FilterEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    .line 90
    .local v2, "manager":Landroid/filterfw/core/FrameManager;
    invoke-static {p2, p3, v4, v4}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 93
    .local v0, "format":Landroid/filterfw/core/FrameFormat;
    const/16 v3, 0x64

    int-to-long v4, p1

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 96
    .local v1, "frame":Landroid/filterfw/core/Frame;
    const-wide/16 v3, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 97
    return-object v1
.end method

.method protected getFilterContext()Landroid/filterfw/core/FilterContext;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    iget-object v0, v0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mName:Ljava/lang/String;

    return-object v0
.end method
