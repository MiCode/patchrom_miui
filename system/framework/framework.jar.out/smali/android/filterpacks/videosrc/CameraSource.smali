.class public Landroid/filterpacks/videosrc/CameraSource;
.super Landroid/filterfw/core/Filter;
.source "CameraSource.java"


# static fields
.field private static final NEWFRAME_TIMEOUT:I = 0x64

.field private static final NEWFRAME_TIMEOUT_REPEAT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "CameraSource"

.field private static final mFrameShader:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

.field private static final mSourceCoords:[F


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraFrame:Landroid/filterfw/core/GLFrame;

.field private mCameraId:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "id"
    .end annotation
.end field

.field private mCameraParameters:Landroid/hardware/Camera$Parameters;

.field private mCameraTransform:[F

.field private mFps:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "framerate"
    .end annotation
.end field

.field private mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

.field private mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "height"
    .end annotation
.end field

.field private final mLogVerbose:Z

.field private mMappedCoords:[F

.field private mNewFrameAvailable:Z

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mWaitForNewFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "waitForNewFrame"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "width"
    .end annotation
.end field

.field private onCameraFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/filterpacks/videosrc/CameraSource;->mSourceCoords:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x10

    .line 112
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraId:I

    .line 58
    const/16 v0, 0x140

    iput v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    .line 62
    const/16 v0, 0xf0

    iput v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    .line 66
    const/16 v0, 0x1e

    iput v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mFps:I

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWaitForNewFrame:Z

    .line 346
    new-instance v0, Landroid/filterpacks/videosrc/CameraSource$1;

    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/CameraSource$1;-><init>(Landroid/filterpacks/videosrc/CameraSource;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->onCameraFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 113
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraTransform:[F

    .line 114
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    .line 116
    const-string v0, "CameraSource"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    .line 117
    return-void
.end method

.method static synthetic access$000(Landroid/filterpacks/videosrc/CameraSource;)Z
    .locals 1
    .param p0, "x0"    # Landroid/filterpacks/videosrc/CameraSource;

    .prologue
    .line 49
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    return v0
.end method

.method static synthetic access$102(Landroid/filterpacks/videosrc/CameraSource;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/filterpacks/videosrc/CameraSource;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    return p1
.end method

.method private createFormats()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 127
    iget v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    iget v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 130
    return-void
.end method

.method private findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I
    .locals 11
    .param p1, "fps"    # I
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const-wide v9, 0x408f400000000000L    # 1000.0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 324
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    .line 325
    .local v3, "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 326
    .local v0, "closestRange":[I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 327
    .local v2, "range":[I
    aget v4, v2, v7

    mul-int/lit16 v5, p1, 0x3e8

    if-ge v4, v5, :cond_0

    aget v4, v2, v8

    mul-int/lit16 v5, p1, 0x3e8

    if-le v4, v5, :cond_0

    aget v4, v2, v7

    aget v5, v0, v7

    if-le v4, v5, :cond_0

    aget v4, v2, v8

    aget v5, v0, v8

    if-ge v4, v5, :cond_0

    .line 333
    move-object v0, v2

    goto :goto_0

    .line 336
    .end local v2    # "range":[I
    :cond_1
    iget-boolean v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v4, :cond_2

    const-string v4, "CameraSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested fps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".Closest frame rate range: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v7

    int-to-double v6, v6

    div-double/2addr v6, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v8

    int-to-double v6, v6

    div-double/2addr v6, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_2
    return-object v0
.end method

.method private findClosestSize(IILandroid/hardware/Camera$Parameters;)[I
    .locals 12
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v11, 0x0

    .line 284
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    .line 285
    .local v4, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v2, -0x1

    .line 286
    .local v2, "closestWidth":I
    const/4 v0, -0x1

    .line 287
    .local v0, "closestHeight":I
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    iget v7, v8, Landroid/hardware/Camera$Size;->width:I

    .line 288
    .local v7, "smallestWidth":I
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    iget v6, v8, Landroid/hardware/Camera$Size;->height:I

    .line 289
    .local v6, "smallestHeight":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 294
    .local v5, "size":Landroid/hardware/Camera$Size;
    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    if-gt v8, p1, :cond_1

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    if-gt v8, p2, :cond_1

    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    if-lt v8, v2, :cond_1

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    if-lt v8, v0, :cond_1

    .line 298
    iget v2, v5, Landroid/hardware/Camera$Size;->width:I

    .line 299
    iget v0, v5, Landroid/hardware/Camera$Size;->height:I

    .line 301
    :cond_1
    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    if-ge v8, v7, :cond_0

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    if-ge v8, v6, :cond_0

    .line 303
    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    .line 304
    iget v6, v5, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 307
    .end local v5    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    const/4 v8, -0x1

    if-ne v2, v8, :cond_3

    .line 309
    move v2, v7

    .line 310
    move v0, v6

    .line 313
    :cond_3
    iget-boolean v8, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v8, :cond_4

    .line 314
    const-string v8, "CameraSource"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Requested resolution: ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "). Closest match: ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_4
    const/4 v8, 0x2

    new-array v1, v8, [I

    aput v2, v1, v11

    const/4 v8, 0x1

    aput v0, v1, v8

    .line 320
    .local v1, "closestSize":[I
    return-object v1
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraSource"

    const-string v1, "Closing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 223
    iput-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 224
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 225
    iput-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 226
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 237
    const-string v1, "framerate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/CameraSource;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    .line 239
    iget v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mFps:I

    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v1, v2}, Landroid/filterpacks/videosrc/CameraSource;->findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I

    move-result-object v0

    .line 240
    .local v0, "closestRange":[I
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 242
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 244
    .end local v0    # "closestRange":[I
    :cond_0
    return-void
.end method

.method public declared-synchronized getCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 6

    .prologue
    .line 247
    monitor-enter p0

    const/4 v0, 0x0

    .line 248
    .local v0, "closeCamera":Z
    :try_start_0
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v3, :cond_1

    .line 249
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    .line 250
    iget v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraId:I

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 251
    const/4 v0, 0x1

    .line 253
    :cond_0
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 255
    if-eqz v0, :cond_1

    .line 256
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 257
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 261
    :cond_1
    iget v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    iget v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    iget-object v5, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v3, v4, v5}, Landroid/filterpacks/videosrc/CameraSource;->findClosestSize(IILandroid/hardware/Camera$Parameters;)[I

    move-result-object v2

    .line 262
    .local v2, "closestSize":[I
    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    .line 263
    const/4 v3, 0x1

    aget v3, v2, v3

    iput v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    .line 264
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    iget v5, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 266
    iget v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mFps:I

    iget-object v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v3, v4}, Landroid/filterpacks/videosrc/CameraSource;->findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I

    move-result-object v1

    .line 268
    .local v1, "closestRange":[I
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 271
    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 247
    .end local v1    # "closestRange":[I
    .end local v2    # "closestSize":[I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 141
    iget-boolean v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "CameraSource"

    const-string v2, "Opening"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    iget v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraId:I

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 146
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/CameraSource;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    .line 147
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 150
    invoke-direct {p0}, Landroid/filterpacks/videosrc/CameraSource;->createFormats()V

    .line 153
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    const/16 v3, 0x68

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/GLFrame;

    iput-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    .line 156
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 158
    :try_start_0
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->onCameraFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 167
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    .line 168
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 169
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not bind camera surface texture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 134
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraSource"

    const-string v1, "Preparing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    .line 137
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 15
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 173
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraSource"

    const-string v1, "Processing new frame"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWaitForNewFrame:Z

    if-eqz v0, :cond_4

    .line 176
    const/4 v13, 0x0

    .line 177
    .local v13, "waitCount":I
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    if-nez v0, :cond_3

    .line 178
    const/16 v0, 0xa

    if-ne v13, v0, :cond_2

    .line 179
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Timeout waiting for new frame"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_2
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v9

    .line 184
    .local v9, "e":Ljava/lang/InterruptedException;
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_1

    const-string v0, "CameraSource"

    const-string v1, "Interrupted while waiting for new frame"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    .line 188
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_4

    const-string v0, "CameraSource"

    const-string v1, "Got new frame"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v13    # "waitCount":I
    :cond_4
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 193
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_5

    const-string v0, "CameraSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using frame extractor in thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_5
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 195
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraTransform:[F

    const/4 v3, 0x0

    sget-object v4, Landroid/filterpacks/videosrc/CameraSource;->mSourceCoords:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 198
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    iget-object v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/16 v7, 0x9

    aget v6, v6, v7

    iget-object v7, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/16 v8, 0xc

    aget v7, v7, v8

    iget-object v8, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/16 v14, 0xd

    aget v8, v8, v14

    invoke-virtual/range {v0 .. v8}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v10

    .line 204
    .local v10, "output":Landroid/filterfw/core/Frame;
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0, v1, v10}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 206
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v11

    .line 207
    .local v11, "timestamp":J
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_6

    const-string v0, "CameraSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    long-to-double v2, v11

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_6
    invoke-virtual {v10, v11, v12}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 210
    const-string/jumbo v0, "video"

    invoke-virtual {p0, v0, v10}, Landroid/filterpacks/videosrc/CameraSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 213
    invoke-virtual {v10}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 215
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_7

    const-string v0, "CameraSource"

    const-string v1, "Done processing new frame"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_7
    return-void
.end method

.method public declared-synchronized setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    iget v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 277
    iput-object p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 278
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/CameraSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :cond_0
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 122
    const-string/jumbo v0, "video"

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/videosrc/CameraSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 124
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 230
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 233
    :cond_0
    return-void
.end method
