.class public Landroid/filterfw/core/GLEnvironment;
.super Ljava/lang/Object;
.source "GLEnvironment.java"


# instance fields
.field private glEnvId:I

.field private mManageContext:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    const-string v0, "filterfw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    .line 37
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeAllocate()Z

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/filterfw/core/NativeAllocatorTag;)V
    .locals 1
    .param p1, "tag"    # Landroid/filterfw/core/NativeAllocatorTag;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    .line 41
    return-void
.end method

.method public static isAnyContextActive()Z
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Landroid/filterfw/core/GLEnvironment;->nativeIsAnyContextActive()Z

    move-result v0

    return v0
.end method

.method private native nativeActivate()Z
.end method

.method private native nativeActivateSurfaceId(I)Z
.end method

.method private native nativeAddSurface(Landroid/view/Surface;)I
.end method

.method private native nativeAddSurfaceFromMediaRecorder(Landroid/media/MediaRecorder;)I
.end method

.method private native nativeAddSurfaceWidthHeight(Landroid/view/Surface;II)I
.end method

.method private native nativeAllocate()Z
.end method

.method private native nativeDeactivate()Z
.end method

.method private native nativeDeallocate()Z
.end method

.method private native nativeDisconnectSurfaceMediaSource(Landroid/media/MediaRecorder;)Z
.end method

.method private native nativeInitWithCurrentContext()Z
.end method

.method private native nativeInitWithNewContext()Z
.end method

.method private native nativeIsActive()Z
.end method

.method private static native nativeIsAnyContextActive()Z
.end method

.method private native nativeIsContextActive()Z
.end method

.method private native nativeRemoveSurfaceId(I)Z
.end method

.method private native nativeSetSurfaceTimestamp(J)Z
.end method

.method private native nativeSwapBuffers()Z
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "FilterFramework"

    const-string v1, "Activating GL context in UI thread!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iget-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeActivate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not activate GLEnvironment!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    return-void
.end method

.method public activateSurfaceWithId(I)V
    .locals 3
    .param p1, "surfaceId"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLEnvironment;->nativeActivateSurfaceId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not activate surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 91
    iget-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeDeactivate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not deactivate GLEnvironment!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/filterfw/core/GLEnvironment;->tearDown()V

    .line 53
    return-void
.end method

.method public initWithCurrentContext()V
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    .line 64
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeInitWithCurrentContext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not initialize GLEnvironment with current context!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    return-void
.end method

.method public initWithNewContext()V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/GLEnvironment;->mManageContext:Z

    .line 57
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeInitWithNewContext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not initialize GLEnvironment with new context!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeIsActive()Z

    move-result v0

    return v0
.end method

.method public isContextActive()Z
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeIsContextActive()Z

    move-result v0

    return v0
.end method

.method public registerSurface(Landroid/view/Surface;)I
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLEnvironment;->nativeAddSurface(Landroid/view/Surface;)I

    move-result v0

    .line 104
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 105
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error registering surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_0
    return v0
.end method

.method public registerSurfaceFromMediaRecorder(Landroid/media/MediaRecorder;)I
    .locals 4
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLEnvironment;->nativeAddSurfaceFromMediaRecorder(Landroid/media/MediaRecorder;)I

    move-result v0

    .line 122
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 123
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error registering surface from MediaRecorder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_0
    return v0
.end method

.method public registerSurfaceTexture(Landroid/graphics/SurfaceTexture;II)I
    .locals 5
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 111
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 112
    .local v1, "surface":Landroid/view/Surface;
    invoke-direct {p0, v1, p2, p3}, Landroid/filterfw/core/GLEnvironment;->nativeAddSurfaceWidthHeight(Landroid/view/Surface;II)I

    move-result v0

    .line 113
    .local v0, "result":I
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 114
    if-gez v0, :cond_0

    .line 115
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error registering surfaceTexture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_0
    return v0
.end method

.method public setSurfaceTimestamp(J)V
    .locals 2
    .param p1, "timestamp"    # J

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/GLEnvironment;->nativeSetSurfaceTimestamp(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not set timestamp for current surface!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    return-void
.end method

.method public swapBuffers()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeSwapBuffers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error swapping EGL buffers!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    return-void
.end method

.method public declared-synchronized tearDown()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 44
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/filterfw/core/GLEnvironment;->glEnvId:I

    if-eq v0, v1, :cond_0

    .line 45
    invoke-direct {p0}, Landroid/filterfw/core/GLEnvironment;->nativeDeallocate()Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/GLEnvironment;->glEnvId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_0
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterSurfaceId(I)V
    .locals 3
    .param p1, "surfaceId"    # I

    .prologue
    .line 136
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLEnvironment;->nativeRemoveSurfaceId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not unregister surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    return-void
.end method
