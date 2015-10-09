.class Landroid/media/MediaRouter$RouteInfo$1;
.super Landroid/media/IRemoteVolumeObserver$Stub;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter$RouteInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaRouter$RouteInfo;


# direct methods
.method constructor <init>(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .prologue
    .line 1941
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo$1;->this$0:Landroid/media/MediaRouter$RouteInfo;

    invoke-direct {p0}, Landroid/media/IRemoteVolumeObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchRemoteVolumeUpdate(II)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "value"    # I

    .prologue
    .line 1944
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter$RouteInfo$1$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/MediaRouter$RouteInfo$1$1;-><init>(Landroid/media/MediaRouter$RouteInfo$1;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1956
    return-void
.end method
