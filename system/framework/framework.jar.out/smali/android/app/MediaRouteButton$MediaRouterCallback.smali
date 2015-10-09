.class final Landroid/app/MediaRouteButton$MediaRouterCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "MediaRouteButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/MediaRouteButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/MediaRouteButton;


# direct methods
.method private constructor <init>(Landroid/app/MediaRouteButton;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/MediaRouteButton;Landroid/app/MediaRouteButton$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/MediaRouteButton;
    .param p2, "x1"    # Landroid/app/MediaRouteButton$1;

    .prologue
    .line 410
    invoke-direct {p0, p1}, Landroid/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroid/app/MediaRouteButton;)V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 413
    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    # invokes: Landroid/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/app/MediaRouteButton;->access$100(Landroid/app/MediaRouteButton;)V

    .line 414
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 423
    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    # invokes: Landroid/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/app/MediaRouteButton;->access$100(Landroid/app/MediaRouteButton;)V

    .line 424
    return-void
.end method

.method public onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p3, "group"    # Landroid/media/MediaRouter$RouteGroup;
    .param p4, "index"    # I

    .prologue
    .line 439
    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    # invokes: Landroid/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/app/MediaRouteButton;->access$100(Landroid/app/MediaRouteButton;)V

    .line 440
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 418
    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    # invokes: Landroid/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/app/MediaRouteButton;->access$100(Landroid/app/MediaRouteButton;)V

    .line 419
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 428
    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    # invokes: Landroid/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/app/MediaRouteButton;->access$100(Landroid/app/MediaRouteButton;)V

    .line 429
    return-void
.end method

.method public onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p3, "group"    # Landroid/media/MediaRouter$RouteGroup;

    .prologue
    .line 444
    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    # invokes: Landroid/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/app/MediaRouteButton;->access$100(Landroid/app/MediaRouteButton;)V

    .line 445
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 433
    iget-object v0, p0, Landroid/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/app/MediaRouteButton;

    # invokes: Landroid/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/app/MediaRouteButton;->access$100(Landroid/app/MediaRouteButton;)V

    .line 434
    return-void
.end method
