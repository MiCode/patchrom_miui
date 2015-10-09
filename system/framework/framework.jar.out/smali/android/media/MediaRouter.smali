.class public Landroid/media/MediaRouter;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter$WifiDisplayStatusChangedReceiver;,
        Landroid/media/MediaRouter$VolumeChangeReceiver;,
        Landroid/media/MediaRouter$VolumeCallback;,
        Landroid/media/MediaRouter$VolumeCallbackInfo;,
        Landroid/media/MediaRouter$SimpleCallback;,
        Landroid/media/MediaRouter$Callback;,
        Landroid/media/MediaRouter$CallbackInfo;,
        Landroid/media/MediaRouter$RouteCategory;,
        Landroid/media/MediaRouter$RouteGroup;,
        Landroid/media/MediaRouter$UserRouteInfo;,
        Landroid/media/MediaRouter$RouteInfo;,
        Landroid/media/MediaRouter$Static;
    }
.end annotation


# static fields
.field public static final AVAILABILITY_FLAG_IGNORE_DEFAULT_ROUTE:I = 0x1

.field public static final CALLBACK_FLAG_PASSIVE_DISCOVERY:I = 0x8

.field public static final CALLBACK_FLAG_PERFORM_ACTIVE_SCAN:I = 0x1

.field public static final CALLBACK_FLAG_REQUEST_DISCOVERY:I = 0x4

.field public static final CALLBACK_FLAG_UNFILTERED_EVENTS:I = 0x2

.field private static final DEBUG:Z

.field static final ROUTE_TYPE_ANY:I = 0x800007

.field public static final ROUTE_TYPE_LIVE_AUDIO:I = 0x1

.field public static final ROUTE_TYPE_LIVE_VIDEO:I = 0x2

.field public static final ROUTE_TYPE_REMOTE_DISPLAY:I = 0x4

.field public static final ROUTE_TYPE_USER:I = 0x800000

.field private static final TAG:Ljava/lang/String; = "MediaRouter"

.field static final sRouters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/media/MediaRouter;",
            ">;"
        }
    .end annotation
.end field

.field static sStatic:Landroid/media/MediaRouter$Static;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "MediaRouter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaRouter;->DEBUG:Z

    .line 691
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaRouter;->sRouters:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    const-class v2, Landroid/media/MediaRouter$Static;

    monitor-enter v2

    .line 713
    :try_start_0
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    if-nez v1, :cond_0

    .line 714
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 715
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Landroid/media/MediaRouter$Static;

    invoke-direct {v1, v0}, Landroid/media/MediaRouter$Static;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    .line 716
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v1, v0}, Landroid/media/MediaRouter$Static;->startMonitoringRoutes(Landroid/content/Context;)V

    .line 718
    .end local v0    # "appContext":Landroid/content/Context;
    :cond_0
    monitor-exit v2

    .line 719
    return-void

    .line 718
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Landroid/media/MediaRouter;->DEBUG:Z

    return v0
.end method

.method static addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 996
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    .line 997
    .local v0, "cat":Landroid/media/MediaRouter$RouteCategory;
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 998
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteCategory;->isGroupable()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, p0, Landroid/media/MediaRouter$RouteGroup;

    if-nez v2, :cond_1

    .line 1002
    new-instance v1, Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/MediaRouter$RouteGroup;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 1003
    .local v1, "group":Landroid/media/MediaRouter$RouteGroup;
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    iput v2, v1, Landroid/media/MediaRouter$RouteGroup;->mSupportedTypes:I

    .line 1004
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    invoke-static {v1}, Landroid/media/MediaRouter;->dispatchRouteAdded(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1006
    invoke-virtual {v1, p0}, Landroid/media/MediaRouter$RouteGroup;->addRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1008
    move-object p0, v1

    .line 1013
    .end local v1    # "group":Landroid/media/MediaRouter$RouteGroup;
    :goto_0
    return-void

    .line 1010
    :cond_1
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteAdded(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method static dispatchRouteAdded(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1227
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 1228
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p0}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1229
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 1232
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1195
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    invoke-static {p0, v0}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 1196
    return-void
.end method

.method static dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 7
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p1, "oldSupportedTypes"    # I

    .prologue
    .line 1199
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 1200
    .local v2, "newSupportedTypes":I
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 1206
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(I)Z

    move-result v4

    .line 1207
    .local v4, "oldVisibility":Z
    invoke-virtual {v0, v2}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(I)Z

    move-result v3

    .line 1208
    .local v3, "newVisibility":Z
    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    .line 1209
    iget-object v5, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v6, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v5, v6, p0}, Landroid/media/MediaRouter$Callback;->onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    .line 1210
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1211
    iget-object v5, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v6, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v5, v6, v2, p0}, Landroid/media/MediaRouter$Callback;->onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V

    .line 1214
    :cond_1
    if-nez v4, :cond_2

    if-eqz v3, :cond_3

    .line 1215
    :cond_2
    iget-object v5, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v6, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v5, v6, p0}, Landroid/media/MediaRouter$Callback;->onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    .line 1217
    :cond_3
    if-eqz v4, :cond_0

    if-nez v3, :cond_0

    .line 1218
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1219
    iget-object v5, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v6, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v5, v6, p1, p0}, Landroid/media/MediaRouter$Callback;->onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V

    .line 1221
    :cond_4
    iget-object v5, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v6, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v5, v6, p0}, Landroid/media/MediaRouter$Callback;->onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 1224
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    .end local v3    # "newVisibility":Z
    .end local v4    # "oldVisibility":Z
    :cond_5
    return-void
.end method

.method static dispatchRouteGrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 4
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p1, "group"    # Landroid/media/MediaRouter$RouteGroup;
    .param p2, "index"    # I

    .prologue
    .line 1243
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 1244
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1245
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0, p1, p2}, Landroid/media/MediaRouter$Callback;->onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V

    goto :goto_0

    .line 1248
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRoutePresentationDisplayChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1267
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 1268
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p0}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1269
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 1272
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteRemoved(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1235
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 1236
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p0}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1237
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 1240
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteSelected(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p0, "type"    # I
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1179
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 1180
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1181
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0, p1}, Landroid/media/MediaRouter$Callback;->onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 1184
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteUngrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 4
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p1, "group"    # Landroid/media/MediaRouter$RouteGroup;

    .prologue
    .line 1251
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 1252
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1253
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0, p1}, Landroid/media/MediaRouter$Callback;->onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V

    goto :goto_0

    .line 1256
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteUnselected(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p0, "type"    # I
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1187
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 1188
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1189
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0, p1}, Landroid/media/MediaRouter$Callback;->onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 1192
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method static dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1259
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$CallbackInfo;

    .line 1260
    .local v0, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    invoke-virtual {v0, p0}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1261
    iget-object v2, v0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iget-object v3, v0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    invoke-virtual {v2, v3, p0}, Landroid/media/MediaRouter$Callback;->onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 1264
    .end local v0    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    return-void
.end method

.method private findCallbackInfo(Landroid/media/MediaRouter$Callback;)I
    .locals 4
    .param p1, "cb"    # Landroid/media/MediaRouter$Callback;

    .prologue
    .line 861
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 862
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 863
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$CallbackInfo;

    .line 864
    .local v2, "info":Landroid/media/MediaRouter$CallbackInfo;
    iget-object v3, v2, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    if-ne v3, p1, :cond_0

    .line 868
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/media/MediaRouter$CallbackInfo;
    :goto_1
    return v1

    .line 862
    .restart local v1    # "i":I
    .restart local v2    # "info":Landroid/media/MediaRouter$CallbackInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 868
    .end local v2    # "info":Landroid/media/MediaRouter$CallbackInfo;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static findWifiDisplay([Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .locals 3
    .param p0, "displays"    # [Landroid/hardware/display/WifiDisplay;
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1435
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1436
    aget-object v0, p0, v1

    .line 1437
    .local v0, "d":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1441
    .end local v0    # "d":Landroid/hardware/display/WifiDisplay;
    :goto_1
    return-object v0

    .line 1435
    .restart local v0    # "d":Landroid/hardware/display/WifiDisplay;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1441
    .end local v0    # "d":Landroid/hardware/display/WifiDisplay;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static findWifiDisplayRoute(Landroid/hardware/display/WifiDisplay;)Landroid/media/MediaRouter$RouteInfo;
    .locals 5
    .param p0, "d"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 1445
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1446
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1447
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 1448
    .local v2, "info":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1452
    .end local v2    # "info":Landroid/media/MediaRouter$RouteInfo;
    :goto_1
    return-object v2

    .line 1446
    .restart local v2    # "info":Landroid/media/MediaRouter$RouteInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1452
    .end local v2    # "info":Landroid/media/MediaRouter$RouteInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static getRouteAtStatic(I)Landroid/media/MediaRouter$RouteInfo;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 1118
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method static getRouteCountStatic()I
    .locals 1

    .prologue
    .line 1114
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method static getWifiDisplayStatusCode(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)I
    .locals 4
    .param p0, "d"    # Landroid/hardware/display/WifiDisplay;
    .param p1, "wfdStatus"    # Landroid/hardware/display/WifiDisplayStatus;

    .prologue
    .line 1360
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1361
    const/4 v1, 0x1

    .line 1369
    .local v1, "newStatus":I
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1370
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    .line 1371
    .local v0, "activeState":I
    packed-switch v0, :pswitch_data_0

    .line 1384
    .end local v0    # "activeState":I
    :cond_0
    :goto_1
    return v1

    .line 1362
    .end local v1    # "newStatus":I
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1363
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x3

    .restart local v1    # "newStatus":I
    :goto_2
    goto :goto_0

    .end local v1    # "newStatus":I
    :cond_2
    const/4 v1, 0x5

    goto :goto_2

    .line 1366
    :cond_3
    const/4 v1, 0x4

    .restart local v1    # "newStatus":I
    goto :goto_0

    .line 1373
    .restart local v0    # "activeState":I
    :pswitch_0
    const/4 v1, 0x6

    .line 1374
    goto :goto_1

    .line 1376
    :pswitch_1
    const/4 v1, 0x2

    .line 1377
    goto :goto_1

    .line 1379
    :pswitch_2
    const-string v2, "MediaRouter"

    const-string v3, "Active display is not connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static isWifiDisplayEnabled(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)Z
    .locals 1
    .param p0, "d"    # Landroid/hardware/display/WifiDisplay;
    .param p1, "wfdStatus"    # Landroid/hardware/display/WifiDisplayStatus;

    .prologue
    .line 1388
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static makeWifiDisplayRoute(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)Landroid/media/MediaRouter$RouteInfo;
    .locals 3
    .param p0, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p1, "wfdStatus"    # Landroid/hardware/display/WifiDisplayStatus;

    .prologue
    .line 1392
    new-instance v0, Landroid/media/MediaRouter$RouteInfo;

    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-direct {v0, v1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 1393
    .local v0, "newRoute":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    .line 1394
    const/4 v1, 0x7

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 1396
    const/4 v1, 0x0

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 1397
    const/4 v1, 0x1

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 1399
    invoke-static {p0, p1}, Landroid/media/MediaRouter;->getWifiDisplayStatusCode(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->setRealStatusCode(I)Z

    .line 1400
    invoke-static {p0, p1}, Landroid/media/MediaRouter;->isWifiDisplayEnabled(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 1401
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 1402
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/internal/R$string;->wireless_display_route_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 1404
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    .line 1405
    return-object v0
.end method

.method static matchesDeviceAddress(Landroid/hardware/display/WifiDisplay;Landroid/media/MediaRouter$RouteInfo;)Z
    .locals 4
    .param p0, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 965
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v0, v1

    .line 966
    .local v0, "routeHasAddress":Z
    :goto_0
    if-nez p0, :cond_1

    if-nez v0, :cond_1

    .line 973
    :goto_1
    return v1

    .end local v0    # "routeHasAddress":Z
    :cond_0
    move v0, v2

    .line 965
    goto :goto_0

    .line 970
    .restart local v0    # "routeHasAddress":Z
    :cond_1
    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    .line 971
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 973
    goto :goto_1
.end method

.method static removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 6
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1050
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1051
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v4

    .line 1052
    .local v4, "removingCat":Landroid/media/MediaRouter$RouteCategory;
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1053
    .local v1, "count":I
    const/4 v2, 0x0

    .line 1054
    .local v2, "found":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1055
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    .line 1056
    .local v0, "cat":Landroid/media/MediaRouter$RouteCategory;
    if-ne v4, v0, :cond_4

    .line 1057
    const/4 v2, 0x1

    .line 1061
    .end local v0    # "cat":Landroid/media/MediaRouter$RouteCategory;
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1063
    invoke-static {}, Landroid/media/MediaRouter;->selectDefaultRouteStatic()V

    .line 1065
    :cond_1
    if-nez v2, :cond_2

    .line 1066
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1068
    :cond_2
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteRemoved(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1070
    .end local v1    # "count":I
    .end local v2    # "found":Z
    .end local v3    # "i":I
    .end local v4    # "removingCat":Landroid/media/MediaRouter$RouteCategory;
    :cond_3
    return-void

    .line 1054
    .restart local v0    # "cat":Landroid/media/MediaRouter$RouteCategory;
    .restart local v1    # "count":I
    .restart local v2    # "found":Z
    .restart local v3    # "i":I
    .restart local v4    # "removingCat":Landroid/media/MediaRouter$RouteCategory;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static selectDefaultRouteStatic()V
    .locals 4

    .prologue
    const v3, 0x800007

    const/4 v2, 0x0

    .line 952
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eq v0, v1, :cond_0

    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 954
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v3, v0, v2}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 958
    :goto_0
    return-void

    .line 956
    :cond_0
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v3, v0, v2}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    goto :goto_0
.end method

.method static selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V
    .locals 9
    .param p0, "types"    # I
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "explicit"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 895
    sget-object v7, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v4, v7, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 896
    .local v4, "oldRoute":Landroid/media/MediaRouter$RouteInfo;
    if-ne v4, p1, :cond_0

    .line 948
    :goto_0
    return-void

    .line 897
    :cond_0
    invoke-virtual {p1, p0}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 898
    const-string v6, "MediaRouter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "selectRoute ignored; cannot select route with supported types "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v8

    invoke-static {v8}, Landroid/media/MediaRouter;->typesToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " into route types "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Landroid/media/MediaRouter;->typesToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 904
    :cond_1
    sget-object v7, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v7, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 905
    .local v1, "btRoute":Landroid/media/MediaRouter$RouteInfo;
    if-eqz v1, :cond_3

    and-int/lit8 v7, p0, 0x1

    if-eqz v7, :cond_3

    if-eq p1, v1, :cond_2

    sget-object v7, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v7, v7, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    if-ne p1, v7, :cond_3

    .line 908
    :cond_2
    :try_start_0
    sget-object v7, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v8, v7, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    if-ne p1, v1, :cond_9

    move v7, v3

    :goto_1
    invoke-interface {v8, v7}, Landroid/media/IAudioService;->setBluetoothA2dpOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    :cond_3
    :goto_2
    sget-object v7, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v7, v7, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 916
    .local v0, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    if-eqz v4, :cond_a

    iget-object v7, v4, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    if-eqz v7, :cond_a

    move v5, v3

    .line 917
    .local v5, "oldRouteHasAddress":Z
    :goto_3
    if-eqz p1, :cond_b

    iget-object v7, p1, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    if-eqz v7, :cond_b

    .line 918
    .local v3, "newRouteHasAddress":Z
    :goto_4
    if-nez v0, :cond_4

    if-nez v5, :cond_4

    if-eqz v3, :cond_5

    .line 919
    :cond_4
    if-eqz v3, :cond_d

    invoke-static {v0, p1}, Landroid/media/MediaRouter;->matchesDeviceAddress(Landroid/hardware/display/WifiDisplay;Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 920
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-boolean v6, v6, Landroid/media/MediaRouter$Static;->mCanConfigureWifiDisplays:Z

    if-eqz v6, :cond_c

    .line 921
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    iget-object v7, p1, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    .line 931
    :cond_5
    :goto_5
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v6, p1, p2}, Landroid/media/MediaRouter$Static;->setSelectedRoute(Landroid/media/MediaRouter$RouteInfo;Z)V

    .line 933
    if-eqz v4, :cond_6

    .line 934
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v6

    and-int/2addr v6, p0

    invoke-static {v6, v4}, Landroid/media/MediaRouter;->dispatchRouteUnselected(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 935
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->resolveStatusCode()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 936
    invoke-static {v4}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 939
    :cond_6
    if-eqz p1, :cond_8

    .line 940
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->resolveStatusCode()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 941
    invoke-static {p1}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 943
    :cond_7
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v6

    and-int/2addr v6, p0

    invoke-static {v6, p1}, Landroid/media/MediaRouter;->dispatchRouteSelected(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 947
    :cond_8
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v6}, Landroid/media/MediaRouter$Static;->updateDiscoveryRequest()V

    goto/16 :goto_0

    .end local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v3    # "newRouteHasAddress":Z
    .end local v5    # "oldRouteHasAddress":Z
    :cond_9
    move v7, v6

    .line 908
    goto :goto_1

    .line 909
    :catch_0
    move-exception v2

    .line 910
    .local v2, "e":Landroid/os/RemoteException;
    const-string v7, "MediaRouter"

    const-string v8, "Error changing Bluetooth A2DP state"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    :cond_a
    move v5, v6

    .line 916
    goto :goto_3

    .restart local v5    # "oldRouteHasAddress":Z
    :cond_b
    move v3, v6

    .line 917
    goto :goto_4

    .line 923
    .restart local v3    # "newRouteHasAddress":Z
    :cond_c
    const-string v6, "MediaRouter"

    const-string v7, "Cannot connect to wifi displays because this process is not allowed to do so."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 926
    :cond_d
    if-eqz v0, :cond_5

    if-nez v3, :cond_5

    .line 927
    sget-object v6, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v6, v6, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->disconnectWifiDisplay()V

    goto :goto_5
.end method

.method private static shouldShowWifiDisplay(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;)Z
    .locals 1
    .param p0, "d"    # Landroid/hardware/display/WifiDisplay;
    .param p1, "activeDisplay"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 1355
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static systemVolumeChanged(I)V
    .locals 4
    .param p0, "newValue"    # I

    .prologue
    .line 1275
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v2, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 1276
    .local v1, "selectedRoute":Landroid/media/MediaRouter$RouteInfo;
    if-nez v1, :cond_0

    .line 1291
    :goto_0
    return-void

    .line 1278
    :cond_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eq v1, v2, :cond_1

    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    if-ne v1, v2, :cond_2

    .line 1280
    :cond_1
    invoke-static {v1}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 1281
    :cond_2
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v2, :cond_4

    .line 1283
    :try_start_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v2}, Landroid/media/IAudioService;->isBluetoothA2dpOn()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    :goto_1
    invoke-static {v2}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1285
    :catch_0
    move-exception v0

    .line 1286
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaRouter"

    const-string v3, "Error checking Bluetooth A2DP state to report volume change"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1283
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1289
    :cond_4
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v2}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method static typesToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "types"    # I

    .prologue
    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    .local v0, "result":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 696
    const-string v1, "ROUTE_TYPE_LIVE_AUDIO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 699
    const-string v1, "ROUTE_TYPE_LIVE_VIDEO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 702
    const-string v1, "ROUTE_TYPE_REMOTE_DISPLAY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    :cond_2
    const/high16 v1, 0x800000

    and-int/2addr v1, p0

    if-eqz v1, :cond_3

    .line 705
    const-string v1, "ROUTE_TYPE_USER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static updateRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p0, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1175
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1176
    return-void
.end method

.method private static updateWifiDisplayRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;Z)V
    .locals 4
    .param p0, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "wfdStatus"    # Landroid/hardware/display/WifiDisplayStatus;
    .param p3, "disconnected"    # Z

    .prologue
    .line 1411
    const/4 v0, 0x0

    .line 1412
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 1413
    .local v2, "newName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1414
    iput-object v2, p0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 1415
    const/4 v0, 0x1

    .line 1418
    :cond_0
    invoke-static {p1, p2}, Landroid/media/MediaRouter;->isWifiDisplayEnabled(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)Z

    move-result v1

    .line 1419
    .local v1, "enabled":Z
    iget-boolean v3, p0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    if-eq v3, v1, :cond_4

    const/4 v3, 0x1

    :goto_0
    or-int/2addr v0, v3

    .line 1420
    iput-boolean v1, p0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 1422
    invoke-static {p1, p2}, Landroid/media/MediaRouter;->getWifiDisplayStatusCode(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/MediaRouter$RouteInfo;->setRealStatusCode(I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1424
    if-eqz v0, :cond_1

    .line 1425
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1428
    :cond_1
    if-eqz v1, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1430
    invoke-static {}, Landroid/media/MediaRouter;->selectDefaultRouteStatic()V

    .line 1432
    :cond_3
    return-void

    .line 1419
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static updateWifiDisplayStatus(Landroid/hardware/display/WifiDisplayStatus;)V
    .locals 13
    .param p0, "status"    # Landroid/hardware/display/WifiDisplayStatus;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1296
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    .line 1297
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v5

    .line 1298
    .local v5, "displays":[Landroid/hardware/display/WifiDisplay;
    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 1304
    .local v0, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    sget-object v11, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-boolean v11, v11, Landroid/media/MediaRouter$Static;->mCanConfigureWifiDisplays:Z

    if-nez v11, :cond_0

    .line 1305
    if-eqz v0, :cond_2

    .line 1306
    new-array v5, v9, [Landroid/hardware/display/WifiDisplay;

    .end local v5    # "displays":[Landroid/hardware/display/WifiDisplay;
    aput-object v0, v5, v10

    .line 1315
    .restart local v5    # "displays":[Landroid/hardware/display/WifiDisplay;
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    .line 1319
    .local v1, "activeDisplayAddress":Ljava/lang/String;
    :goto_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v11, v5

    if-ge v6, v11, :cond_7

    .line 1320
    aget-object v3, v5, v6

    .line 1321
    .local v3, "d":Landroid/hardware/display/WifiDisplay;
    invoke-static {v3, v0}, Landroid/media/MediaRouter;->shouldShowWifiDisplay(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1322
    invoke-static {v3}, Landroid/media/MediaRouter;->findWifiDisplayRoute(Landroid/hardware/display/WifiDisplay;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v8

    .line 1323
    .local v8, "route":Landroid/media/MediaRouter$RouteInfo;
    if-nez v8, :cond_5

    .line 1324
    invoke-static {v3, p0}, Landroid/media/MediaRouter;->makeWifiDisplayRoute(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v8

    .line 1325
    invoke-static {v8}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1332
    :goto_3
    invoke-virtual {v3, v0}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1333
    invoke-virtual {v8}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v11

    invoke-static {v11, v8, v10}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 1319
    .end local v8    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1308
    .end local v1    # "activeDisplayAddress":Ljava/lang/String;
    .end local v3    # "d":Landroid/hardware/display/WifiDisplay;
    .end local v6    # "i":I
    :cond_2
    sget-object v5, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    goto :goto_0

    .line 1312
    .end local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v5    # "displays":[Landroid/hardware/display/WifiDisplay;
    :cond_3
    sget-object v5, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    .line 1313
    .restart local v5    # "displays":[Landroid/hardware/display/WifiDisplay;
    const/4 v0, 0x0

    .restart local v0    # "activeDisplay":Landroid/hardware/display/WifiDisplay;
    goto :goto_0

    .line 1315
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 1327
    .restart local v1    # "activeDisplayAddress":Ljava/lang/String;
    .restart local v3    # "d":Landroid/hardware/display/WifiDisplay;
    .restart local v6    # "i":I
    .restart local v8    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_5
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    .line 1328
    .local v2, "address":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    sget-object v11, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v11, v11, Landroid/media/MediaRouter$Static;->mPreviousActiveWifiDisplayAddress:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    move v4, v9

    .line 1330
    .local v4, "disconnected":Z
    :goto_4
    invoke-static {v8, v3, p0, v4}, Landroid/media/MediaRouter;->updateWifiDisplayRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplayStatus;Z)V

    goto :goto_3

    .end local v4    # "disconnected":Z
    :cond_6
    move v4, v10

    .line 1328
    goto :goto_4

    .line 1339
    .end local v2    # "address":Ljava/lang/String;
    .end local v3    # "d":Landroid/hardware/display/WifiDisplay;
    .end local v8    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_7
    sget-object v9, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v9, v9, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v6

    .end local v6    # "i":I
    .local v7, "i":I
    :goto_5
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    if-lez v7, :cond_a

    .line 1340
    sget-object v9, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v9, v9, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaRouter$RouteInfo;

    .line 1341
    .restart local v8    # "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v9, v8, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 1342
    iget-object v9, v8, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v5, v9}, Landroid/media/MediaRouter;->findWifiDisplay([Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    .line 1343
    .restart local v3    # "d":Landroid/hardware/display/WifiDisplay;
    if-eqz v3, :cond_8

    invoke-static {v3, v0}, Landroid/media/MediaRouter;->shouldShowWifiDisplay(Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1344
    :cond_8
    invoke-static {v8}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .end local v3    # "d":Landroid/hardware/display/WifiDisplay;
    :cond_9
    move v7, v6

    .line 1347
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_5

    .line 1351
    .end local v7    # "i":I
    .end local v8    # "route":Landroid/media/MediaRouter$RouteInfo;
    .restart local v6    # "i":I
    :cond_a
    sget-object v9, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iput-object v1, v9, Landroid/media/MediaRouter$Static;->mPreviousActiveWifiDisplayAddress:Ljava/lang/String;

    .line 1352
    return-void
.end method


# virtual methods
.method public addCallback(ILandroid/media/MediaRouter$Callback;)V
    .locals 1
    .param p1, "types"    # I
    .param p2, "cb"    # Landroid/media/MediaRouter$Callback;

    .prologue
    .line 812
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 813
    return-void
.end method

.method public addCallback(ILandroid/media/MediaRouter$Callback;I)V
    .locals 3
    .param p1, "types"    # I
    .param p2, "cb"    # Landroid/media/MediaRouter$Callback;
    .param p3, "flags"    # I

    .prologue
    .line 833
    invoke-direct {p0, p2}, Landroid/media/MediaRouter;->findCallbackInfo(Landroid/media/MediaRouter$Callback;)I

    move-result v0

    .line 834
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 835
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter$CallbackInfo;

    .line 836
    .local v1, "info":Landroid/media/MediaRouter$CallbackInfo;
    iget v2, v1, Landroid/media/MediaRouter$CallbackInfo;->type:I

    or-int/2addr v2, p1

    iput v2, v1, Landroid/media/MediaRouter$CallbackInfo;->type:I

    .line 837
    iget v2, v1, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    or-int/2addr v2, p3

    iput v2, v1, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    .line 842
    :goto_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v2}, Landroid/media/MediaRouter$Static;->updateDiscoveryRequest()V

    .line 843
    return-void

    .line 839
    .end local v1    # "info":Landroid/media/MediaRouter$CallbackInfo;
    :cond_0
    new-instance v1, Landroid/media/MediaRouter$CallbackInfo;

    invoke-direct {v1, p2, p1, p3, p0}, Landroid/media/MediaRouter$CallbackInfo;-><init>(Landroid/media/MediaRouter$Callback;IILandroid/media/MediaRouter;)V

    .line 840
    .restart local v1    # "info":Landroid/media/MediaRouter$CallbackInfo;
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addRouteInt(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 992
    invoke-static {p1}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 993
    return-void
.end method

.method public addUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaRouter$UserRouteInfo;

    .prologue
    .line 985
    invoke-static {p1}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 986
    return-void
.end method

.method public clearUserRoutes()V
    .locals 3

    .prologue
    .line 1031
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1032
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter$RouteInfo;

    .line 1035
    .local v1, "info":Landroid/media/MediaRouter$RouteInfo;
    instance-of v2, v1, Landroid/media/MediaRouter$UserRouteInfo;

    if-nez v2, :cond_0

    instance-of v2, v1, Landroid/media/MediaRouter$RouteGroup;

    if-eqz v2, :cond_1

    .line 1036
    :cond_0
    invoke-static {v1}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1037
    add-int/lit8 v0, v0, -0x1

    .line 1031
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1040
    .end local v1    # "info":Landroid/media/MediaRouter$RouteInfo;
    :cond_2
    return-void
.end method

.method public createRouteCategory(IZ)Landroid/media/MediaRouter$RouteCategory;
    .locals 2
    .param p1, "nameResId"    # I
    .param p2, "isGroupable"    # Z

    .prologue
    .line 1154
    new-instance v0, Landroid/media/MediaRouter$RouteCategory;

    const/high16 v1, 0x800000

    invoke-direct {v0, p1, v1, p2}, Landroid/media/MediaRouter$RouteCategory;-><init>(IIZ)V

    return-object v0
.end method

.method public createRouteCategory(Ljava/lang/CharSequence;Z)Landroid/media/MediaRouter$RouteCategory;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "isGroupable"    # Z

    .prologue
    .line 1143
    new-instance v0, Landroid/media/MediaRouter$RouteCategory;

    const/high16 v1, 0x800000

    invoke-direct {v0, p1, v1, p2}, Landroid/media/MediaRouter$RouteCategory;-><init>(Ljava/lang/CharSequence;IZ)V

    return-object v0
.end method

.method public createUserRoute(Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;
    .locals 1
    .param p1, "category"    # Landroid/media/MediaRouter$RouteCategory;

    .prologue
    .line 1132
    new-instance v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-direct {v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    return-object v0
.end method

.method public getCategoryAt(I)Landroid/media/MediaRouter$RouteCategory;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1090
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteCategory;

    return-object v0
.end method

.method public getCategoryCount()I
    .locals 1

    .prologue
    .line 1079
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    .prologue
    .line 730
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1110
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public getRouteCount()I
    .locals 1

    .prologue
    .line 1100
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    .prologue
    .line 742
    const v0, 0x800007

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 752
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    iget v0, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 756
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 764
    :goto_0
    return-object v0

    .line 757
    :cond_0
    const/high16 v0, 0x800000

    if-ne p1, v0, :cond_1

    .line 760
    const/4 v0, 0x0

    goto :goto_0

    .line 764
    :cond_1
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    goto :goto_0
.end method

.method public getSystemCategory()Landroid/media/MediaRouter$RouteCategory;
    .locals 1

    .prologue
    .line 737
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    return-object v0
.end method

.method public isRouteAvailable(II)Z
    .locals 4
    .param p1, "types"    # I
    .param p2, "flags"    # I

    .prologue
    .line 784
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 785
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 786
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 787
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 788
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_0

    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    if-eq v2, v3, :cond_1

    .line 790
    :cond_0
    const/4 v3, 0x1

    .line 796
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :goto_1
    return v3

    .line 785
    .restart local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 796
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public rebindAsUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1171
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$Static;->rebindAsUser(I)V

    .line 1172
    return-void
.end method

.method public removeCallback(Landroid/media/MediaRouter$Callback;)V
    .locals 4
    .param p1, "cb"    # Landroid/media/MediaRouter$Callback;

    .prologue
    .line 851
    invoke-direct {p0, p1}, Landroid/media/MediaRouter;->findCallbackInfo(Landroid/media/MediaRouter$Callback;)I

    move-result v0

    .line 852
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 853
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 854
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v1}, Landroid/media/MediaRouter$Static;->updateDiscoveryRequest()V

    .line 858
    :goto_0
    return-void

    .line 856
    :cond_0
    const-string v1, "MediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeCallback("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): callback not registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeRouteInt(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 1046
    invoke-static {p1}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1047
    return-void
.end method

.method public removeUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaRouter$UserRouteInfo;

    .prologue
    .line 1022
    invoke-static {p1}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1023
    return-void
.end method

.method public selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "types"    # I
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 884
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 885
    return-void
.end method

.method public selectRouteInt(ILandroid/media/MediaRouter$RouteInfo;Z)V
    .locals 0
    .param p1, "types"    # I
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p3, "explicit"    # Z

    .prologue
    .line 891
    invoke-static {p1, p2, p3}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 892
    return-void
.end method
