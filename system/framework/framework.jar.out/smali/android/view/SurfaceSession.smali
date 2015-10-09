.class public final Landroid/view/SurfaceSession;
.super Ljava/lang/Object;
.source "SurfaceSession.java"


# instance fields
.field private mNativeClient:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Landroid/view/SurfaceSession;->nativeCreate()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceSession;->mNativeClient:I

    .line 36
    return-void
.end method

.method private static native nativeCreate()I
.end method

.method private static native nativeDestroy(I)V
.end method

.method private static native nativeKill(I)V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    iget v0, p0, Landroid/view/SurfaceSession;->mNativeClient:I

    if-eqz v0, :cond_0

    .line 43
    iget v0, p0, Landroid/view/SurfaceSession;->mNativeClient:I

    invoke-static {v0}, Landroid/view/SurfaceSession;->nativeDestroy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 48
    return-void

    .line 46
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public kill()V
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Landroid/view/SurfaceSession;->mNativeClient:I

    invoke-static {v0}, Landroid/view/SurfaceSession;->nativeKill(I)V

    .line 57
    return-void
.end method
