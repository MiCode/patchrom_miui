.class Landroid/filterpacks/videosrc/CameraSource$1;
.super Ljava/lang/Object;
.source "CameraSource.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterpacks/videosrc/CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/filterpacks/videosrc/CameraSource;


# direct methods
.method constructor <init>(Landroid/filterpacks/videosrc/CameraSource;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 350
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    # getter for: Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z
    invoke-static {v0}, Landroid/filterpacks/videosrc/CameraSource;->access$000(Landroid/filterpacks/videosrc/CameraSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CameraSource"

    const-string v1, "New frame from camera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    monitor-enter v1

    .line 352
    :try_start_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    const/4 v2, 0x1

    # setter for: Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z
    invoke-static {v0, v2}, Landroid/filterpacks/videosrc/CameraSource;->access$102(Landroid/filterpacks/videosrc/CameraSource;Z)Z

    .line 353
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 354
    monitor-exit v1

    .line 355
    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
