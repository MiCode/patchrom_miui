.class public Landroid/renderscript/Sampler$Builder;
.super Ljava/lang/Object;
.source "Sampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Sampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mAniso:F

.field mMag:Landroid/renderscript/Sampler$Value;

.field mMin:Landroid/renderscript/Sampler$Value;

.field mRS:Landroid/renderscript/RenderScript;

.field mWrapR:Landroid/renderscript/Sampler$Value;

.field mWrapS:Landroid/renderscript/Sampler$Value;

.field mWrapT:Landroid/renderscript/Sampler$Value;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 297
    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mMin:Landroid/renderscript/Sampler$Value;

    .line 298
    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mMag:Landroid/renderscript/Sampler$Value;

    .line 299
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapS:Landroid/renderscript/Sampler$Value;

    .line 300
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapT:Landroid/renderscript/Sampler$Value;

    .line 301
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapR:Landroid/renderscript/Sampler$Value;

    .line 302
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/renderscript/Sampler$Builder;->mAniso:F

    .line 303
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/Sampler;
    .locals 9

    .prologue
    .line 349
    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 350
    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Sampler$Builder;->mMag:Landroid/renderscript/Sampler$Value;

    iget v1, v1, Landroid/renderscript/Sampler$Value;->mID:I

    iget-object v2, p0, Landroid/renderscript/Sampler$Builder;->mMin:Landroid/renderscript/Sampler$Value;

    iget v2, v2, Landroid/renderscript/Sampler$Value;->mID:I

    iget-object v3, p0, Landroid/renderscript/Sampler$Builder;->mWrapS:Landroid/renderscript/Sampler$Value;

    iget v3, v3, Landroid/renderscript/Sampler$Value;->mID:I

    iget-object v4, p0, Landroid/renderscript/Sampler$Builder;->mWrapT:Landroid/renderscript/Sampler$Value;

    iget v4, v4, Landroid/renderscript/Sampler$Value;->mID:I

    iget-object v5, p0, Landroid/renderscript/Sampler$Builder;->mWrapR:Landroid/renderscript/Sampler$Value;

    iget v5, v5, Landroid/renderscript/Sampler$Value;->mID:I

    iget v6, p0, Landroid/renderscript/Sampler$Builder;->mAniso:F

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nSamplerCreate(IIIIIF)I

    move-result v7

    .line 352
    .local v7, "id":I
    new-instance v8, Landroid/renderscript/Sampler;

    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v8, v7, v0}, Landroid/renderscript/Sampler;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 353
    .local v8, "sampler":Landroid/renderscript/Sampler;
    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mMin:Landroid/renderscript/Sampler$Value;

    iput-object v0, v8, Landroid/renderscript/Sampler;->mMin:Landroid/renderscript/Sampler$Value;

    .line 354
    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mMag:Landroid/renderscript/Sampler$Value;

    iput-object v0, v8, Landroid/renderscript/Sampler;->mMag:Landroid/renderscript/Sampler$Value;

    .line 355
    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapS:Landroid/renderscript/Sampler$Value;

    iput-object v0, v8, Landroid/renderscript/Sampler;->mWrapS:Landroid/renderscript/Sampler$Value;

    .line 356
    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapT:Landroid/renderscript/Sampler$Value;

    iput-object v0, v8, Landroid/renderscript/Sampler;->mWrapT:Landroid/renderscript/Sampler$Value;

    .line 357
    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapR:Landroid/renderscript/Sampler$Value;

    iput-object v0, v8, Landroid/renderscript/Sampler;->mWrapR:Landroid/renderscript/Sampler$Value;

    .line 358
    iget v0, p0, Landroid/renderscript/Sampler$Builder;->mAniso:F

    iput v0, v8, Landroid/renderscript/Sampler;->mAniso:F

    .line 359
    return-object v8
.end method

.method public setAnisotropy(F)V
    .locals 2
    .param p1, "v"    # F

    .prologue
    .line 341
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 342
    iput p1, p0, Landroid/renderscript/Sampler$Builder;->mAniso:F

    .line 346
    return-void

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMagnification(Landroid/renderscript/Sampler$Value;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Sampler$Value;

    .prologue
    .line 317
    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_1

    .line 318
    :cond_0
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mMag:Landroid/renderscript/Sampler$Value;

    .line 322
    return-void

    .line 320
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinification(Landroid/renderscript/Sampler$Value;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Sampler$Value;

    .prologue
    .line 306
    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroid/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_1

    .line 310
    :cond_0
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mMin:Landroid/renderscript/Sampler$Value;

    .line 314
    return-void

    .line 312
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWrapS(Landroid/renderscript/Sampler$Value;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Sampler$Value;

    .prologue
    .line 325
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_1

    .line 326
    :cond_0
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mWrapS:Landroid/renderscript/Sampler$Value;

    .line 330
    return-void

    .line 328
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWrapT(Landroid/renderscript/Sampler$Value;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Sampler$Value;

    .prologue
    .line 333
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_1

    .line 334
    :cond_0
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mWrapT:Landroid/renderscript/Sampler$Value;

    .line 338
    return-void

    .line 336
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
