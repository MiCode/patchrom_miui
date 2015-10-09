.class public Landroid/media/ImageReader;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageReader$SurfaceImage;,
        Landroid/media/ImageReader$ListenerHandler;,
        Landroid/media/ImageReader$OnImageAvailableListener;
    }
.end annotation


# static fields
.field private static final ACQUIRE_MAX_IMAGES:I = 0x2

.field private static final ACQUIRE_NO_BUFS:I = 0x1

.field private static final ACQUIRE_SUCCESS:I


# instance fields
.field private final mFormat:I

.field private final mHeight:I

.field private mListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

.field private final mListenerLock:Ljava/lang/Object;

.field private final mMaxImages:I

.field private mNativeContext:J

.field private final mNumPlanes:I

.field private final mSurface:Landroid/view/Surface;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 733
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 734
    invoke-static {}, Landroid/media/ImageReader;->nativeClassInit()V

    .line 735
    return-void
.end method

.method protected constructor <init>(IIII)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "maxImages"    # I

    .prologue
    const/4 v1, 0x1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    .line 105
    iput p1, p0, Landroid/media/ImageReader;->mWidth:I

    .line 106
    iput p2, p0, Landroid/media/ImageReader;->mHeight:I

    .line 107
    iput p3, p0, Landroid/media/ImageReader;->mFormat:I

    .line 108
    iput p4, p0, Landroid/media/ImageReader;->mMaxImages:I

    .line 110
    if-lt p1, v1, :cond_0

    if-ge p2, v1, :cond_1

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The image dimensions must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    iget v0, p0, Landroid/media/ImageReader;->mMaxImages:I

    if-ge v0, v1, :cond_2

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum outstanding image count must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_2
    const/16 v0, 0x11

    if-ne p3, v0, :cond_3

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NV21 format is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_3
    invoke-direct {p0}, Landroid/media/ImageReader;->getNumPlanesFromFormat()I

    move-result v0

    iput v0, p0, Landroid/media/ImageReader;->mNumPlanes:I

    .line 126
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/ImageReader;->nativeInit(Ljava/lang/Object;IIII)V

    .line 128
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeGetSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    .line 129
    return-void
.end method

.method static synthetic access$1000(Landroid/media/ImageReader;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageReader;

    .prologue
    .line 49
    iget v0, p0, Landroid/media/ImageReader;->mNumPlanes:I

    return v0
.end method

.method static synthetic access$300(Landroid/media/ImageReader;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageReader;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/ImageReader;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageReader;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/ImageReader;Landroid/media/Image;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/ImageReader;
    .param p1, "x1"    # Landroid/media/Image;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->releaseImage(Landroid/media/Image;)V

    return-void
.end method

.method static synthetic access$600(Landroid/media/ImageReader;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageReader;

    .prologue
    .line 49
    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    return v0
.end method

.method static synthetic access$700(Landroid/media/ImageReader;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageReader;

    .prologue
    .line 49
    iget v0, p0, Landroid/media/ImageReader;->mWidth:I

    return v0
.end method

.method static synthetic access$800(Landroid/media/ImageReader;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageReader;

    .prologue
    .line 49
    iget v0, p0, Landroid/media/ImageReader;->mHeight:I

    return v0
.end method

.method private acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I
    .locals 4
    .param p1, "si"    # Landroid/media/ImageReader$SurfaceImage;

    .prologue
    .line 292
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeImageSetup(Landroid/media/Image;)I

    move-result v0

    .line 294
    .local v0, "status":I
    packed-switch v0, :pswitch_data_0

    .line 302
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown nativeImageSetup return code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 296
    :pswitch_0
    # invokes: Landroid/media/ImageReader$SurfaceImage;->createSurfacePlanes()V
    invoke-static {p1}, Landroid/media/ImageReader$SurfaceImage;->access$000(Landroid/media/ImageReader$SurfaceImage;)V

    .line 297
    const/4 v1, 0x1

    # invokes: Landroid/media/ImageReader$SurfaceImage;->setImageValid(Z)V
    invoke-static {p1, v1}, Landroid/media/ImageReader$SurfaceImage;->access$100(Landroid/media/ImageReader$SurfaceImage;Z)V

    .line 305
    :pswitch_1
    return v0

    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getNumPlanesFromFormat()I
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 463
    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    sparse-switch v1, :sswitch_data_0

    .line 481
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Invalid format specified %d"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 467
    :sswitch_0
    const/4 v0, 0x3

    .line 479
    :goto_0
    :sswitch_1
    return v0

    .line 469
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 463
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
        0x11 -> :sswitch_0
        0x14 -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x100 -> :sswitch_1
        0x20203859 -> :sswitch_1
        0x20363159 -> :sswitch_1
        0x32315659 -> :sswitch_0
    .end sparse-switch
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native declared-synchronized nativeClose()V
.end method

.method private synchronized native declared-synchronized nativeGetSurface()Landroid/view/Surface;
.end method

.method private synchronized native declared-synchronized nativeImageSetup(Landroid/media/Image;)I
.end method

.method private synchronized native declared-synchronized nativeInit(Ljava/lang/Object;IIII)V
.end method

.method private synchronized native declared-synchronized nativeReleaseImage(Landroid/media/Image;)V
.end method

.method public static newInstance(IIII)Landroid/media/ImageReader;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "maxImages"    # I

    .prologue
    .line 98
    new-instance v0, Landroid/media/ImageReader;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/ImageReader;-><init>(IIII)V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;)V
    .locals 5
    .param p0, "selfRef"    # Ljava/lang/Object;

    .prologue
    .line 494
    move-object v2, p0

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 495
    .local v2, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/ImageReader;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    .line 496
    .local v1, "ir":Landroid/media/ImageReader;
    if-nez v1, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    iget-object v4, v1, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 502
    :try_start_0
    iget-object v0, v1, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    .line 503
    .local v0, "handler":Landroid/os/Handler;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    if-eqz v0, :cond_0

    .line 505
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 503
    .end local v0    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private releaseImage(Landroid/media/Image;)V
    .locals 3
    .param p1, "i"    # Landroid/media/Image;

    .prologue
    .line 359
    instance-of v1, p1, Landroid/media/ImageReader$SurfaceImage;

    if-nez v1, :cond_0

    .line 360
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This image was not produced by an ImageReader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 363
    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    .line 364
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 365
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This image was not produced by this ImageReader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 369
    :cond_1
    # invokes: Landroid/media/ImageReader$SurfaceImage;->clearSurfacePlanes()V
    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->access$200(Landroid/media/ImageReader$SurfaceImage;)V

    .line 370
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeReleaseImage(Landroid/media/Image;)V

    .line 371
    const/4 v1, 0x0

    # invokes: Landroid/media/ImageReader$SurfaceImage;->setImageValid(Z)V
    invoke-static {v0, v1}, Landroid/media/ImageReader$SurfaceImage;->access$100(Landroid/media/ImageReader$SurfaceImage;Z)V

    .line 372
    return-void
.end method


# virtual methods
.method public acquireLatestImage()Landroid/media/Image;
    .locals 4

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 243
    .local v0, "image":Landroid/media/Image;
    if-nez v0, :cond_2

    .line 244
    const/4 v2, 0x0

    .line 259
    :cond_0
    :goto_0
    return-object v2

    .line 254
    .local v1, "next":Landroid/media/Image;
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 255
    move-object v0, v1

    .line 248
    .end local v1    # "next":Landroid/media/Image;
    :cond_2
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImageNoThrowISE()Landroid/media/Image;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 249
    .restart local v1    # "next":Landroid/media/Image;
    if-nez v1, :cond_1

    .line 250
    move-object v2, v0

    .line 251
    .local v2, "result":Landroid/media/Image;
    const/4 v0, 0x0

    .line 258
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 258
    .end local v1    # "next":Landroid/media/Image;
    .end local v2    # "result":Landroid/media/Image;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 259
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    :cond_3
    throw v3
.end method

.method public acquireNextImage()Landroid/media/Image;
    .locals 7

    .prologue
    .line 337
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    invoke-direct {v0, p0}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;)V

    .line 338
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    move-result v1

    .line 340
    .local v1, "status":I
    packed-switch v1, :pswitch_data_0

    .line 351
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown nativeImageSetup return code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 344
    :pswitch_0
    const/4 v0, 0x0

    .end local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :pswitch_1
    return-object v0

    .line 346
    .restart local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :pswitch_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "maxImages (%d) has already been acquired, call #close before acquiring more."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Landroid/media/ImageReader;->mMaxImages:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public acquireNextImageNoThrowISE()Landroid/media/Image;
    .locals 2

    .prologue
    .line 272
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    invoke-direct {v0, p0}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;)V

    .line 273
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :goto_0
    return-object v0

    .restart local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 439
    invoke-virtual {p0, v0, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 440
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeClose()V

    .line 441
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 446
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 450
    return-void

    .line 448
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Landroid/media/ImageReader;->mHeight:I

    return v0
.end method

.method public getImageFormat()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    return v0
.end method

.method public getMaxImages()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Landroid/media/ImageReader;->mMaxImages:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Landroid/media/ImageReader;->mWidth:I

    return v0
.end method

.method public setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/ImageReader$OnImageAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 387
    iget-object v2, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 388
    if-eqz p1, :cond_4

    .line 389
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 390
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    if-nez v0, :cond_1

    .line 391
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "handler is null but the current thread is not a looper"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    .end local v0    # "looper":Landroid/os/Looper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 389
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    .line 394
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_1
    iget-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    invoke-virtual {v1}, Landroid/media/ImageReader$ListenerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, v0, :cond_3

    .line 395
    :cond_2
    new-instance v1, Landroid/media/ImageReader$ListenerHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/ImageReader$ListenerHandler;-><init>(Landroid/media/ImageReader;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    .line 397
    :cond_3
    iput-object p1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 402
    .end local v0    # "looper":Landroid/os/Looper;
    :goto_1
    monitor-exit v2

    .line 403
    return-void

    .line 399
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 400
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
