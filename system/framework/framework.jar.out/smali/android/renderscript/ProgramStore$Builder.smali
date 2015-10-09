.class public Landroid/renderscript/ProgramStore$Builder;
.super Ljava/lang/Object;
.source "ProgramStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field mColorMaskA:Z

.field mColorMaskB:Z

.field mColorMaskG:Z

.field mColorMaskR:Z

.field mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

.field mDepthMask:Z

.field mDither:Z

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 2
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    const/4 v1, 0x1

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 336
    sget-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    iput-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    .line 338
    iput-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    .line 339
    iput-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    .line 340
    iput-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    .line 341
    iput-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    .line 342
    sget-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    iput-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 343
    sget-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    iput-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 344
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramStore;
    .locals 12

    .prologue
    .line 423
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 424
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    iget-boolean v2, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    iget-boolean v3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    iget-boolean v4, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    iget-boolean v5, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    iget-boolean v6, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    iget-object v7, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    iget v7, v7, Landroid/renderscript/ProgramStore$BlendSrcFunc;->mID:I

    iget-object v8, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    iget v8, v8, Landroid/renderscript/ProgramStore$BlendDstFunc;->mID:I

    iget-object v9, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    iget v9, v9, Landroid/renderscript/ProgramStore$DepthFunc;->mID:I

    invoke-virtual/range {v0 .. v9}, Landroid/renderscript/RenderScript;->nProgramStoreCreate(ZZZZZZIII)I

    move-result v10

    .line 427
    .local v10, "id":I
    new-instance v11, Landroid/renderscript/ProgramStore;

    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v11, v10, v0}, Landroid/renderscript/ProgramStore;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 428
    .local v11, "programStore":Landroid/renderscript/ProgramStore;
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    iput-object v0, v11, Landroid/renderscript/ProgramStore;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 429
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    iput-boolean v0, v11, Landroid/renderscript/ProgramStore;->mDepthMask:Z

    .line 430
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    iput-boolean v0, v11, Landroid/renderscript/ProgramStore;->mColorMaskR:Z

    .line 431
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    iput-boolean v0, v11, Landroid/renderscript/ProgramStore;->mColorMaskG:Z

    .line 432
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    iput-boolean v0, v11, Landroid/renderscript/ProgramStore;->mColorMaskB:Z

    .line 433
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    iput-boolean v0, v11, Landroid/renderscript/ProgramStore;->mColorMaskA:Z

    .line 434
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    iput-object v0, v11, Landroid/renderscript/ProgramStore;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 435
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    iput-object v0, v11, Landroid/renderscript/ProgramStore;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 436
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    iput-boolean v0, v11, Landroid/renderscript/ProgramStore;->mDither:Z

    .line 437
    return-object v11
.end method

.method public setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;
    .locals 0
    .param p1, "src"    # Landroid/renderscript/ProgramStore$BlendSrcFunc;
    .param p2, "dst"    # Landroid/renderscript/ProgramStore$BlendDstFunc;

    .prologue
    .line 401
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 402
    iput-object p2, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 403
    return-object p0
.end method

.method public setColorMaskEnabled(ZZZZ)Landroid/renderscript/ProgramStore$Builder;
    .locals 0
    .param p1, "r"    # Z
    .param p2, "g"    # Z
    .param p3, "b"    # Z
    .param p4, "a"    # Z

    .prologue
    .line 382
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    .line 383
    iput-boolean p2, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    .line 384
    iput-boolean p3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    .line 385
    iput-boolean p4, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    .line 386
    return-object p0
.end method

.method public setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;
    .locals 0
    .param p1, "func"    # Landroid/renderscript/ProgramStore$DepthFunc;

    .prologue
    .line 354
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 355
    return-object p0
.end method

.method public setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 367
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    .line 368
    return-object p0
.end method

.method public setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 415
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    .line 416
    return-object p0
.end method
