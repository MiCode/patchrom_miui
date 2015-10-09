.class public Landroid/filterpacks/ui/SurfaceTargetFilter;
.super Landroid/filterfw/core/Filter;
.source "SurfaceTargetFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceRenderFilter"


# instance fields
.field private final RENDERMODE_FILL_CROP:I

.field private final RENDERMODE_FIT:I

.field private final RENDERMODE_STRETCH:I

.field private mAspectRatio:F

.field private mGlEnv:Landroid/filterfw/core/GLEnvironment;

.field private mLogVerbose:Z

.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private mRenderMode:I

.field private mRenderModeString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "renderMode"
    .end annotation
.end field

.field private mScreen:Landroid/filterfw/core/GLFrame;

.field private mScreenHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "oheight"
    .end annotation
.end field

.field private mScreenWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "owidth"
    .end annotation
.end field

.field private mSurface:Landroid/view/Surface;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "surface"
    .end annotation
.end field

.field private mSurfaceId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 91
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->RENDERMODE_STRETCH:I

    .line 50
    iput v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->RENDERMODE_FIT:I

    .line 51
    iput v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->RENDERMODE_FILL_CROP:I

    .line 82
    iput v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderMode:I

    .line 83
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mAspectRatio:F

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    .line 93
    const-string v0, "SurfaceRenderFilter"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mLogVerbose:Z

    .line 94
    return-void
.end method

.method private registerSurface()V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mGlEnv:Landroid/filterfw/core/GLEnvironment;

    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->registerSurface(Landroid/view/Surface;)I

    move-result v0

    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    .line 246
    iget v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    if-gez v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not register Surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    return-void
.end method

.method private unregisterSurface()V
    .locals 2

    .prologue
    .line 252
    iget v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    if-lez v0, :cond_0

    .line 253
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mGlEnv:Landroid/filterfw/core/GLEnvironment;

    iget v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 255
    :cond_0
    return-void
.end method

.method private updateTargetRect()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 210
    iget v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenHeight:I

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v2, :cond_0

    .line 211
    iget v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenHeight:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 212
    .local v1, "screenAspectRatio":F
    iget v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mAspectRatio:F

    div-float v0, v1, v2

    .line 214
    .local v0, "relativeAspectRatio":F
    iget v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderMode:I

    packed-switch v2, :pswitch_data_0

    .line 242
    .end local v0    # "relativeAspectRatio":F
    .end local v1    # "screenAspectRatio":F
    :cond_0
    :goto_0
    return-void

    .line 216
    .restart local v0    # "relativeAspectRatio":F
    .restart local v1    # "screenAspectRatio":F
    :pswitch_0
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v6, v6, v5, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_0

    .line 219
    :pswitch_1
    cmpl-float v2, v0, v5

    if-lez v2, :cond_1

    .line 221
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    div-float v3, v4, v0

    sub-float v3, v4, v3

    div-float v4, v5, v0

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    mul-float v3, v4, v0

    sub-float v3, v4, v3

    invoke-virtual {v2, v6, v3, v5, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_0

    .line 230
    :pswitch_2
    cmpl-float v2, v0, v5

    if-lez v2, :cond_2

    .line 232
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    mul-float v3, v4, v0

    sub-float v3, v4, v3

    invoke-virtual {v2, v6, v3, v5, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_0

    .line 236
    :cond_2
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    div-float v3, v4, v0

    sub-float v3, v4, v3

    div-float v4, v5, v0

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 199
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->unregisterSurface()V

    .line 200
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    iget v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenWidth:I

    iget v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/filterfw/core/GLFrame;->setViewport(IIII)V

    .line 194
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->updateTargetRect()V

    .line 195
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->registerSurface()V

    .line 148
    return-void
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v5, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 124
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    iput-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mGlEnv:Landroid/filterfw/core/GLEnvironment;

    .line 128
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v1

    iput-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 129
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 130
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    .line 131
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v1, v3, v3, v3}, Landroid/filterfw/core/ShaderProgram;->setClearColor(FFF)V

    .line 133
    iget v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenWidth:I

    iget v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreenHeight:I

    invoke-static {v1, v2, v5, v5}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 137
    .local v0, "screenFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    const/16 v2, 0x65

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/GLFrame;

    iput-object v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 142
    invoke-virtual {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->updateRenderMode()V

    .line 143
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 9
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v8, 0x3

    .line 152
    iget-boolean v5, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mLogVerbose:Z

    if-eqz v5, :cond_0

    const-string v5, "SurfaceRenderFilter"

    const-string v6, "Starting frame processing"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    const-string v5, "frame"

    invoke-virtual {p0, v5}, Landroid/filterpacks/ui/SurfaceTargetFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 156
    .local v3, "input":Landroid/filterfw/core/Frame;
    const/4 v0, 0x0

    .line 158
    .local v0, "createdFrame":Z
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 159
    .local v1, "currentAspectRatio":F
    iget v5, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mAspectRatio:F

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_2

    .line 160
    iget-boolean v5, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mLogVerbose:Z

    if-eqz v5, :cond_1

    const-string v5, "SurfaceRenderFilter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New aspect ratio: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", previously: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mAspectRatio:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_1
    iput v1, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mAspectRatio:F

    .line 162
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->updateTargetRect()V

    .line 166
    :cond_2
    const/4 v2, 0x0

    .line 167
    .local v2, "gpuFrame":Landroid/filterfw/core/Frame;
    iget-boolean v5, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mLogVerbose:Z

    if-eqz v5, :cond_3

    const-string v5, "SurfaceRenderFilter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got input format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_3
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    .line 169
    .local v4, "target":I
    if-eq v4, v8, :cond_5

    .line 170
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    invoke-virtual {v5, v3, v8}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 172
    const/4 v0, 0x1

    .line 178
    :goto_0
    iget-object v5, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mGlEnv:Landroid/filterfw/core/GLEnvironment;

    iget v6, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurfaceId:I

    invoke-virtual {v5, v6}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    .line 181
    iget-object v5, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v6, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v5, v2, v6}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 184
    iget-object v5, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mGlEnv:Landroid/filterfw/core/GLEnvironment;

    invoke-virtual {v5}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    .line 186
    if-eqz v0, :cond_4

    .line 187
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 189
    :cond_4
    return-void

    .line 174
    :cond_5
    move-object v2, v3

    goto :goto_0
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NULL Surface passed to SurfaceTargetFilter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    const-string v0, "frame"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/ui/SurfaceTargetFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 105
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 204
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 207
    :cond_0
    return-void
.end method

.method public updateRenderMode()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderModeString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderModeString:Ljava/lang/String;

    const-string/jumbo v1, "stretch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderMode:I

    .line 119
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceTargetFilter;->updateTargetRect()V

    .line 120
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderModeString:Ljava/lang/String;

    const-string v1, "fit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderMode:I

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderModeString:Ljava/lang/String;

    const-string v1, "fill_crop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    const/4 v0, 0x2

    iput v0, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderMode:I

    goto :goto_0

    .line 116
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown render mode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceTargetFilter;->mRenderModeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
