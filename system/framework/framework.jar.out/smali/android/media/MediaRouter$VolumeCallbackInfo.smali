.class Landroid/media/MediaRouter$VolumeCallbackInfo;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VolumeCallbackInfo"
.end annotation


# instance fields
.field public final route:Landroid/media/MediaRouter$RouteInfo;

.field public final vcb:Landroid/media/MediaRouter$VolumeCallback;


# direct methods
.method public constructor <init>(Landroid/media/MediaRouter$VolumeCallback;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "vcb"    # Landroid/media/MediaRouter$VolumeCallback;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 2762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2763
    iput-object p1, p0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    .line 2764
    iput-object p2, p0, Landroid/media/MediaRouter$VolumeCallbackInfo;->route:Landroid/media/MediaRouter$RouteInfo;

    .line 2765
    return-void
.end method
