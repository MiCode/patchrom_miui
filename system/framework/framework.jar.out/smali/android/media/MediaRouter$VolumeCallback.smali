.class public abstract Landroid/media/MediaRouter$VolumeCallback;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VolumeCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V
.end method

.method public abstract onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V
.end method
