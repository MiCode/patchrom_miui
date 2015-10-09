.class public Landroid/media/effect/SizeChangeEffect;
.super Landroid/media/effect/SingleFilterEffect;
.source "SizeChangeEffect.java"


# direct methods
.method public varargs constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/media/effect/EffectContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filterClass"    # Ljava/lang/Class;
    .param p4, "inputName"    # Ljava/lang/String;
    .param p5, "outputName"    # Ljava/lang/String;
    .param p6, "finalParameters"    # [Ljava/lang/Object;

    .prologue
    .line 43
    invoke-direct/range {p0 .. p6}, Landroid/media/effect/SingleFilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    return-void
.end method


# virtual methods
.method public apply(IIII)V
    .locals 9
    .param p1, "inputTexId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "outputTexId"    # I

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/media/effect/SizeChangeEffect;->beginGLEffect()V

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/effect/SizeChangeEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 51
    .local v0, "inputFrame":Landroid/filterfw/core/Frame;
    iget-object v5, p0, Landroid/media/effect/SizeChangeEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/media/effect/SizeChangeEffect;->mInputName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-virtual {v5, v6}, Landroid/filterfw/core/FilterFunction;->executeWithArgList([Ljava/lang/Object;)Landroid/filterfw/core/Frame;

    move-result-object v4

    .line 53
    .local v4, "resultFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    .line 54
    .local v3, "outputWidth":I
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    .line 56
    .local v2, "outputHeight":I
    invoke-virtual {p0, p4, v3, v2}, Landroid/media/effect/SizeChangeEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 57
    .local v1, "outputFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v1, v4}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 59
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 60
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 61
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 63
    invoke-virtual {p0}, Landroid/media/effect/SizeChangeEffect;->endGLEffect()V

    .line 64
    return-void
.end method
