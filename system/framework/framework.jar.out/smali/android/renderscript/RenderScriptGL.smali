.class public Landroid/renderscript/RenderScriptGL;
.super Landroid/renderscript/RenderScript;
.source "RenderScriptGL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    }
.end annotation


# instance fields
.field mHeight:I

.field mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V
    .locals 17
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "sc"    # Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    .prologue
    .line 180
    invoke-direct/range {p0 .. p1}, Landroid/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .line 181
    new-instance v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 185
    .local v4, "sdkVersion":I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    .line 186
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    .line 187
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScriptGL;->nDeviceCreate()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/renderscript/RenderScriptGL;->mDev:I

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v16, v0

    .line 189
    .local v16, "dpi":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/renderscript/RenderScriptGL;->mDev:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v5, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v6, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v7, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v8, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v9, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v10, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v11, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v12, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v13, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v14, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v15, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v16}, Landroid/renderscript/RenderScriptGL;->nContextCreateGL(IIIIIIIIIIIIIFI)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/renderscript/RenderScriptGL;->mContext:I

    .line 196
    move-object/from16 v0, p0

    iget v1, v0, Landroid/renderscript/RenderScriptGL;->mContext:I

    if-nez v1, :cond_0

    .line 197
    new-instance v1, Landroid/renderscript/RSDriverException;

    const-string v2, "Failed to create RS context."

    invoke-direct {v1, v2}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_0
    new-instance v1, Landroid/renderscript/RenderScript$MessageThread;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/renderscript/RenderScriptGL;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    .line 200
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/RenderScriptGL;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript$MessageThread;->start()V

    .line 201
    return-void
.end method


# virtual methods
.method public bindProgramFragment(Landroid/renderscript/ProgramFragment;)V
    .locals 1
    .param p1, "p"    # Landroid/renderscript/ProgramFragment;

    .prologue
    .line 312
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 313
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramFragment(I)V

    .line 314
    return-void
.end method

.method public bindProgramRaster(Landroid/renderscript/ProgramRaster;)V
    .locals 1
    .param p1, "p"    # Landroid/renderscript/ProgramRaster;

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 325
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramRaster(I)V

    .line 326
    return-void
.end method

.method public bindProgramStore(Landroid/renderscript/ProgramStore;)V
    .locals 1
    .param p1, "p"    # Landroid/renderscript/ProgramStore;

    .prologue
    .line 300
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 301
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramStore(I)V

    .line 302
    return-void
.end method

.method public bindProgramVertex(Landroid/renderscript/ProgramVertex;)V
    .locals 1
    .param p1, "p"    # Landroid/renderscript/ProgramVertex;

    .prologue
    .line 336
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 337
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramVertex(I)V

    .line 338
    return-void
.end method

.method public bindRootScript(Landroid/renderscript/Script;)V
    .locals 1
    .param p1, "s"    # Landroid/renderscript/Script;

    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 289
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScriptGL;->nContextBindRootScript(I)V

    .line 290
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 266
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 267
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->nContextPause()V

    .line 268
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 276
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 277
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->nContextResume()V

    .line 278
    return-void
.end method

.method public setSurface(Landroid/view/SurfaceHolder;II)V
    .locals 1
    .param p1, "sur"    # Landroid/view/SurfaceHolder;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 213
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "s":Landroid/view/Surface;
    if-eqz p1, :cond_0

    .line 216
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 218
    :cond_0
    iput p2, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    .line 219
    iput p3, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    .line 220
    invoke-virtual {p0, p2, p3, v0}, Landroid/renderscript/RenderScriptGL;->nContextSetSurface(IILandroid/view/Surface;)V

    .line 221
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "sur"    # Landroid/graphics/SurfaceTexture;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 235
    iput p2, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    .line 236
    iput p3, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    .line 237
    invoke-virtual {p0, p2, p3, p1}, Landroid/renderscript/RenderScriptGL;->nContextSetSurfaceTexture(IILandroid/graphics/SurfaceTexture;)V

    .line 238
    return-void
.end method
