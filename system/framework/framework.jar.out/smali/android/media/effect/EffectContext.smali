.class public Landroid/media/effect/EffectContext;
.super Ljava/lang/Object;
.source "EffectContext.java"


# instance fields
.field private final GL_STATE_ARRAYBUFFER:I

.field private final GL_STATE_COUNT:I

.field private final GL_STATE_FBO:I

.field private final GL_STATE_PROGRAM:I

.field private mFactory:Landroid/media/effect/EffectFactory;

.field mFilterContext:Landroid/filterfw/core/FilterContext;

.field private mOldState:[I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/effect/EffectContext;->GL_STATE_FBO:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/effect/EffectContext;->GL_STATE_PROGRAM:I

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/effect/EffectContext;->GL_STATE_ARRAYBUFFER:I

    .line 43
    iput v1, p0, Landroid/media/effect/EffectContext;->GL_STATE_COUNT:I

    .line 49
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    .line 93
    new-instance v0, Landroid/filterfw/core/FilterContext;

    invoke-direct {v0}, Landroid/filterfw/core/FilterContext;-><init>()V

    iput-object v0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    .line 94
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    new-instance v1, Landroid/filterfw/core/CachedFrameManager;

    invoke-direct {v1}, Landroid/filterfw/core/CachedFrameManager;-><init>()V

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterContext;->setFrameManager(Landroid/filterfw/core/FrameManager;)V

    .line 95
    new-instance v0, Landroid/media/effect/EffectFactory;

    invoke-direct {v0, p0}, Landroid/media/effect/EffectFactory;-><init>(Landroid/media/effect/EffectContext;)V

    iput-object v0, p0, Landroid/media/effect/EffectContext;->mFactory:Landroid/media/effect/EffectFactory;

    .line 96
    return-void
.end method

.method public static createWithCurrentGlContext()Landroid/media/effect/EffectContext;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Landroid/media/effect/EffectContext;

    invoke-direct {v0}, Landroid/media/effect/EffectContext;-><init>()V

    .line 61
    .local v0, "result":Landroid/media/effect/EffectContext;
    invoke-direct {v0}, Landroid/media/effect/EffectContext;->initInCurrentGlContext()V

    .line 62
    return-object v0
.end method

.method private initInCurrentGlContext()V
    .locals 3

    .prologue
    .line 99
    invoke-static {}, Landroid/filterfw/core/GLEnvironment;->isAnyContextActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempting to initialize EffectContext with no active GL context!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_0
    new-instance v0, Landroid/filterfw/core/GLEnvironment;

    invoke-direct {v0}, Landroid/filterfw/core/GLEnvironment;-><init>()V

    .line 104
    .local v0, "glEnvironment":Landroid/filterfw/core/GLEnvironment;
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->initWithCurrentContext()V

    .line 105
    iget-object v1, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v1, v0}, Landroid/filterfw/core/FilterContext;->initGLEnvironment(Landroid/filterfw/core/GLEnvironment;)V

    .line 106
    return-void
.end method


# virtual methods
.method final assertValidGLState()V
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    .line 110
    .local v0, "glEnv":Landroid/filterfw/core/GLEnvironment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->isContextActive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 111
    :cond_0
    invoke-static {}, Landroid/filterfw/core/GLEnvironment;->isAnyContextActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Applying effect in wrong GL context!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempting to apply effect without valid GL context!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_2
    return-void
.end method

.method public getFactory()Landroid/media/effect/EffectFactory;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mFactory:Landroid/media/effect/EffectFactory;

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->tearDown()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    .line 90
    return-void
.end method

.method final restoreGLState()V
    .locals 3

    .prologue
    .line 126
    const v0, 0x8d40

    iget-object v1, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 127
    iget-object v0, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 128
    const v0, 0x8892

    iget-object v1, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 129
    return-void
.end method

.method final saveGLState()V
    .locals 3

    .prologue
    .line 120
    const v0, 0x8ca6

    iget-object v1, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 121
    const v0, 0x8b8d

    iget-object v1, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 122
    const v0, 0x8894

    iget-object v1, p0, Landroid/media/effect/EffectContext;->mOldState:[I

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 123
    return-void
.end method
