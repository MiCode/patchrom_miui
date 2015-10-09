.class public Landroid/renderscript/ProgramRaster;
.super Landroid/renderscript/BaseObj;
.source "ProgramRaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramRaster$Builder;,
        Landroid/renderscript/ProgramRaster$CullMode;
    }
.end annotation


# instance fields
.field mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

.field mPointSprite:Z


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/ProgramRaster;->mPointSprite:Z

    .line 61
    sget-object v0, Landroid/renderscript/ProgramRaster$CullMode;->BACK:Landroid/renderscript/ProgramRaster$CullMode;

    iput-object v0, p0, Landroid/renderscript/ProgramRaster;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    .line 62
    return-void
.end method

.method public static CULL_BACK(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramRaster;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 87
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_BACK:Landroid/renderscript/ProgramRaster;

    if-nez v1, :cond_0

    .line 88
    new-instance v0, Landroid/renderscript/ProgramRaster$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/ProgramRaster$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 89
    .local v0, "builder":Landroid/renderscript/ProgramRaster$Builder;
    sget-object v1, Landroid/renderscript/ProgramRaster$CullMode;->BACK:Landroid/renderscript/ProgramRaster$CullMode;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramRaster$Builder;->setCullMode(Landroid/renderscript/ProgramRaster$CullMode;)Landroid/renderscript/ProgramRaster$Builder;

    .line 90
    invoke-virtual {v0}, Landroid/renderscript/ProgramRaster$Builder;->create()Landroid/renderscript/ProgramRaster;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_BACK:Landroid/renderscript/ProgramRaster;

    .line 92
    .end local v0    # "builder":Landroid/renderscript/ProgramRaster$Builder;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_BACK:Landroid/renderscript/ProgramRaster;

    return-object v1
.end method

.method public static CULL_FRONT(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramRaster;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 99
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_FRONT:Landroid/renderscript/ProgramRaster;

    if-nez v1, :cond_0

    .line 100
    new-instance v0, Landroid/renderscript/ProgramRaster$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/ProgramRaster$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 101
    .local v0, "builder":Landroid/renderscript/ProgramRaster$Builder;
    sget-object v1, Landroid/renderscript/ProgramRaster$CullMode;->FRONT:Landroid/renderscript/ProgramRaster$CullMode;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramRaster$Builder;->setCullMode(Landroid/renderscript/ProgramRaster$CullMode;)Landroid/renderscript/ProgramRaster$Builder;

    .line 102
    invoke-virtual {v0}, Landroid/renderscript/ProgramRaster$Builder;->create()Landroid/renderscript/ProgramRaster;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_FRONT:Landroid/renderscript/ProgramRaster;

    .line 104
    .end local v0    # "builder":Landroid/renderscript/ProgramRaster$Builder;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_FRONT:Landroid/renderscript/ProgramRaster;

    return-object v1
.end method

.method public static CULL_NONE(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramRaster;
    .locals 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 111
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_NONE:Landroid/renderscript/ProgramRaster;

    if-nez v1, :cond_0

    .line 112
    new-instance v0, Landroid/renderscript/ProgramRaster$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/ProgramRaster$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 113
    .local v0, "builder":Landroid/renderscript/ProgramRaster$Builder;
    sget-object v1, Landroid/renderscript/ProgramRaster$CullMode;->NONE:Landroid/renderscript/ProgramRaster$CullMode;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramRaster$Builder;->setCullMode(Landroid/renderscript/ProgramRaster$CullMode;)Landroid/renderscript/ProgramRaster$Builder;

    .line 114
    invoke-virtual {v0}, Landroid/renderscript/ProgramRaster$Builder;->create()Landroid/renderscript/ProgramRaster;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_NONE:Landroid/renderscript/ProgramRaster;

    .line 116
    .end local v0    # "builder":Landroid/renderscript/ProgramRaster$Builder;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_NONE:Landroid/renderscript/ProgramRaster;

    return-object v1
.end method


# virtual methods
.method public getCullMode()Landroid/renderscript/ProgramRaster$CullMode;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/renderscript/ProgramRaster;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    return-object v0
.end method

.method public isPointSpriteEnabled()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Landroid/renderscript/ProgramRaster;->mPointSprite:Z

    return v0
.end method
