.class public Landroid/filterfw/core/FilterSurfaceView;
.super Landroid/view/SurfaceView;
.source "FilterSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static STATE_ALLOCATED:I

.field private static STATE_CREATED:I

.field private static STATE_INITIALIZED:I


# instance fields
.field private mFormat:I

.field private mGLEnv:Landroid/filterfw/core/GLEnvironment;

.field private mHeight:I

.field private mListener:Landroid/view/SurfaceHolder$Callback;

.field private mState:I

.field private mSurfaceId:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_ALLOCATED:I

    .line 31
    const/4 v0, 0x1

    sput v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_CREATED:I

    .line 32
    const/4 v0, 0x2

    sput v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_INITIALIZED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 34
    sget v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_ALLOCATED:I

    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    .line 44
    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    sget v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_ALLOCATED:I

    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    .line 49
    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 50
    return-void
.end method

.method private registerSurface()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->registerSurface(Landroid/view/Surface;)I

    move-result v0

    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    .line 146
    iget v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    if-gez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not register Surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in FilterSurfaceView!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    return-void
.end method

.method private unregisterSurface()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    if-lez v0, :cond_0

    .line 153
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    iget v1, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 155
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized bindToListener(Landroid/view/SurfaceHolder$Callback;Landroid/filterfw/core/GLEnvironment;)V
    .locals 5
    .param p1, "listener"    # Landroid/view/SurfaceHolder$Callback;
    .param p2, "glEnv"    # Landroid/filterfw/core/GLEnvironment;

    .prologue
    .line 54
    monitor-enter p0

    if-nez p1, :cond_0

    .line 55
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempting to bind null filter to SurfaceView!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 56
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    if-eq v0, p1, :cond_1

    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to bind filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to SurfaceView with another open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attached already!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    iput-object p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    .line 66
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    if-eq v0, p2, :cond_2

    .line 67
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    iget v1, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 69
    :cond_2
    iput-object p2, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    .line 72
    iget v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    sget v1, Landroid/filterfw/core/FilterSurfaceView;->STATE_CREATED:I

    if-lt v0, v1, :cond_3

    .line 75
    invoke-direct {p0}, Landroid/filterfw/core/FilterSurfaceView;->registerSurface()V

    .line 78
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 81
    iget v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    sget v1, Landroid/filterfw/core/FilterSurfaceView;->STATE_INITIALIZED:I

    if-ne v0, v1, :cond_3

    .line 82
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    invoke-virtual {p0}, Landroid/filterfw/core/FilterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget v2, p0, Landroid/filterfw/core/FilterSurfaceView;->mFormat:I

    iget v3, p0, Landroid/filterfw/core/FilterSurfaceView;->mWidth:I

    iget v4, p0, Landroid/filterfw/core/FilterSurfaceView;->mHeight:I

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getGLEnv()Landroid/filterfw/core/GLEnvironment;
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSurfaceId()I
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iput p2, p0, Landroid/filterfw/core/FilterSurfaceView;->mFormat:I

    .line 121
    iput p3, p0, Landroid/filterfw/core/FilterSurfaceView;->mWidth:I

    .line 122
    iput p4, p0, Landroid/filterfw/core/FilterSurfaceView;->mHeight:I

    .line 123
    sget v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_INITIALIZED:I

    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    .line 126
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_0
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    sget v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_CREATED:I

    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    .line 104
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0}, Landroid/filterfw/core/FilterSurfaceView;->registerSurface()V

    .line 109
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_1
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    sget v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_ALLOCATED:I

    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    .line 136
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 141
    :cond_0
    invoke-direct {p0}, Landroid/filterfw/core/FilterSurfaceView;->unregisterSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unbind()V
    .locals 1

    .prologue
    .line 88
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
